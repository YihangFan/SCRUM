package team.javaweb.action;

import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class UploadAction extends ActionSupport{

	private String ques1;
	private String ques2;
	private String ques3;
	private String ques4;
	private String ques5;
	private String ques6;
	private String ques7;
	private String ques8;
	private String judgement;
	private String pathInfo;
	
	public String getQues1(){
		return ques1;
	}
	
	public void setQues1(String ques1){
		this.ques1 = ques1;
	}
	
	public String getQues2(){
		return ques2;
	}
	
	public void setQues2(String ques2){
		this.ques2 = ques2;
	}
	
	public String getQues3(){
		return ques3;
	}
	
	public void setQues3(String ques3){
		this.ques3 = ques3;
	}
	
	public String getQues4(){
		return ques4;
	}
	
	public void setQues4(String ques4){
		this.ques4 = ques4;
	}
	
	public String getQues5(){
		return ques5;
	}
	
	public void setQues5(String ques5){
		this.ques5 = ques5;
	}
	
	public String getQues6(){
		return ques6;
	}
	
	public void setQues6(String ques6){
		this.ques6 = ques6;
	}
	
	public String getQues7(){
		return ques7;
	}
	
	public void setQues7(String ques7){
		this.ques7 = ques7;
	}
	
	public String getQues8(){
		return ques8;
	}
	
	public void setQues8(String ques8){
		this.ques8 = ques8;
	}
	
	public String getJudgement(){
		return judgement;
	}
	
	public void setJudgement(String judgement){
		this.judgement = judgement;
	}
	
	public String getPathInfo(){
		return pathInfo;
	}
	
	public void setPathInfo(String pathInfo){
		this.pathInfo = pathInfo;
	}
	
	public String uploadJudge(){
		
		HttpSession session = ServletActionContext.getRequest().getSession();
		
		String path = "D:/apache-tomcat-8.0.26/webapps/comments" + pathInfo;
		
		File file = new File(path);
		
		//获取当前时间
		Date date = new Date();
		DateFormat format=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String time=format.format(date);

		String content = (String) session.getAttribute("User") + "&" + time + "#" + judgement +"\r\n";
		
		System.out.println(content);
		
		if(file.exists()){
			FileWriter writer = null;
			try{
				writer = new FileWriter(path,true);
				writer.write(content);
				ActionContext.getContext().put("uploadInfo","上传评价成功!");
			}catch(IOException e){
				e.printStackTrace();
			}finally{
				try{
					if(writer != null){
						writer.close();
					}
				}catch(IOException e){
					e.printStackTrace();
				}
			}
			return "success";
		}else{
			ActionContext.getContext().put("uploadInfo","上传评价失败!");
		}
		return "fail";
	}
}
