package com.action;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;
import com.sun.org.apache.xml.internal.serialize.Printer;

public class SearchAction extends ActionSupport{

	public SearchAction() {
		// TODO Auto-generated constructor stub
	}
    public void search() throws Exception {
    	// TODO Auto-generated method stub
    	System.out.println("已经进来了");
    	String keyValue = ServletActionContext.getRequest().getParameter("keyValue");
    	System.out.println(keyValue);
    	HttpServletResponse response = ServletActionContext.getResponse();
    	PrintWriter out = response.getWriter();
    	out.print("hello");
    }

}
