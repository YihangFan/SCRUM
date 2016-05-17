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
	private String code;
	
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
	
	public String getCode(){
		return password2;
	}
	
	public void setCode(String code){
		this.code = code;
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
		
	//注册
	public String regist(){

		String result = "registerror";
		
		HttpSession session = ServletActionContext.getRequest().getSession();
		String Rcode = (String) session.getAttribute("rCode");

		System.out.println(Rcode+" "+code);
		
		if(check(username,password) && password.equals(password2) && code.equals(Rcode)){
			
			Regist reg = new Regist();
			
			if(reg.regist(username, password)=="yes"){
				result = "registsuccess";
			}
		}else  if(username.isEmpty() || password.isEmpty()){
			ActionContext.getContext().put("RegistMessage","请完善注册信息!");
		}else if(!password.equals(password2)){
			ActionContext.getContext().put("RegistMessage","密码不一致!");
		}else if(!check(username,password)){
			ActionContext.getContext().put("RegistMessage","格式不正确!");
		}
		
		return result;
	}
}