package csdit;

public class LoginDTO {

	private String id;
	private String name;
	private String pwd;
	
	public LoginDTO() {}
	
	public LoginDTO(String id, String name, String pwd) {
		this.id = id;
		this.name = name;
		this.pwd = pwd;
	}
	public String getId() {
		return id;
	}
	public String getName() {
		return name;
	}
	public String getPwd() {
		return pwd;
	}
	public void setId(String id) {
		this.id = id;
	}
	public void setName(String name) {
		this.name = name;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
}
