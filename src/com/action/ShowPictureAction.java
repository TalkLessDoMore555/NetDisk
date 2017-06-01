package com.action;

import java.io.File;
import java.util.ArrayList;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;

public class ShowPictureAction extends ActionSupport {

	public ShowPictureAction() {
		// TODO Auto-generated constructor stub
	}
	
	@Override
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		
		ArrayList<String> list = new ArrayList<String>();
		String path = "E:\\apache-tomcat-8.0.36\\MyFirstProjectFile\\picture";
		File file = new File(path);
		File[] files = file.listFiles();
		System.out.println(files.length);
		for(File f:files) {
			list.add(f.getAbsolutePath());
		}
		ServletActionContext.getRequest().getSession().setAttribute("pictures", list);
		return "success";
	}

}
