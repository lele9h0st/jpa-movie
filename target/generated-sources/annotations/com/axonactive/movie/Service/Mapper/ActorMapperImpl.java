package com.axonactive.movie.Service.Mapper;

import com.axonactive.movie.Service.Dto.ActorDTO;
import com.axonactive.movie.entity.Actor;
import com.axonactive.movie.entity.ActorAward;
import java.util.ArrayList;
import java.util.List;
import javax.annotation.processing.Generated;
import javax.enterprise.context.ApplicationScoped;

@Generated(
    value = "org.mapstruct.ap.MappingProcessor",
    date = "2022-12-14T18:26:48+0700",
    comments = "version: 1.5.2.Final, compiler: javac, environment: Java 11.0.17 (Eclipse Adoptium)"
)
@ApplicationScoped
public class ActorMapperImpl implements ActorMapper {

    @Override
    public ActorDTO toDto(Actor actor) {
        if ( actor == null ) {
            return null;
        }

        ActorDTO actorDTO = new ActorDTO();

        actorDTO.setFirstName( actor.getFirstName() );
        actorDTO.setLastName( actor.getLastName() );
        actorDTO.setGender( actor.getGender() );
        actorDTO.setDob( actor.getDob() );
        List<ActorAward> list = actor.getAwards();
        if ( list != null ) {
            actorDTO.setAwards( new ArrayList<ActorAward>( list ) );
        }

        return actorDTO;
    }

    @Override
    public List<ActorDTO> toDtos(List<Actor> actorList) {
        if ( actorList == null ) {
            return null;
        }

        List<ActorDTO> list = new ArrayList<ActorDTO>( actorList.size() );
        for ( Actor actor : actorList ) {
            list.add( toDto( actor ) );
        }

        return list;
    }

    @Override
    public Actor toEntity(ActorDTO actorDTO) {
        if ( actorDTO == null ) {
            return null;
        }

        Actor actor = new Actor();

        actor.setFirstName( actorDTO.getFirstName() );
        actor.setLastName( actorDTO.getLastName() );
        actor.setGender( actorDTO.getGender() );
        actor.setDob( actorDTO.getDob() );
        List<ActorAward> list = actorDTO.getAwards();
        if ( list != null ) {
            actor.setAwards( new ArrayList<ActorAward>( list ) );
        }

        return actor;
    }
}
