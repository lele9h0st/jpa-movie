package com.axonactive.movie.Service;

import com.axonactive.movie.Service.Dto.ActorDTO;
import com.axonactive.movie.Service.Dto.MovieDTO;
import com.axonactive.movie.Service.Mapper.ActorMapper;
import com.axonactive.movie.Service.dao.ActorDao;
import com.axonactive.movie.entity.Actor;
import com.axonactive.movie.rest.request.ActorRequest;
import com.axonactive.movie.rest.request.MovieRequest;

import javax.ejb.Stateless;
import javax.inject.Inject;
import java.util.List;

@Stateless
public class ActorService {
    @Inject
    ActorDao actorDao;
    @Inject
    ActorMapper actorMapper;
    public List<Actor> getAll(){
        return actorDao.findAll();
    }
    public Actor getById(Integer id){
        return actorDao.findById(id);
    }
    public ActorDTO updateActor(ActorRequest actorRequest,Integer id){
        return actorMapper.toDto(actorDao.updateActor(actorRequest,id));
    }
    public ActorDTO createActor(ActorRequest actorRequest) {
        return actorMapper.toDto(actorDao.saveActor(actorRequest));
    }


}
