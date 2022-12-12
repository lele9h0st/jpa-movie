package com.axonactive.rest.request;

import com.axonactive.entity.*;

import javax.persistence.CascadeType;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import java.util.List;

public class MovieRequest {
    private String title;
    private Integer year;
    private Integer length;
    private String language;

    private ProcductionCompany procductionCompany;

    private List<MovieAward> movieAwards;
    private List<MovieCast> movieCasts;

    private List<MovieGenres> genres;

    private List<Rating> ratings;
}
