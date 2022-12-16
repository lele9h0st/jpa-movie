package com.axonactive.movie.rest.request;

import com.axonactive.movie.entity.Actor;
import com.axonactive.movie.entity.Movie;
import com.fasterxml.jackson.annotation.JsonBackReference;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

@Data
@AllArgsConstructor
@NoArgsConstructor
@JsonIgnoreProperties
public class MovieCastRequest {

    private Actor actor;
    private Movie movie;
    private String role;
}
