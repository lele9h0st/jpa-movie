package com.axonactive.rest;

import com.axonactive.Service.MovieService;

import javax.ejb.Stateless;
import javax.inject.Inject;
import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;

@Stateless
@Path(MovieResource.PATH)
public class MovieResource {
    public static final String PATH = "movies";
    @Inject
    private MovieService movieService;

    @GET
    @Produces({MediaType.APPLICATION_JSON})
    public Response getAllMovies() {
        return Response.status(200).entity(movieService.getAll()).build();
    }
}
