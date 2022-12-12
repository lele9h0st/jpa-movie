package com.axonactive.Service;

import com.axonactive.Service.dao.MovieDao;
import com.axonactive.entity.Movie;

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

    public List<Movie> getAll() {
        return movieDao.findAll();
    }

}
