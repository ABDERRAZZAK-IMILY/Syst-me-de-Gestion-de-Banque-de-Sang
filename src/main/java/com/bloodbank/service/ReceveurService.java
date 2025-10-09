package com.bloodbank.service;

import com.bloodbank.entity.BloodCompatibility;
import com.bloodbank.entity.Donneur;
import  com.bloodbank.entity.Receveur;
import com.bloodbank.dao.ReceveurDAO;
import com.bloodbank.entity.enums.StatutDonneur;

import java.util.List;


public class ReceveurService {

    private ReceveurDAO dao;

    public  ReceveurService(ReceveurDAO dao){
        this.dao = dao;
    }

    public void  enregistrer (Receveur r){

        dao.save(r);

    }


    public List<Receveur> Findall(){

        return  dao.findALL();
    }


    public void associateDonneur(Receveur r, Donneur d) {
        if (!BloodCompatibility.isCompatible(d.getGroupeSanguin(), r.getGroupeSanguin())) {
            throw new IllegalArgumentException("Incompatibilité sanguine détectée");
        }

        if (d.getStatut() != StatutDonneur.DISPONIBLE || d.getReceveur() != null) {
            throw new IllegalArgumentException("Le donneur n’est pas disponible ou est déjà associé");
        }

        r.addDonneur(d);
        d.setStatut(StatutDonneur.NON_DISPONIBLE);

        dao.update(r);
    }



}
