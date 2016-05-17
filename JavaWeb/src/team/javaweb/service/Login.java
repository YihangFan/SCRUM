package team.javaweb.service;

import java.util.List;
import org.hibernate.Session;
import org.hibernate.Transaction;

import team.javaweb.dao.Hibernate;

public class Login {

		//创建会话
		Session session = Hibernate.getInstance().openSession();
		Transaction tx = session.beginTransaction();
				
		//登陆方法
		public List login(String username,String password){
	
			String sql = "select * from user where username = '"+username+"' and password='"+password+"'";
			List list = session.createSQLQuery(sql).list();
			session.getTransaction().commit();
			return list;
		}

}
