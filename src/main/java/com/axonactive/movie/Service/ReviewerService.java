package com.axonactive.movie.Service;

import com.axonactive.movie.Service.Dto.ReviewerDTO;
import com.axonactive.movie.Service.Mapper.ReviewerMapper;
import com.axonactive.movie.Service.dao.ReviewerDao;
import com.axonactive.movie.entity.Reviewer;

import javax.ejb.Stateless;
import javax.inject.Inject;

@Stateless
public class ReviewerService {
    @Inject
    ReviewerDao reviewerDao;
    @Inject
    ReviewerMapper reviewerMapper;


    public ReviewerDTO getReviewerByLogin(String username, String password) {
        return reviewerMapper.toDto(reviewerDao.getUserByUsernameAndPassword(username, password));
    }
}
