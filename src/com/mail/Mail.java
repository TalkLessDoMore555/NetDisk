package com.mail;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.MailSender;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.stereotype.Component;
@Component("mail")
public class Mail {
	@Autowired(required=false)
    private MailSender sender;
	public Mail() {
		// TODO Auto-generated constructor stub
	}
	public MailSender getSender() {
		return sender;
	}
	public void setSender(MailSender sender) {
		this.sender = sender;
	}
    
	public void sendMail(String from, String to, String subject, String msg) {
		SimpleMailMessage message = new SimpleMailMessage();
		message.setFrom(from);
		message.setTo(to);
		message.setSubject(subject);
		message.setText(msg);
		sender.send(message);
	}
}
