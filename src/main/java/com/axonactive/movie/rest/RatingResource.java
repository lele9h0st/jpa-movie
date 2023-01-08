package com.axonactive.movie.rest;

import com.axonactive.movie.Service.RatingService;

import javax.ejb.Stateless;
import javax.inject.Inject;
import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;

@Stateless
@Path(RatingResource.PATH)
public class RatingResource {
    public static final String PATH = "/ratings";
    @Inject
    RatingService ratingService;

    @GET
    @Produces({MediaType.APPLICATION_JSON})
    @Path("/movie/{movieId}")
    public Response getRatingByMovie(@PathParam("movieId") Integer movieId){
        return Response.status(200).entity(ratingService.getRatingsByMovieId(movieId)).build();
    }
}
