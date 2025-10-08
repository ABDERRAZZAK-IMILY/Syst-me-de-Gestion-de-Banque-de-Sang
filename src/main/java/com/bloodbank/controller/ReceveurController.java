package com.bloodbank.controller;


import  com.bloodbank.entity.Receveur;
import  com.bloodbank.dao.ReceveurDAO;
import com.bloodbank.entity.enums.UrgenceMedicale;
import com.bloodbank.service.ReceveurService;
import com.bloodbank.util.JPAUtil;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.time.LocalDate;


public class ReceveurController extends HttpServlet {

    private  ReceveurService service;

    @Override

    public void  init(){
        service = new ReceveurService(new ReceveurDAO(JPAUtil.getEntityManager()));
    }

    @Override
    protected void  doPost(HttpServletRequest req , HttpServletResponse resp) throws ServletException , IOException {

        Receveur r = new Receveur();

        r.setNom(req.getParameter("nom"));
        r.setPrenom(req.getParameter("prenom"));
        r.setCin(req.getParameter("cin"));
        r.setDateNaissance(LocalDate.parse(req.getParameter("dateNaissance")));
        r.setSexe(req.getParameter("sexe"));
        r.setTelephone(req.getParameter("telephone"));
        r.setGroupeSanguin(req.getParameter("groupeSanguin"));
        r.setUrgence(UrgenceMedicale.valueOf(req.getParameter("urgence")));

        service.enregistrer(r);

        req.setAttribute("successMessage" , "Receveur enregistre avec succes");
        req.getRequestDispatcher("creation.jsp").forward(req , resp);


    }

}
