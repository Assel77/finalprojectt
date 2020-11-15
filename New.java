package kz.edu.astanait;

public class New {
	protected int id;
	protected String topic;
	protected String direction;
	
	
	public New(int id, String topic, String direction) {
		super();
		this.id = id;
		this.topic = topic;
		this.direction = direction;
	}
	
	
	public New(String topic, String direction) {
		super();
		this.topic = topic;
		this.direction = direction;
	}


	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getTopic() {
		return topic;
	}
	public void setTopic(String topic) {
		this.topic = topic;
	}
	public String getDirection() {
		return direction;
	}
	public void setDirection(String direction) {
		this.direction = direction;
	}
	
}
