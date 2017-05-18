package com.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;

import com.vo.User;



@Component(value="userDao")
public class UserDao {
    
	public UserDao() {
		// TODO Auto-generated constructor stub
	}
    public boolean findUser(String username,String password) {
    	ApplicationContext context = new ClassPathXmlApplicationContext("applicationContext.xml");
        SessionFactory sf = (SessionFactory) context.getBean("mySessionFactory");
    	Session session = sf.openSession();
        String hql = "from User u where u.username=? and u.password=? ";
        Query query = session.createQuery(hql);
        query.setParameter(0, username);
        query.setParameter(1, password);
        List<User> list = query.list();
        if(list.get(0)==null) {
        	return false;
        }
        else return  true;
    }

}
