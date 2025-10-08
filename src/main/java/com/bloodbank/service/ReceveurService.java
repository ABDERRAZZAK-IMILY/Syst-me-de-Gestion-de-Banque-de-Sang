package com.bloodbank.service;

import  com.bloodbank.entity.Receveur;
import com.bloodbank.dao.ReceveurDAO;

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



}
