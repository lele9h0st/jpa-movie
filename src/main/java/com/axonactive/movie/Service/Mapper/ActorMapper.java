package com.axonactive.movie.Service.Mapper;

import com.axonactive.movie.Service.Dto.ActorDTO;
import com.axonactive.movie.Service.Dto.MovieDTO;
import com.axonactive.movie.entity.Actor;
import com.axonactive.movie.entity.Movie;
import org.mapstruct.Mapper;

import java.util.List;
@Mapper(componentModel = "cdi")
public interface ActorMapper {
    ActorDTO toDto(Actor actor);
    List<ActorDTO> toDtos(List<Actor> actorList);

    Actor toEntity(ActorDTO actorDTO);
}
