package conference;

import java.util.Date;

import javax.inject.Inject;
import javax.inject.Named;
import javax.ws.rs.Consumes;
import javax.ws.rs.GET;
import javax.ws.rs.POST;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;
import javax.ws.rs.core.Response.Status;

@Path("/conference-details")
@Produces(MediaType.APPLICATION_JSON)
@Consumes(MediaType.APPLICATION_JSON)
public class ConferenceDetailsService {

	@GET
	public Response getConferenceDetails() {
            String confName = System.getenv("CONFERENCE_NAME");
            if (confName != null) {
                return Response.ok(confName).build();
            }
	    return Response.ok("Conference Name").build();
	}
}
