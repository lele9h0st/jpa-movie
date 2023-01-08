package com.axonactive.movie.Service.dao;

import com.axonactive.movie.entity.Rating;

import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;
import java.util.List;

@Stateless
public class RatingDao {
    @PersistenceContext(name = "movie")
    EntityManager em;

    public List<Rating> getRatingsByMovieId(Integer movieId) {
        Query ratingsByMovie = em.createQuery("SELECT r from rating r where r.movie.id=:movieId")
                .setParameter("movieId", movieId);
        return ratingsByMovie.getResultList();
    }
}
