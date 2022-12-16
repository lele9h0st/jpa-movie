package com.axonactive.movie.entity;

import com.fasterxml.jackson.annotation.JsonBackReference;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Entity(name = "rating")
public class Rating {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;
    @ManyToOne
    @JoinColumn(name = "movie_id")
//    @JsonBackReference
    private Movie movie;
    @ManyToOne
    @JoinColumn(name = "reviewer_id")
//    @JsonBackReference
    private Reviewer reviewer;
    @Column(name = "star")
    private Integer star;
    @Column(name = "comment")
    private String comment;
}
