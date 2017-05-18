package com.test;

import static org.junit.Assert.*;


import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.mail.Mail;

public class TestMail {

	@Test
	public void test() {
		
		ApplicationContext context = new ClassPathXmlApplicationContext("applicationContext.xml");
		Mail mail = (Mail) context.getBean("mail");
		String from = "1160135186@qq.com";
		String to = "qq1160135172@163.com";
		System.out.println("1111");
		mail.sendMail(from, to, "hi", "luojinghang");
		System.out.println("success");
	}

}
