package com.axonactive.entity;

import com.fasterxml.jackson.annotation.JsonManagedReference;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;
import java.util.List;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Entity
public class Movie {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;
    private String title;
    private Integer year;
    private Integer length;
    private String language;
    @OneToOne
    @JoinColumn(name = "production_company_id")
    private ProcductionCompany procductionCompany;
    @OneToMany(mappedBy = "movie", cascade = CascadeType.ALL,fetch = FetchType.EAGER)
    @JsonManagedReference
    private List<MovieAward> movieAwards;
    @OneToMany(mappedBy = "movie", cascade = CascadeType.ALL,fetch = FetchType.EAGER)
    @JsonManagedReference
    private List<MovieCast> movieCasts;
    @OneToMany(mappedBy = "movie", cascade = CascadeType.ALL,fetch = FetchType.EAGER)
    @JsonManagedReference
    private List<MovieGenres> genres;
//    @OneToMany(mappedBy = "movie", cascade = CascadeType.ALL)
//    @JsonManagedReference
//    private List<Rating> ratings;
}
