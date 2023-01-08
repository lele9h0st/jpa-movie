package com.axonactive.movie.Service.Mapper;

import com.axonactive.movie.Service.Dto.ReviewerDTO;
import com.axonactive.movie.entity.Reviewer;
import org.mapstruct.Mapper;

import java.util.List;

@Mapper(componentModel = "cdi")
public interface ReviewerMapper {
    ReviewerDTO toDto(Reviewer reviewer);
    List<ReviewerDTO> toDtos(List<Reviewer> reviewerList);
}
