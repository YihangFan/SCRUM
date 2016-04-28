package team.javaweb.action;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

import team.javaweb.service.EditInfo;
import team.javaweb.service.Login;

public class InfoAction extends ActionSupport{

	private String Username;
	private String Password;
	private String Name;
	private String Sex;
	private String School;
	private String Major;
	private String ID;
	private String Phone;
	private String Birthplace;
	private String LoginName;
	
	public String getUsername(){
		return Username;
	}
	
	public void setUsername(String Username){
		this.Username = Username;
	}
	
	public String getPassword(){
		return Password;
	}
	
	public void setPassword(String Password){
		this.Password = Password;
	}
	
	public String getName(){
		return Name;
	}
	
	public void setName(String Name){
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
	
	public String getLoginName(){
		return LoginName;
	}
	
	public void setLoginName(String LoginName){
		this.LoginName = LoginName;
	}
	
	//注册格式
	public boolean check(String username,String password){
				
		String p1 = "^[a-zA-z0-9]{2,15}$";
				
		String p2 = "^[a-zA-z0-9]{6,12}$";
				
		boolean m1 = username.matches(p1);
				
		boolean m2 = password.matches(p2);
				
		if(m1 && m2){
			return true;
		}
		else
			return false;
	}
	public boolean checkStr(String str){
	
		String p = "^[a-zA-Z0-9\u4e00-\u9fa5]{2,15}$";
		
		boolean m = str.matches(p);
				
		if(m){
			return true;
		}
		else
			return false;
	}
	public boolean checkNum(String str){
		
		String p = "^[0-9]{6,15}$";
				
		boolean m = str.matches(p);
				
		if(m){
			return true;
		}
		else
			return false;
	}
	
	public String Info(){
		
		HttpSession session = ServletActionContext.getRequest().getSession();

		String result = "editerror";

		if(checkStr(Name) && checkStr(Sex) && checkStr(School) && checkStr(Major) && checkNum(ID) && checkNum(Phone) && checkStr(Birthplace)){
			
			EditInfo edit = new EditInfo();
			
			edit.addInfo(Username,Name,Sex,School,Major,ID,Phone,Birthplace);
				
			result = "editsuccess";
		}else{
			ActionContext.getContext().put("EditInfoMessage","信息格式有误!");
		}
		
		return result;
	}
	
	public String InfoEdit(){
		
		HttpSession session = ServletActionContext.getRequest().getSession();
		
		String result = "editerror";
		
		if(check(LoginName,Password)){
			
			EditInfo edit = new EditInfo();
			
			if(edit.editInfo(Username,LoginName,Password)=="yes"){
			
				ActionContext.getContext().put("EditLoginMessage","修改成功!");
			
				result = "editsuccess";
			}
		}else{
			ActionContext.getContext().put("EditLoginMessage","用户名为2-15位，密码为6-12位!");
		}
		
		return result;
	}
}
