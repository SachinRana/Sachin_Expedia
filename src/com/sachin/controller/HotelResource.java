package com.sachin.controller;

import java.util.List;
import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;
import com.sachin.data.Hotel;
import com.sachin.logic.CurdService;


@Path("/hotels")
public class HotelResource {

	@GET 
	@Produces({ MediaType.APPLICATION_JSON, MediaType.APPLICATION_XML })
	public List<Hotel> findAll11() {
		System.out.println("findAll null");
	
		return null;
		
	}
	
	@GET @Path("/searchAll")
	@Produces({ MediaType.APPLICATION_JSON, MediaType.APPLICATION_XML })
	public List<Hotel> findAll() {
		System.out.println("findAll");
		return CurdService.selectAll();
		
	}

	
	@GET @Path("searchByName/{name}")
	@Produces({ MediaType.APPLICATION_JSON, MediaType.APPLICATION_XML })
	public List<Hotel> findByName(@PathParam("name") String name) {
		System.out.println("findByName: " + name);
		return CurdService.findByName(name);
	}
}
