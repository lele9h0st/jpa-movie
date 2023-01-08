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
@NamedQuery(name=Movie.GET_MOVIE_LIST,query = "SELECT m FROM Movie m")
@NamedQuery(name=Movie.GET_MOVIE_BY_ID,query = "SELECT m FROM Movie m WHERE m.id=:id")
@NamedQuery(name = Movie.GET_MOVIE_LIST_BY_ACTOR_ID,query = "select s from Movie s join s.movieCasts mc where mc.actor.id=:id")
@NamedQuery(name=Movie.GET_MOVIE_LIST_BY_GENRES,query = "select s from Movie s join fetch s.genres mg join Genres g on mg.genres=g where g.title=:title")
@NamedQuery(name = Movie.GET_MOVIE_BY_RANGE_YEAR,query = "select s from Movie s where s.year<:endYear and s.year>:startYear")
public class Movie {
    public static final String GET_MOVIE_LIST="Movie.getAllMovie";
    public static final String GET_MOVIE_BY_ID="Movie.getById";
    public static final String GET_MOVIE_LIST_BY_ACTOR_ID="Movie.getMoviesByActorId";
    public static final String GET_MOVIE_LIST_BY_GENRES="Moive.getMoviesByGenres";
    public static final String GET_MOVIE_BY_RANGE_YEAR="Movie.getMoviesByRangeYear";
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
    @OneToMany(mappedBy = "movie", cascade = CascadeType.ALL)
    @JsonManagedReference
    @LazyCollection(LazyCollectionOption.FALSE)
    private List<MovieCast> movieCasts;
    @OneToMany(mappedBy = "movie", cascade = CascadeType.ALL)
    @JsonManagedReference
    @LazyCollection(LazyCollectionOption.FALSE)
    private List<MovieGenres> genres;

}
