package com.axonactive.movie.Service.dao;

import com.axonactive.movie.entity.Movie;
import com.axonactive.movie.rest.request.MovieRequest;

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
        Query getAllMovie = em.createQuery("SELECT m FROM Movie m", Movie.class);
        return getAllMovie.getResultList();
    }

    public Movie findById(Integer id) {
        Query findMovieById = em.createQuery("SELECT m FROM Movie m WHERE m.id=:id", Movie.class).setParameter("id", id);
        return (Movie) findMovieById.getSingleResult();
    }

    public Movie saveMovie(MovieRequest movieRequest) {
        Movie movie = new Movie();
        movie.setTitle(movieRequest.getTitle());
        movie.setLanguage(movieRequest.getLanguage());
        movie.setLength(movieRequest.getLength());
        movie.setGenres(movieRequest.getGenres());
        movie.setMovieAwards(movieRequest.getMovieAwards());
        movie.setMovieCasts(movieRequest.getMovieCasts());
        movie.setYear(movieRequest.getYear());
        movie.setProductionCompany(movieRequest.getProductionCompany());
        movie = this.em.merge(movie);
        return movie;
    }

    public void deleteByEntity(Movie movie) {
        this.em.remove(movie);
    }

    public void deleteById(Integer id) {
        Movie movie = findById(id);
        if (movie != null) {
            deleteByEntity(movie);
        }
    }

    public Movie updateMovie(MovieRequest movieRequest, Integer movieId) {
        Movie movie = findById(movieId);
        if (movie != null) {
            movie.setTitle(movieRequest.getTitle());
            movie.setLanguage(movieRequest.getLanguage());
            movie.setLength(movieRequest.getLength());
            movie.setGenres(movieRequest.getGenres());
            movie.setMovieAwards(movieRequest.getMovieAwards());
            movie.setMovieCasts(movieRequest.getMovieCasts());
            movie.setYear(movieRequest.getYear());
            movie.setProductionCompany(movieRequest.getProductionCompany());
            movie = this.em.merge(movie);
            return movie;
        } else {
            return null;
        }
    }
}
