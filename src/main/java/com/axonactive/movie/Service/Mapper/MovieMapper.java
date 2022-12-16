package com.axonactive.movie.Service.Mapper;

import com.axonactive.movie.Service.Dto.MovieDTO;
import com.axonactive.movie.entity.Movie;
import org.mapstruct.Mapper;

import java.util.List;

@Mapper(componentModel = "cdi")
public interface MovieMapper    {
    MovieDTO toDto(Movie movie);
    List<MovieDTO> toDtos(List<Movie> movieList);

    Movie toEntity(MovieDTO movieDTO);
}
