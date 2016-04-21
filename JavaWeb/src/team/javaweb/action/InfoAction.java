package team.javaweb.action;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

import team.javaweb.service.Login;

public class InfoAction extends ActionSupport{

	private String Name;
	private String Sex;
	private String School;
	private String Major;
	private String ID;
	private String Phone;
	private String Birthplace;
	
	public String getName(){
		return Name;
	}
	
	public void setName(String username){
		this.Name = Name;
	}
	
	public String getSex(){
		return Sex;
	}
	
	public void setSex(String Sex){
		this.Sex = Sex;
	}
	
	public String getSchool(){
		return School;
	}
	
	public void setSchool(String School){
		this.School = School;
	}
	
	public String getMajor(){
		return Major;
	}
	
	public void setMajor(String Major){
		this.Major = Major;
	}
	
	public String getID(){
		return ID;
	}
	
	public void setID(String ID){
		this.ID = ID;
	}
	
	public String getPhone(){
		return Phone;
	}
	
	public void setPhone(String Phone){
		this.Phone = Phone;
	}
	
	public String getBirthplace(){
		return Birthplace;
	}
	
	public void setBirthplace(String Birthplace){
		this.Birthplace = Birthplace;
	}
	
	public String Info(){

		String result = "editerror";
		
		Login log = new Login();
				
		List list = log.login(getUsername(),getPassword());
				
		if(!list.isEmpty()){
					
			HttpSession session = ServletActionContext.getRequest().getSession();
					
			session.setAttribute("editsuccess","登陆成功!");
				
			result = "editsuccess";
		}else{
			ActionContext.getContext().put("editsuccess","用户名密码错误!");
		}
		return result;
	}
}
