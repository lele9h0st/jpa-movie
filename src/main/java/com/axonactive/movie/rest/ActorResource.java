package com.axonactive.movie.rest;

import com.axonactive.movie.Service.ActorService;
import com.axonactive.movie.Service.Dto.ActorDTO;
import com.axonactive.movie.Service.Dto.MovieDTO;
import com.axonactive.movie.rest.request.ActorRequest;
import com.axonactive.movie.rest.request.MovieRequest;

import javax.annotation.security.PermitAll;
import javax.annotation.security.RolesAllowed;
import javax.ejb.Stateless;
import javax.inject.Inject;
import javax.ws.rs.*;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;

@Stateless
@Path(ActorResource.PATH)
public class ActorResource {
    public static final String PATH = "/actors";
    @Inject
    private ActorService actorService;
    @GET
    @PermitAll
    @Produces({MediaType.APPLICATION_JSON})
    public Response findAllActor(){
       return Response.status(200).entity(actorService.getAll()).build();
    }
    @GET
    @Path("/{id}")
    @Produces({MediaType.APPLICATION_JSON})
    public Response findById(@PathParam("id") Integer id){
        return Response.status(200).entity(actorService.getById(id)).build();
    }
    @PUT
    @Consumes({MediaType.APPLICATION_JSON})
    @Produces({MediaType.APPLICATION_JSON})
    @Path("/{id}")
    public Response updateActor(ActorRequest actorRequest,@PathParam("id") Integer id){
        ActorDTO updateActor=actorService.updateActor(actorRequest,id);
        return Response.ok().entity(updateActor).status(Response.Status.OK).build();
    }
    @POST
    @Consumes({MediaType.APPLICATION_JSON})
    @Produces({MediaType.APPLICATION_JSON})
    public Response createMovie(ActorRequest actorRequest) {
        ActorDTO createActor = actorService.createActor(actorRequest);
        return Response.ok().entity(createActor).status(Response.Status.CREATED).build();
    }

}
