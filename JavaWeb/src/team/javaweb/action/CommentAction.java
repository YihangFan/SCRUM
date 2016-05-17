package team.javaweb.action;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;

public class CommentAction extends ActionSupport{

	private String path;
	
	public String getPath()
    {
    	return path;
    }
    
    public void setPath(String path)
    {
    	this.path = path;
    }
    
    public List authorList(String filepath) throws IOException{

    	File file = new File(filepath);
    	
    	List author = new ArrayList<String>();
    	
    	if(file.isFile()){
    		BufferedReader br = new BufferedReader(new FileReader(filepath));
    		String str = null;
    	
    		int index=0;
    		while((str=br.readLine()) != null){
    			for(int i=0;i<str.length();i++){
    				if(str.substring(i,i+1).equals("&")){
    					author.add(index,str.substring(0,i).toString());
    					index++;
    				}
    			}
    		}
    	}

		return author;
    }
    
    public List commentList(String filepath) throws IOException{

    	File file = new File(filepath);
    	
    	List comment = new ArrayList<String>();
    	
    	if(file.isFile()){
    		BufferedReader br = new BufferedReader(new FileReader(filepath));
    		String str = null;
    	
    		int index=0;
    		while((str=br.readLine()) != null){
    			for(int i=0;i<str.length();i++){
    				if(str.substring(i,i+1).equals("#")){
    					comment.add(index,str.substring(i+1,str.length()).toString());
    					index++;
    				}
    			}
    		}
    	}

		return comment;
    }
    
    public List dateList(String filepath) throws IOException{

    	File file = new File(filepath);
    	
    	List date = new ArrayList<String>();
    	
    	if(file.isFile()){
    		BufferedReader br = new BufferedReader(new FileReader(filepath));
    		String str = null;
    	
    		int index = 0;
    		int j = 0;
    		while((str=br.readLine()) != null){
    			for(int i=0;i<str.length();i++){
    				if(str.substring(i,i+1).equals("&")){
    					if(str.substring(j,j+1).equals("#")){
    						date.add(j,str.substring(i+1,j).toString());
    						index++;
    					}
    				}
    			}
    		}
    	}

		return date;
    }
    
    public int getColumn(String filepath) throws IOException{

    	File file = new File(filepath);
    	
    	int num=0;
    	
    	if(file.isFile()){
    		BufferedReader br = new BufferedReader(new FileReader(filepath));
    		
    		while(br.readLine() != null){
    			num++;
    		}
    	}

    	return num;
    }

    public String openComment() throws IOException{
    	
    	HttpSession session = ServletActionContext.getRequest().getSession();
    	
    	String filepath = "D:/apache-tomcat-8.0.26/webapps/comments" + path;
    	
    	File file = new File(filepath);

    	if(file.isFile() && !path.isEmpty()){

    		session.setAttribute("fileName", filepath);
    		
    		return "success";
    	}

    	return "fail";
    }
}
