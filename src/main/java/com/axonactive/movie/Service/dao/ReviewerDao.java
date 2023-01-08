package com.axonactive.movie.Service.dao;

import com.axonactive.movie.entity.Reviewer;

import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;
import java.util.List;

@Stateless
public class ReviewerDao {
    @PersistenceContext(name = "movie")
    EntityManager em;

    public Reviewer getUserByUsernameAndPassword(String username,String password){
        Query getUser=em.createQuery("SELECT r from Reviewer r where r.username=:username and r.password=:password")
                .setParameter("username",username)
                .setParameter("password",password);
        return (Reviewer) getUser.getSingleResult();
    }
}
