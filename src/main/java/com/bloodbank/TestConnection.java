package com.bloodbank;

import com.bloodbank.util.JPAUtil;
import javax.persistence.EntityManager;

public class TestConnection {
    public static void main(String[] args) {
        try {
            EntityManager em = JPAUtil.getEntityManager();
            System.out.println("✅ Connexion à la base de données réussie!");
            em.close();
            JPAUtil.closeEntityManagerFactory();
        } catch (Exception e) {
            System.err.println("❌ Erreur de connexion: " + e.getMessage());
            e.printStackTrace();
        }
    }
}