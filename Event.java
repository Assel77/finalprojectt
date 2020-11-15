package kz.edu.astanait;

public class Event {
	protected int id;
	protected String theme;
	protected String date;

	public Event() {
	}
	
	public Event(String theme, String date) {
		super();
		this.theme = theme;
		this.date = date;
		
	}

	public Event(int id, String theme, String date) {
		super();
		this.id = id;
		this.theme = theme;
		this.date = date;
	}

	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getTheme() {
		return theme;
	}
	public void setTheme(String theme) {
		this.theme = theme;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date =date;
	}

}
