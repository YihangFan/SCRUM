package team.javaweb.service;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;
import org.hibernate.Session;
import org.hibernate.Transaction;

import com.opensymphony.xwork2.ActionContext;

import team.javaweb.dao.Hibernate;

public class EditInfo {

		//创建会话
		Session session = Hibernate.getInstance().openSession();
		Transaction tx = session.beginTransaction();

		//添加用户信息方法
		public void addInfo(String username,String name,String sex,String school,String major,String Id,String phone,String birthplace){
			String sql = "update user set Name='"+name+"',Sex='"+sex+"',School='"+school+"',Major='"+major+"',ID='"+Id+"',Phone='"
		+phone+"',Birthplace='"+birthplace+"' where username = '"+username+"' or LoginName='"+username+"'";
			session.createSQLQuery(sql).executeUpdate();
			tx.commit();
			ActionContext.getContext().put("EditInfoMessage","修改成功!");
		}
		
		//添加登陆信息方法
		public String editInfo(String username,String loginname,String password){
			String check = "select * from user where LoginName = '"+loginname+"'";
			List list = session.createSQLQuery(check).list();
			
			if(list.isEmpty()){
				String sql = "update user set LoginName='"+loginname+"',password='"+password+"' where username='"+username+"' or LoginName='"+username+"'";
				session.createSQLQuery(sql).executeUpdate();
				tx.commit();
			}else{
				ActionContext.getContext().put("EditLoginMessage","用户名已存在!");
				return "wrong";
			}
			return "yes";
		}
		
		//查询用户信息
		public void queryInfo(){
			
			HttpSession ses = ServletActionContext.getRequest().getSession();

			String sqlName = "select Name from user where username='"+ses.getAttribute("User")+"' or LoginName='"+ses.getAttribute("User")+"'";
			List list1 = session.createSQLQuery(sqlName).list();
			String Name = list1.toString().substring(1, list1.toString().indexOf("]"));
			ses.setAttribute("Name", Name);
			
			String sqlSex = "select Sex from user where username='"+ses.getAttribute("User")+"' or LoginName='"+ses.getAttribute("User")+"'";
			List list2 = session.createSQLQuery(sqlSex).list();
			String Sex = list2.toString().substring(1, list2.toString().indexOf("]"));
			ses.setAttribute("Sex", Sex);
			
			String sqlSchool = "select School from user where username='"+ses.getAttribute("User")+"' or LoginName='"+ses.getAttribute("User")+"'";
			List list3 = session.createSQLQuery(sqlSchool).list();
			String School = list3.toString().substring(1, list3.toString().indexOf("]"));
			ses.setAttribute("School", School);
			
			String sqlMajor = "select Major from user where username='"+ses.getAttribute("User")+"' or LoginName='"+ses.getAttribute("User")+"'";
			List list4 = session.createSQLQuery(sqlMajor).list();
			String Major = list4.toString().substring(1, list4.toString().indexOf("]"));
			ses.setAttribute("Major", Major);
			
			String sqlID = "select ID from user where username='"+ses.getAttribute("User")+"' or LoginName='"+ses.getAttribute("User")+"'";
			List list5 = session.createSQLQuery(sqlID).list();
			String ID = list5.toString().substring(1, list5.toString().indexOf("]"));
			ses.setAttribute("ID", ID);
			
			String sqlPhone = "select Phone from user where username='"+ses.getAttribute("User")+"' or LoginName='"+ses.getAttribute("User")+"'";
			List list6 = session.createSQLQuery(sqlPhone).list();
			String Phone = list6.toString().substring(1, list6.toString().indexOf("]"));
			ses.setAttribute("Phone", Phone);
			
			String sqlBirthplace = "select Birthplace from user where username='"+ses.getAttribute("User")+"' or LoginName='"+ses.getAttribute("User")+"'";
			List list7 = session.createSQLQuery(sqlBirthplace).list();
			String Birthplace = list7.toString().substring(1, list7.toString().indexOf("]"));
			ses.setAttribute("Birthplace", Birthplace);
		}
		
}
