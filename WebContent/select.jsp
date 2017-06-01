<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'upload.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
   <style type="text/css">
      #bg{ 
        height: 100%;
        background-color: white;
      }
      #content{
        margin-top : 160px;
        height: 300px;
        width: 200px;
      }
      #img{
        width: 160px;
        
      }
      #file{
        margin-top: 30px;
        width: 140px;
      }
      #upload{
        margin-top: 30px;
        width: 140px;
        background-color: #06c;
      }
   </style>
  </head>
  
  <body>
    <div id="bg">
      <center>
        <div id="content">
        <form action="upload.jsp" method="post"  enctype="multipart/form-data">
           <img src="picture/upload.jpg" id="img">
           <input type="file" id="file" value="name" name="myFile">
           <input id="upload" type="submit" value="上传">
        </form>
        </div>
      </center>
       
    </div>
  </body>
</html>
