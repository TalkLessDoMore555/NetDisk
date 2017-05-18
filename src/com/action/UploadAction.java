package com.action;

import java.io.File;
import org.apache.commons.io.FileUtils;
import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;
import com.sun.xml.internal.ws.wsdl.ActionBasedOperationSignature;

public class UploadAction extends ActionSupport{
	private File myFile;
    private String myFileContentType;
	private String myFileFileName;
    public File getMyFile() {
		return myFile;
	}
	public void setMyFile(File myFile) {
		this.myFile = myFile;
	}
	public String getMyFileContentType() {
		return myFileContentType;
	}
	public void setMyFileContentType(String myFileContentType) {
		this.myFileContentType = myFileContentType;
	}
	public String getMyFileFileName() {
		return myFileFileName;
	}
	public void setMyFileFileName(String myFileFileName) {
		this.myFileFileName = myFileFileName;
	}
	public String getDestPath() {
		return destPath;
	}
	public void setDestPath(String destPath) {
		this.destPath = destPath;
	}
	private String destPath;
	public UploadAction() {
		// TODO Auto-generated constructor stub
	}
    @Override
    public String execute() throws Exception {
    	
    	// TODO Auto-generated method stub
    	String savePath = null;
    	String type = myFileContentType;
    	String basePath = ServletActionContext.getServletContext().getRealPath("");
    	File projectPath = new File(basePath);
    	File tomcatFile = projectPath.getParentFile().getParentFile();
    	switch(type) {
    	case "text/plain":
    		savePath = tomcatFile.getAbsolutePath()+"/MyFirstProjectFile/ÎÄµµ/";
    		break;
    	default: ;
    	}
    	File saveFile = new File(savePath+myFileFileName);
    	FileUtils.copyFile(myFile, saveFile);
    	return "success";
    }
}
