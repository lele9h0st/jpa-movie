package com.axonactive.movie.Service.Mapper;

import com.axonactive.movie.Service.Dto.MovieDTO;
import com.axonactive.movie.entity.Movie;
import java.util.ArrayList;
import java.util.List;
import javax.annotation.processing.Generated;
import javax.enterprise.context.ApplicationScoped;

@Generated(
    value = "org.mapstruct.ap.MappingProcessor",
    date = "2023-01-08T22:59:17+0700",
    comments = "version: 1.5.2.Final, compiler: javac, environment: Java 11.0.17 (Amazon.com Inc.)"
)
@ApplicationScoped
public class MovieMapperImpl implements MovieMapper {

    @Override
    public MovieDTO toDto(Movie movie) {
        if ( movie == null ) {
            return null;
        }

        MovieDTO movieDTO = new MovieDTO();

        movieDTO.setTitle( movie.getTitle() );
        movieDTO.setYear( movie.getYear() );
        movieDTO.setLength( movie.getLength() );
        movieDTO.setLanguage( movie.getLanguage() );
        movieDTO.setProductionCompany( movie.getProductionCompany() );

        return movieDTO;
    }

    @Override
    public List<MovieDTO> toDtos(List<Movie> movieList) {
        if ( movieList == null ) {
            return null;
        }

        List<MovieDTO> list = new ArrayList<MovieDTO>( movieList.size() );
        for ( Movie movie : movieList ) {
            list.add( toDto( movie ) );
        }

        return list;
    }

    @Override
    public Movie toEntity(MovieDTO movieDTO) {
        if ( movieDTO == null ) {
            return null;
        }

        Movie movie = new Movie();

        movie.setTitle( movieDTO.getTitle() );
        movie.setYear( movieDTO.getYear() );
        movie.setLength( movieDTO.getLength() );
        movie.setLanguage( movieDTO.getLanguage() );
        movie.setProductionCompany( movieDTO.getProductionCompany() );

        return movie;
    }
}
