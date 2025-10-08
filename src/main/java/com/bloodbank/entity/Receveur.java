package com.bloodbank.entity;


import com.bloodbank.entity.enums.EtatReceveur;
import com.bloodbank.entity.enums.UrgenceMedicale;

import javax.persistence.*;
import java.time.LocalDate;

@Entity
@Table(name = "receveurs")
public class Receveur {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long id;

    private String nom;
    private String prenom;
    private String cin;
    private LocalDate dateNaissance;
    private String sexe;
    private String telephone;
    private String groupeSanguin;
    private double poids;

    @Enumerated(EnumType.STRING)
    private EtatReceveur etat;
    private UrgenceMedicale urgence;


    public UrgenceMedicale getUrgence() {
        return urgence;
    }

    public void setUrgence(UrgenceMedicale urgence) {
        this.urgence = urgence;
    }

    public EtatReceveur getEtat() {
        return etat;
    }

    public void setEtat(EtatReceveur etat) {
        this.etat = etat;
    }

    public double getPoids() {
        return poids;
    }

    public void setPoids(double poids) {
        this.poids = poids;
    }

    public String getGroupeSanguin() {
        return groupeSanguin;
    }

    public void setGroupeSanguin(String groupeSanguin) {
        this.groupeSanguin = groupeSanguin;
    }

    public String getTelephone() {
        return telephone;
    }

    public void setTelephone(String telephone) {
        this.telephone = telephone;
    }

    public String getSexe() {
        return sexe;
    }

    public void setSexe(String sexe) {
        this.sexe = sexe;
    }

    public LocalDate getDateNaissance() {
        return dateNaissance;
    }

    public void setDateNaissance(LocalDate dateNaissance) {
        this.dateNaissance = dateNaissance;
    }

    public String getCin() {
        return cin;
    }

    public void setCin(String cin) {
        this.cin = cin;
    }

    public String getPrenom() {
        return prenom;
    }

    public void setPrenom(String prenom) {
        this.prenom = prenom;
    }

    public String getNom() {
        return nom;
    }

    public void setNom(String nom) {
        this.nom = nom;
    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }
}
