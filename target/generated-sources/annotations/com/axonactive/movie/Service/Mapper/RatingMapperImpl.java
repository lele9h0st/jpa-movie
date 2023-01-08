package com.axonactive.movie.Service.Mapper;

import com.axonactive.movie.Service.Dto.MovieDTO;
import com.axonactive.movie.Service.Dto.RatingDTO;
import com.axonactive.movie.Service.Dto.ReviewerDTO;
import com.axonactive.movie.entity.Movie;
import com.axonactive.movie.entity.Rating;
import com.axonactive.movie.entity.Reviewer;
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
public class RatingMapperImpl implements RatingMapper {

    @Override
    public RatingDTO toDto(Rating rating) {
        if ( rating == null ) {
            return null;
        }

        RatingDTO ratingDTO = new RatingDTO();

        ratingDTO.setMovie( movieToMovieDTO( rating.getMovie() ) );
        ratingDTO.setReviewer( reviewerToReviewerDTO( rating.getReviewer() ) );
        ratingDTO.setStar( rating.getStar() );
        ratingDTO.setComment( rating.getComment() );

        return ratingDTO;
    }

    @Override
    public List<RatingDTO> toDtos(List<Rating> ratingList) {
        if ( ratingList == null ) {
            return null;
        }

        List<RatingDTO> list = new ArrayList<RatingDTO>( ratingList.size() );
        for ( Rating rating : ratingList ) {
            list.add( toDto( rating ) );
        }

        return list;
    }

    protected MovieDTO movieToMovieDTO(Movie movie) {
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

    protected ReviewerDTO reviewerToReviewerDTO(Reviewer reviewer) {
        if ( reviewer == null ) {
            return null;
        }

        ReviewerDTO reviewerDTO = new ReviewerDTO();

        reviewerDTO.setName( reviewer.getName() );
        reviewerDTO.setPhone( reviewer.getPhone() );
        reviewerDTO.setEmail( reviewer.getEmail() );

        return reviewerDTO;
    }
}
