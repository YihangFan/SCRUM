package team.javaweb.action;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

import team.javaweb.service.Login;
import team.javaweb.service.Regist;

public class RegistAction extends ActionSupport{
	
	private String username;
	private String password;
	private String password2;
	
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
	
	public String getPassword2(){
		return password2;
	}
	
	public void setPassword2(String password2){
		this.password2 = password2;
	}
		
	//×¢²á
	public String regist(){

		String result = "registerror";

		if(!username.isEmpty() && !password.isEmpty() && password.equals(password2)){
			
			Regist reg = new Regist();
			
			if(reg.regist(username, password)=="yes"){
				HttpSession session = ServletActionContext.getRequest().getSession();
				result = "registsuccess";
			}
		}else  if(username.isEmpty() || password.isEmpty()){
			ActionContext.getContext().put("RegistMessage","ÇëÍêÉÆ×¢²áÐÅÏ¢!");
		}else if(password != password2){
			ActionContext.getContext().put("RegistMessage","ÃÜÂë²»Ò»ÖÂ!");
		}
		
		return result;
	}
}