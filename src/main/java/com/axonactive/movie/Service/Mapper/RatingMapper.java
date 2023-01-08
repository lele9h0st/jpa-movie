package com.axonactive.movie.Service.Mapper;

import com.axonactive.movie.Service.Dto.RatingDTO;
import com.axonactive.movie.entity.Rating;
import org.mapstruct.Mapper;

import java.util.List;

@Mapper(componentModel = "cdi")
public interface RatingMapper {
    RatingDTO toDto(Rating rating);
    List<RatingDTO> toDtos(List<Rating> ratingList);
}
