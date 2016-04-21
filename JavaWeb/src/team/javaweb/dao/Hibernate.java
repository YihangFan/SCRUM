package team.javaweb.dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.AnnotationConfiguration;
import org.hibernate.cfg.Configuration;

public class Hibernate {
	
	private static org.hibernate.SessionFactory sessionFactory;
	private static Configuration conf = new Configuration();

	static {
		// ����hibernate����
		sessionFactory = conf.configure().buildSessionFactory();
	}
	
	public static SessionFactory getInstance() {
		return sessionFactory;
	}
	
	//�򿪻Ự
	public Session openSession() {
		return sessionFactory.openSession();
	}

	//���ػỰ
	public Session getCurrentSession() {
		return sessionFactory.getCurrentSession();
	}
	
	//�رչ���
	public static void close() {
		if (sessionFactory != null)
			sessionFactory.close();
		sessionFactory = null;
	}
}