<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'catalog.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
  
  <style type="text/css">
    a{
        font-size: 20px; 
    }
  </style>
  </head>
  
  <body>
  <div style="height: 90%;width: 100%">
    <div style="height: 15%;width: 100px;text-align: center;"><a href="login.jsp" target="show">全部文件</a></div>
    <div style="height: 15%;width: 100px;text-align: center;"><a href="">文档</a></div>
    <div style="height: 15%;width: 100px;text-align: center;"><a href="">图片</a></div>
    <div style="height: 15%;width: 100px;text-align: center;"><a href="">视频</a></div>
    <div style="height: 15%;width: 100px;text-align: center;"><a href="">种子</a></div>
   </div>
  </body>
</html>
