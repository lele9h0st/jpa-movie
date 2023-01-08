package com.axonactive.movie.Service.Dto;

import com.axonactive.movie.entity.MovieAward;
import com.axonactive.movie.entity.MovieCast;
import com.axonactive.movie.entity.MovieGenres;
import com.axonactive.movie.entity.ProductionCompany;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.List;
@Data
@AllArgsConstructor
@NoArgsConstructor
public class MovieDTO {
    private String title;
    private Integer year;
    private Integer length;
    private String language;
    private ProductionCompany productionCompany;
}
