package com.axonactive.movie.Service.Dto;

import com.axonactive.movie.entity.Movie;
import com.axonactive.movie.entity.Reviewer;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.Column;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class RatingDTO {
    private MovieDTO movie;

    private ReviewerDTO reviewer;

    private Integer star;

    private String comment;
}
