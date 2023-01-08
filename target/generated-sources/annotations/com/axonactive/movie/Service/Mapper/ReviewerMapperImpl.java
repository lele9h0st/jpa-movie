package com.axonactive.movie.Service.Mapper;

import com.axonactive.movie.Service.Dto.ReviewerDTO;
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
public class ReviewerMapperImpl implements ReviewerMapper {

    @Override
    public ReviewerDTO toDto(Reviewer reviewer) {
        if ( reviewer == null ) {
            return null;
        }

        ReviewerDTO reviewerDTO = new ReviewerDTO();

        reviewerDTO.setName( reviewer.getName() );
        reviewerDTO.setPhone( reviewer.getPhone() );
        reviewerDTO.setEmail( reviewer.getEmail() );

        return reviewerDTO;
    }

    @Override
    public List<ReviewerDTO> toDtos(List<Reviewer> reviewerList) {
        if ( reviewerList == null ) {
            return null;
        }

        List<ReviewerDTO> list = new ArrayList<ReviewerDTO>( reviewerList.size() );
        for ( Reviewer reviewer : reviewerList ) {
            list.add( toDto( reviewer ) );
        }

        return list;
    }
}
