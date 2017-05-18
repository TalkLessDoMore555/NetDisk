package com.vo;

import java.sql.Date;

import org.springframework.stereotype.Component;
@Component("user")
public class User {
   private int uid;
   private String username;
   private String password;
   private String sex;
   private String email;
   private String phone;
   private Date last_login_date;
public int getUid() {
	return uid;
}
public void setUid(int uid) {
	this.uid = uid;
}
public String getUsername() {
	return username;
}
public void setUsername(String username) {
	this.username = username;
}
public String getPassword() {
	return password;
}
public void setPassword(String password) {
	this.password = password;
}
public String getSex() {
	return sex;
}
public void setSex(String sex) {
	this.sex = sex;
}
public String getEmail() {
	return email;
}
public void setEmail(String email) {
	this.email = email;
}
public String getPhone() {
	return phone;
}
public void setPhone(String phone) {
	this.phone = phone;
}
public Date getLast_login_date() {
	return last_login_date;
}
public void setLast_login_date(Date last_login_date) {
	this.last_login_date = last_login_date;
}
   
}
