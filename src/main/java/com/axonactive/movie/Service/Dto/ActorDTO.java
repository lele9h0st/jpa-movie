package com.axonactive.movie.Service.Dto;

import com.axonactive.movie.entity.ActorAward;
import com.fasterxml.jackson.annotation.JsonFormat;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.FetchType;
import javax.persistence.OneToMany;
import java.sql.Date;
import java.util.List;
@Data
@AllArgsConstructor
@NoArgsConstructor
public class ActorDTO {

    private String firstName;
    private String lastName;
    private Integer gender;
    @JsonFormat(shape = JsonFormat.Shape.STRING, pattern = "yyyy-MM-dd")
    private Date dob;
    private List<ActorAward> awards;
}
