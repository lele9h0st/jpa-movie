package com.axonactive.Service.dao;

import com.axonactive.entity.Movie;

import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;
import java.util.List;
@Stateless
public class MovieDao {
    @PersistenceContext(name = "movie")
    EntityManager em;

    public List<Movie> findAll() {
        Query getAllMovie = em.createQuery("SELECT m from Movie m", Movie.class);
        return getAllMovie.getResultList();
    }
}
