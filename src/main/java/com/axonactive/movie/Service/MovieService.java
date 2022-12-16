package com.axonactive.movie.Service;

import com.axonactive.movie.Service.Dto.MovieDTO;
import com.axonactive.movie.Service.Mapper.MovieMapper;
import com.axonactive.movie.Service.dao.MovieDao;
import com.axonactive.movie.entity.Movie;
import com.axonactive.movie.rest.request.MovieRequest;

import javax.ejb.Stateless;
import javax.inject.Inject;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.swing.text.html.parser.Entity;
import java.util.List;

@Stateless
public class MovieService {
    @Inject
    private MovieDao movieDao;
    @Inject
    private MovieMapper movieMapper;

    public List<Movie> getAll() {
        return movieDao.findAll();
    }

    public MovieDTO createMovie(MovieRequest movieRequest) {
        return movieMapper.toDto(movieDao.saveMovie(movieRequest));
    }

    public Movie getById(Integer id) {
        return movieDao.findById(id);
    }

    public void deleteById(Integer id) {
        movieDao.deleteById(id);
    }
    public MovieDTO updateMovie(MovieRequest movieRequest,Integer id){
        return movieMapper.toDto(movieDao.updateMovie(movieRequest,id));
    }
}
