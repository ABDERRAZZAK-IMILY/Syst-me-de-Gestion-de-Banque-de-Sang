package com.bloodbank.dao;

import com.bloodbank.entity.Donneur;
import javax.persistence.EntityManager;
import java.util.List;

public class DonneurDAO {
    private EntityManager em;

    public DonneurDAO(EntityManager em) {
        this.em = em;
    }

    public void save(Donneur d) {
        em.getTransaction().begin();
        em.persist(d);
        em.getTransaction().commit();
    }


    public Donneur findById(Long id){
        return em.find(Donneur.class , id);
    }

    public List<Donneur> findAll() {
        return em.createQuery("SELECT d FROM Donneur d", Donneur.class).getResultList();
    }
}
