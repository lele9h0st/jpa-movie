package com.axonactive.movie.entity;

import com.fasterxml.jackson.annotation.JsonManagedReference;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.hibernate.annotations.LazyCollection;
import org.hibernate.annotations.LazyCollectionOption;

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
    @Column(unique = true)
    private String title;
    private Integer year;
    private Integer length;
    private String language;
    @OneToOne
    @JoinColumn(name = "production_company_id")
    private ProductionCompany productionCompany;
//    @OneToMany(mappedBy = "movie", cascade = CascadeType.ALL)
//    @LazyCollection(LazyCollectionOption.FALSE)
//    @JsonManagedReference
//    private List<MovieAward> movieAwards;
//    @OneToMany(mappedBy = "movie", cascade = CascadeType.ALL)
//    @JsonManagedReference
//    @LazyCollection(LazyCollectionOption.FALSE)
//    private List<MovieCast> movieCasts;
//    @OneToMany(mappedBy = "movie", cascade = CascadeType.ALL)
//    @JsonManagedReference
//    @LazyCollection(LazyCollectionOption.FALSE)
//    private List<MovieGenres> genres;

}
