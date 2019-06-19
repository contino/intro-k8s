package conference;

public class Schedule {

	private long schedule_id;

	private String session_nm;

	public String getSessionName() {
		return session_nm;
	}

	public void setSessionName(String session_nm) {
		this.session_nm = session_nm;
	}

	public long getScheduleId() {
		return schedule_id;
	}

	public void setRid(long schedule_id) {
		this.schedule_id = schedule_id;
	}
}
