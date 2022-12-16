package com.axonactive.movie.Service.Mapper;

import com.axonactive.movie.Service.Dto.MovieDTO;
import com.axonactive.movie.entity.Movie;
import com.axonactive.movie.entity.MovieAward;
import com.axonactive.movie.entity.MovieCast;
import com.axonactive.movie.entity.MovieGenres;
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
        List<MovieAward> list = movie.getMovieAwards();
        if ( list != null ) {
            movieDTO.setMovieAwards( new ArrayList<MovieAward>( list ) );
        }
        List<MovieCast> list1 = movie.getMovieCasts();
        if ( list1 != null ) {
            movieDTO.setMovieCasts( new ArrayList<MovieCast>( list1 ) );
        }
        List<MovieGenres> list2 = movie.getGenres();
        if ( list2 != null ) {
            movieDTO.setGenres( new ArrayList<MovieGenres>( list2 ) );
        }

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
        List<MovieAward> list = movieDTO.getMovieAwards();
        if ( list != null ) {
            movie.setMovieAwards( new ArrayList<MovieAward>( list ) );
        }
        List<MovieCast> list1 = movieDTO.getMovieCasts();
        if ( list1 != null ) {
            movie.setMovieCasts( new ArrayList<MovieCast>( list1 ) );
        }
        List<MovieGenres> list2 = movieDTO.getGenres();
        if ( list2 != null ) {
            movie.setGenres( new ArrayList<MovieGenres>( list2 ) );
        }

        return movie;
    }
}
