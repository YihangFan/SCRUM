package team.javaweb.service;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.opensymphony.xwork2.ActionContext;

import team.javaweb.dao.Hibernate;

public class Regist {

		//创建会话
		Session session = Hibernate.getInstance().openSession();
		Transaction tx = session.beginTransaction();
					
		//注册方法
		public String regist(String username,String password){
			String check = "select * from user where username = '"+username+"'";
			List list = session.createSQLQuery(check).list();
			System.out.println(username+" "+password);
			if(list.isEmpty()){
				String sql = "insert user(username,password) values('"+username+"','"+password+"')";
				session.createSQLQuery(sql).executeUpdate();
				tx.commit();
			}
			else{
				ActionContext.getContext().put("RegistMessage","用户已存在!");
				return "wrong";
			}
			return "yes";
		}
}
