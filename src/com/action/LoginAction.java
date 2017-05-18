package com.action;

import org.springframework.beans.factory.annotation.Autowired;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import com.service.UserService;
import com.vo.User;



public class LoginAction extends ActionSupport implements ModelDriven<User>{
	@Autowired(required=false)
	private UserService userService;
	@Autowired(required=false)
    private User user;
    
	public UserService getUserService() {
		return userService;
	}
	public void setUserService(UserService userService) {
		this.userService = userService;
	}
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	public LoginAction() {
		// TODO Auto-generated constructor stub
	}
	@Override
	public String execute() throws Exception {
		// TODO Auto-generated method stub
	    System.out.println(user.getUsername());
		boolean b = userService.findUser(user.getUsername(), user.getPassword());
		if(b) {
			return "success";
		}else return "input";
	}
	@Override
	public User getModel() {
		// TODO Auto-generated method stub
		return this.user;
	}

}
