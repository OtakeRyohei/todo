package beans;

import java.time.LocalDate;

public class Task {
	
	private int id;
	private String title;
	private String status;
	private LocalDate deadline;
	private int user_id;
	
	public Task (int id, String title, String status, LocalDate deadline, int user_id) {
		
		this.id = id;
		this.title = title;
		this.status = status;
		this.deadline = deadline;
		this.user_id = user_id;
		
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public LocalDate getDeadline() {
		return deadline;
	}

	public void setDeadline(LocalDate deadline) {
		this.deadline = deadline;
	}
	
	public int getUser_id () {
		return user_id;
	}
	
	public void setUser_id(int user_id) {
		this.user_id = user_id;
	}
	
}
