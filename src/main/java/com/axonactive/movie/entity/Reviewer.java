package com.axonactive.movie.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;
import java.util.List;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Entity
public class Reviewer {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;
    private String name;
    @Column(unique = true)
    private String username;
    private String password;
    private String phone;
    private String email;
    @OneToMany(mappedBy = "reviewer",cascade = CascadeType.ALL,fetch = FetchType.EAGER)
    private List<Rating> ratings;
}
