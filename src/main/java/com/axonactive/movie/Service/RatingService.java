package com.axonactive.movie.Service;

import com.axonactive.movie.Service.Dto.RatingDTO;
import com.axonactive.movie.Service.Mapper.RatingMapper;
import com.axonactive.movie.Service.dao.RatingDao;
import com.axonactive.movie.entity.Rating;

import javax.ejb.Stateless;
import javax.inject.Inject;
import java.util.List;

@Stateless
public class RatingService {
    @Inject
    RatingDao ratingDao;
    @Inject
    RatingMapper ratingMapper;
    public List<RatingDTO> getRatingsByMovieId(Integer id) {
        return ratingMapper.toDtos(ratingDao.getRatingsByMovieId(id));
    }
}
