<%@page import="com.jspsmart.upload.SmartUpload"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
  <%
  SmartUpload smart = new SmartUpload();
  smart.initialize(pageContext);
  String[] fileNames = smart.getFileNames();
  System.out.println("fileName"+fileNames[0]);
  smart.upload();
 // smart.save("upload/picture/"+fileNames[0]);
  %>
</body>
</html>