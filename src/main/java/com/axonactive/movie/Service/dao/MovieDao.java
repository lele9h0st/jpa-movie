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
        Query getAllMovie = em.createNamedQuery(Movie.GET_MOVIE_LIST);
        return getAllMovie.getResultList();
    }
    public List<Movie> getListMovieByActorId(Integer actorId){
        Query getByActorId=em.createNamedQuery(Movie.GET_MOVIE_LIST_BY_ACTOR_ID).setParameter("id", actorId);
        return getByActorId.getResultList();
    }
    public List<Movie> getListMovieByGenres(String genres){
        Query getByActorId=em.createNamedQuery(Movie.GET_MOVIE_LIST_BY_GENRES).setParameter("title", genres);
        return getByActorId.getResultList();
    }
    public Movie findById(Integer id) {
        Query findMovieById = em.createNamedQuery(Movie.GET_MOVIE_BY_ID).setParameter("id", id);
        return (Movie) findMovieById.getSingleResult();
    }
    public List<Movie> getMoviesByRangeYear(Integer startYear,Integer endYear){
        Query findByRangeYear=em.createNamedQuery(Movie.GET_MOVIE_BY_RANGE_YEAR).setParameter("startYear",startYear).setParameter("endYear",endYear);
        return findByRangeYear.getResultList();
    }
    public Movie saveMovie(MovieRequest movieRequest) {
        Movie movie = new Movie();
        movie.setTitle(movieRequest.getTitle());
        movie.setLanguage(movieRequest.getLanguage());
        movie.setLength(movieRequest.getLength());
//        movie.setGenres(movieRequest.getGenres());
//        movie.setMovieAwards(movieRequest.getMovieAwards());
//        movie.setMovieCasts(movieRequest.getMovieCasts());
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
//            movie.setGenres(movieRequest.getGenres());
//            movie.setMovieAwards(movieRequest.getMovieAwards());
//            movie.setMovieCasts(movieRequest.getMovieCasts());
            movie.setYear(movieRequest.getYear());
            movie.setProductionCompany(movieRequest.getProductionCompany());
            movie = this.em.merge(movie);
            return movie;
        } else {
            return null;
        }
    }
}
