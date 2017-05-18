package com.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

import com.dao.UserDao;
@Component("userService")
public class UserService {
	@Autowired(required=false)
    private UserDao userDao;
	public UserDao getUserDao() {
		return userDao;
	}

	public void setUserDao(UserDao userDao) {
		this.userDao = userDao;
	}

	public UserService() {
		// TODO Auto-generated constructor stub
	}
	
	public boolean findUser(String username ,String password){
		return userDao.findUser(username, password);
		
	}


}
