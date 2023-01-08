package com.axonactive.movie.Service.Dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class ReviewerDTO {
    private String name;
    private String phone;
    private String email;
}
