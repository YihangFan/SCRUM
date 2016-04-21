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
	
		
	//登陆
	public String login(){

		String result = "loginerror";
				
		System.out.println(username);
		System.out.println(password);
		
		Login log = new Login();
				
		List list = log.login(getUsername(),getPassword());
				
		if(!list.isEmpty()){
					
			HttpSession session = ServletActionContext.getRequest().getSession();
					
			session.setAttribute("loginmessage","登陆成功!");
				
			result = "loginsuccess";
		}else{
			ActionContext.getContext().put("LoginMessage","用户名密码错误!");
		}
		return result;
	}
}
