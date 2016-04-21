package team.javaweb.bean;


public class User {

	private String username;
	private String password;
	
	public User(String username,String password,int id){
		this.username = username;
		this.password = password;
	}
	
	public User(){
	}
	
	public String getPassword(){
		return password;
	}
	public void setPassword(String password){
		this.password = password;
	}
	
	public String getUsername(){
		return username;
	}
	public void setUsername(String username){
		this.username = username;
	}
}