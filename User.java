package kz.edu.astanait;

public class User {
	protected int id;
	protected String name;
	protected String leader;
	protected String description;

	public User() {
	}
	
	public User(String name, String leader, String description) {
		super();
		this.name = name;
		this.leader = leader;
		this.description = description;
	}

	public User(int id, String name, String leader, String description) {
		super();
		this.id = id;
		this.name = name;
		this.leader = leader;
		this.description = description;
	}

	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getLeader() {
		return leader;
	}
	public void setLeader(String leader) {
		this.leader =leader;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}

}
