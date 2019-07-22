package conference;

import java.util.HashSet;
import java.util.Set;

import javax.ws.rs.ApplicationPath;

@ApplicationPath("/")
public class ScheduleServiceApplication extends javax.ws.rs.core.Application {

	@Override
	public Set<Class<?>> getClasses() {
		Set<Class<?>> s = new HashSet<Class<?>>();
		s.add(ScheduleService.class);
		s.add(CrossDomainFilter.class);
		return s;
	}
}
