package com.axonactive.movie.entity;

import com.fasterxml.jackson.annotation.JsonBackReference;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Entity(name = "movie_genres")
public class MovieGenres {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;
    @ManyToOne
    @JoinColumn(name = "movie_id")
    @JsonBackReference
    private Movie movie;
    @ManyToOne
    @JoinColumn(name = "genres_id")
    private Genres genres;
}
