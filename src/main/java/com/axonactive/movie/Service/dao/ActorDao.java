package com.axonactive.movie.Service.dao;

import com.axonactive.movie.entity.Actor;
import com.axonactive.movie.entity.Movie;
import com.axonactive.movie.rest.request.ActorRequest;
import com.axonactive.movie.rest.request.MovieRequest;

import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;
import java.util.List;

@Stateless
public class ActorDao {
    @PersistenceContext(name = "movie")
    EntityManager em;
    public List<Actor> findAll(){
        Query findAllActor= em.createQuery("SELECT a from Actor a",Actor.class);
        return findAllActor.getResultList();
    }
    public Actor findById(Integer id) {
        Query findActorById = em.createQuery("SELECT a from Actor a WHERE a.id=:id", Actor.class).setParameter("id", id);
        return (Actor) findActorById.getSingleResult();
    }
    public Actor updateActor(ActorRequest actorRequest,Integer id){
        Actor actor=findById(id);
        if(actor!=null) {
            actor.setFirstName(actorRequest.getFirstName());
            actor.setLastName(actorRequest.getLastName());
            actor.setDob(actorRequest.getDob());
            actor.setGender(actorRequest.getGender());
//            actor.setAwards(actorRequest.getAwards());
            actor = this.em.merge(actor);
            return actor;
        }else{
            return null;
        }
    }
    public Actor saveActor(ActorRequest actorRequest) {
        Actor actor = new Actor();
        actor.setFirstName(actorRequest.getFirstName());
        actor.setLastName(actorRequest.getLastName());
        actor.setDob(actorRequest.getDob());
        actor.setGender(actorRequest.getGender());
//        actor.setAwards(actorRequest.getAwards());
        actor = this.em.merge(actor);
        return actor;
    }
}
