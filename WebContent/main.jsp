<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'show.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">

    <style type="text/css">
      #whole{
        background-color: #06c;
      }
      #left{
        border: solid 1px;
        background-color: #4e97ff;
      }
      #right{
      
        border: solid 1px;
        background-color: white;
      }
    </style>
  </head>
    <frameset rows="80,*" id="whole">
        <frame src="top.jsp" style="background-color: #4e97ff" id="top"/>
        <frameset cols="10%,80%" >
          <frame id="left" src="left.jsp"/>
          <frame id="right" name="show" src="right.jsp"/>
        </frameset>
    </frameset>
 
 
  <body>
  
  </body>
</html>
