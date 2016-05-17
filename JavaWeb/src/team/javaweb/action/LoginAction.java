package team.javaweb.action;

import java.util.List;
import javax.servlet.http.HttpSession;
import org.apache.struts2.ServletActionContext;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

import team.javaweb.service.EditInfo;
import team.javaweb.service.Login;

public class LoginAction extends ActionSupport{
	
	private String username;
	private String password;
	
	public String getUsername(){
		return username;
	}
	
	public void setUsername(String username){
		this.username = username;
	}
	
	public String getPassword(){
		return password;
	}
	
	public void setPassword(String password){
		this.password = password;
	}
	
	//格式
	public boolean check(String username,String password){
					
		String p1 = "^[a-zA-z0-9]{2,15}$";
					
		String p2 = "^[a-zA-z0-9]{6,12}$";
					
		boolean m1 = username.matches(p1);
					
		boolean m2 = password.matches(p2);
					
		if(m1 && m2){
			return true;
		}
		else{
			return false;
		}
	}
		
	//登陆
	public String login(){

		String result = "loginerror";
				
		System.out.println(username);
		System.out.println(password);
		
		if(check(username,password)){
			
			Login log = new Login();
				
			List list = log.login(getUsername(),getPassword());
				
			if(!list.isEmpty()){
					
				HttpSession session = ServletActionContext.getRequest().getSession();

				session.setAttribute("User",username);
			
				result = "loginsuccess";
			}else{
				ActionContext.getContext().put("LoginMessage","用户名密码错误!");
			}
		}else{
			ActionContext.getContext().put("LoginMessage","用户名密码错误!");
		}
		
		return result;
	}
}
