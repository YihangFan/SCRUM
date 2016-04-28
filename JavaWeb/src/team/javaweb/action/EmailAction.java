package team.javaweb.action;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import team.javaweb.service.Email;

public class EmailAction extends ActionSupport{

	private String Name;
	private String Email;
	private String Subject;
	private String Message;

	public String getName(){
		return Name;
	}
	
	public void setName(String Name){
		this.Name = Name;
	}
	
	public String getEmail(){
		return Email;
	}
	
	public void setEmail(String Email){
		this.Email = Email;
	}
	
	public String getSubject(){
		return Email;
	}
	
	public void setSubject(String Subject){
		this.Subject = Subject;
	}
	
	public String getMessage(){
		return Email;
	}
	
	public void setMessage(String Message){
		this.Message = Message;
	}
	
	//邮箱正则验证
	public boolean checkEmail(String str){
		
		String p = "^([a-z0-9A-Z]+[-|\\.]?)+[a-z0-9A-Z]@([a-z0-9A-Z]+(-[a-z0-9A-Z]+)?\\.)+[a-zA-Z]{2,}$";
		
		boolean m = str.matches(p);
				
		if(m){
			return true;
		}
		else
			return false;
	}
	
	public String sendEmail(){
		
		String result = "success";
		
		Email theMail = new Email("smtp.163.com");
		theMail.setNeedAuth(true); //需要验证
		
		System.out.println(Email);
		if(checkEmail(Email) && !Name.isEmpty() && !Message.isEmpty() && !Subject.isEmpty()){
			if(!theMail.setSubject(Subject)) {
				result = "fail";
			}
			if(!theMail.setBody(Message)) {
				result = "fail";
			}
			if(!theMail.setTo(Email)) {
				result = "fail";
			}
			if(!theMail.setFrom("matong332489847@163.com")) {
				result = "fail";
			}
			
			theMail.setNamePass("matong332489847@163.com","matong332489847");
			
			if(!theMail.sendOut()){
				result = "fail";
				ActionContext.getContext().put("EmailMessage","发送失败!");
			}else{
				ActionContext.getContext().put("EmailMessage","发送失败!");
				result = "success";
			}
		}else if(!checkEmail(Email)){
			ActionContext.getContext().put("EmailMessage","邮箱格式错误!");
		}
		
		return result;
	}
}
