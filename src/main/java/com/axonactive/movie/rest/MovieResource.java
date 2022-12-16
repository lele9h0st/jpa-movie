package com.axonactive.movie.rest;

import com.axonactive.movie.Service.Dto.MovieDTO;
import com.axonactive.movie.Service.MovieService;
import com.axonactive.movie.entity.Movie;
import com.axonactive.movie.rest.request.MovieRequest;

import javax.ejb.Stateless;
import javax.inject.Inject;
import javax.ws.rs.*;
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

    @POST
    @Consumes({MediaType.APPLICATION_JSON})
    @Produces({MediaType.APPLICATION_JSON})
    public Response createMovie(MovieRequest movieRequest) {
        MovieDTO createMovie = movieService.createMovie(movieRequest);
        return Response.ok().entity(createMovie).status(Response.Status.CREATED).build();
    }

    @GET
    @Path("/{id}")
    @Produces({MediaType.APPLICATION_JSON})
    public Response getById(@PathParam("id") Integer id) {
        return Response.status(200).entity(movieService.getById(id)).build();
    }

    @DELETE
    @Path("/{id}")
    public Response deleteMovie(@PathParam("id") Integer id) {
        movieService.deleteById(id);
        return Response.ok().build();
    }

    @PUT
    @Consumes({MediaType.APPLICATION_JSON})
    @Produces({MediaType.APPLICATION_JSON})
    @Path("/{id}")
    public Response updateMovie(MovieRequest movieRequest, @PathParam("id") Integer id) {
        MovieDTO updateMovie = movieService.updateMovie(movieRequest,id);
        return Response.ok().entity(updateMovie).status(Response.Status.OK).build();
    }
}
