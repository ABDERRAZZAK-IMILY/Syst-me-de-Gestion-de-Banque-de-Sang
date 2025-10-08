package com.bloodbank.dao;

import com.bloodbank.entity.Receveur;

import javax.persistence.EntityManager;

import  java.util.List;

public class ReceveurDAO {

    private EntityManager em;

    public ReceveurDAO(EntityManager em){
        this.em = em;
    }


    public void  save(Receveur r){
        em.getTransaction().begin();
        em.persist(r);
        em.getTransaction().commit();
    }

    public List<Receveur> findALL(){
        return em.createQuery("SELECT r FROM Receveur r" , Receveur.class).getResultList();
    }

}
