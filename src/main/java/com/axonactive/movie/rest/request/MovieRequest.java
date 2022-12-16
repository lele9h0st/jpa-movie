package com.axonactive.movie.rest.request;

import com.axonactive.movie.entity.*;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.List;
@Data
@AllArgsConstructor
@NoArgsConstructor
@JsonIgnoreProperties
public class MovieRequest {
    private String title;
    private Integer year;
    private Integer length;
    private String language;

    private ProductionCompany productionCompany;

    private List<MovieAward> movieAwards;
    private List<MovieCast> movieCasts;

    private List<MovieGenres> genres;

//    private List<Rating> ratings;
}
