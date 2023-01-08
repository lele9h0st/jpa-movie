package com.axonactive.movie.rest;

import com.axonactive.movie.Service.ReviewerService;

import javax.ejb.Stateless;
import javax.inject.Inject;
import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;

@Stateless
@Path(ReviewerResource.PATH)
public class ReviewerResource {
    public static final String PATH = "/reviewers";
    @Inject
    ReviewerService reviewerService;

    @GET
    @Produces({MediaType.APPLICATION_JSON})
    @Path("username/{username}/password/{password}")
    public Response getUserByLogin(@PathParam("username") String username,@PathParam("password") String password){
        return Response.status(200).entity(reviewerService.getReviewerByLogin(username,password)).build();
    }

}
