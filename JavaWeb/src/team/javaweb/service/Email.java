package team.javaweb.service;

import java.util.Properties;

import javax.activation.DataHandler;
import javax.activation.FileDataSource;
import javax.mail.Address;
import javax.mail.BodyPart;
import javax.mail.Message;
import javax.mail.Multipart;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeBodyPart;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeMultipart;

import com.opensymphony.xwork2.ActionSupport;

public class Email { 

	private MimeMessage mimeMsg; //MIME�ʼ����� 
	private Session session; //�ʼ��Ự���� 
	private Properties props; //ϵͳ���� 
	private boolean needAuth = false; //smtp�Ƿ���Ҫ��֤ 
	//smtp��֤�û��������� 
	private String username; 
	private String password; 
	private Multipart mp; //Multipart����,�ʼ�����,����,���������ݾ���ӵ����к�������MimeMessage���� 
	 
	/**
	 * Constructor
	 * @param smtp �ʼ����ͷ�����
	 */
	public Email(String smtp){ 
		setSmtpHost(smtp); 
		createMimeMessage(); 
	} 

	/**
	 * �����ʼ����ͷ�����
	 * @param hostName String 
	 */
	public void setSmtpHost(String hostName) { 
		System.out.println("����ϵͳ���ԣ�mail.smtp.host = "+hostName); 
		if(props == null)
			props = System.getProperties(); //���ϵͳ���Զ��� 	
		props.put("mail.smtp.host",hostName); //����SMTP���� 
	} 


	/**
	 * ����MIME�ʼ�����  
	 * @return
	 */
	public boolean createMimeMessage() 
	{ 
		try { 
			System.out.println("׼����ȡ�ʼ��Ự����"); 
			session = Session.getDefaultInstance(props,null); //����ʼ��Ự���� 
		} 
		catch(Exception e){ 
			System.err.println("��ȡ�ʼ��Ự����ʱ��������"+e); 
			return false; 
		} 
	
		System.out.println("׼������MIME�ʼ�����"); 
		try { 
			mimeMsg = new MimeMessage(session); //����MIME�ʼ����� 
			mp = new MimeMultipart(); 
		
			return true; 
		} catch(Exception e){ 
			System.err.println("����MIME�ʼ�����ʧ�ܣ�"+e); 
			return false; 
		} 
	} 	
	
	/**
	 * ����SMTP�Ƿ���Ҫ��֤
	 * @param need
	 */
	public void setNeedAuth(boolean need) { 
		System.out.println("����smtp�����֤��mail.smtp.auth = "+need); 
		if(props == null) props = System.getProperties(); 
		if(need){ 
			props.put("mail.smtp.auth","true"); 
		}else{ 
			props.put("mail.smtp.auth","false"); 
		} 
	} 

	/**
	 * �����û���������
	 * @param name
	 * @param pass
	 */
	public void setNamePass(String name,String pass) { 
		username = name; 
		password = pass; 
	} 

	/**
	 * �����ʼ�����
	 * @param mailSubject
	 * @return
	 */
	public boolean setSubject(String mailSubject) { 
		System.out.println("�����ʼ����⣡"); 
		try{ 
			mimeMsg.setSubject(mailSubject); 
			return true; 
		} 
		catch(Exception e) { 
			System.err.println("�����ʼ����ⷢ������"); 
			return false; 
		} 
	}
	
	/** 
	 * �����ʼ�����
	 * @param mailBody String 
	 */ 
	public boolean setBody(String mailBody) { 
		System.out.println("�����ʼ����ģ�"); 
		try{ 
			BodyPart bp = new MimeBodyPart(); 
			bp.setContent(""+mailBody,"text/html;charset=GBK"); 
			mp.addBodyPart(bp); 
		
			return true; 
		} catch(Exception e){ 
		System.err.println("�����ʼ�����ʱ��������"+e); 
		return false; 
		} 
	} 
	
	/** 
	 * ���÷�����
	 * @param from String 
	 */ 
	public boolean setFrom(String from) { 
		System.out.println("���÷����ˣ�"); 
		try{ 
			mimeMsg.setFrom(new InternetAddress(from)); //���÷����� 
			return true; 
		} catch(Exception e) { 
			return false; 
		} 
	} 
	/** 
	 * ����������
	 * @param to String 
	 */ 
	public boolean setTo(String to){ 
		System.out.println("���������ˣ�"); 
		if(to == null)return false; 
		try{ 
			mimeMsg.setRecipients(Message.RecipientType.TO,InternetAddress.parse(to)); 
			return true; 
		} catch(Exception e) { 
			return false; 
		} 	
	} 
	
	/** 
	 * �����ʼ�
	 */ 
	public boolean sendOut() 
	{ 
		try{ 
			mimeMsg.setContent(mp); 
			mimeMsg.saveChanges(); 
			System.out.println("���ڷ����ʼ�...."); 
			
			Session mailSession = Session.getInstance(props,null); 
			Transport transport = mailSession.getTransport("smtp"); 
			transport.connect((String)props.get("mail.smtp.host"),username,password); 
			transport.sendMessage(mimeMsg,mimeMsg.getRecipients(Message.RecipientType.TO)); 
			
			System.out.println("�����ʼ��ɹ���"); 
			transport.close(); 
			
			return true; 
		} catch(Exception e) { 
			System.err.println("�ʼ�����ʧ�ܣ�"+e); 
			return false; 
		} 
	} 

} 

