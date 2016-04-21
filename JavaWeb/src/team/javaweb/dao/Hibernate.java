package team.javaweb.dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.AnnotationConfiguration;
import org.hibernate.cfg.Configuration;

public class Hibernate {
	
	private static org.hibernate.SessionFactory sessionFactory;
	private static Configuration conf = new Configuration();

	static {
		// 加载hibernate配置
		sessionFactory = conf.configure().buildSessionFactory();
	}
	
	public static SessionFactory getInstance() {
		return sessionFactory;
	}
	
	//打开会话
	public Session openSession() {
		return sessionFactory.openSession();
	}

	//返回会话
	public Session getCurrentSession() {
		return sessionFactory.getCurrentSession();
	}
	
	//关闭工厂
	public static void close() {
		if (sessionFactory != null)
			sessionFactory.close();
		sessionFactory = null;
	}
}