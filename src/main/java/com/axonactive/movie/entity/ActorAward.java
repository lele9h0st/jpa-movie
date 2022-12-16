package com.axonactive.movie.entity;

import com.fasterxml.jackson.annotation.JsonBackReference;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Entity(name = "actor_award")
public class ActorAward {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;
    @ManyToOne
    @JoinColumn(name = "actor_id")
    @JsonBackReference(value = "actor-award")
    private Actor actor;
    @ManyToOne
    @JoinColumn(name = "award_id")
//    @JsonBackReference(value = "award-actor")
    private Award award;
    private Integer year;
}
