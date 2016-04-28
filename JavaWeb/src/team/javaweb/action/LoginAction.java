package team.javaweb.action;

import java.util.List;
import javax.servlet.http.HttpSession;
import org.apache.struts2.ServletActionContext;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

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
	
		
	//��½
	public String login(){

		String result = "loginerror";
				
		System.out.println(username);
		System.out.println(password);
		
		if(!username.isEmpty() && !password.isEmpty()){
		
			Login log = new Login();
				
			List list = log.login(getUsername(),getPassword());
				
			if(!list.isEmpty()){
					
				HttpSession session = ServletActionContext.getRequest().getSession();

				session.setAttribute("User",username);
			
				result = "loginsuccess";
			}else{
				ActionContext.getContext().put("LoginMessage","�û����������!");
			}
		}else{
			ActionContext.getContext().put("LoginMessage","�û������벻��Ϊ��!");
		}
		
		return result;
	}
}
