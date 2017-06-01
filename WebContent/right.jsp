<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'all_file.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
    <style type="text/css">
        #filelist{
          height: 100%;
          width:  100%;
        }
        table{

          width: 100%;
        }
        tr{
          background-color: #b0e0e6;
          width: 100%;
        }
        .checkbox{
          height: 50px;
          width: 10%;
        }
        .filename{
          height: 50px;
          width: 80%;
        }
        .filedate{
          height: 50px;
          width: 10%;
        }
    </style>
  </head>
  
  <body>
    <div id="filelist">
       <table>
         <tr><td class="checkbox"><input type="checkbox"></td><td class="filename"><lable><a href="">视频</a></lable></td><td class="filedate">filedate</td></tr>
         <tr><td class="checkbox"><input type="checkbox"></td><td class="filename"><lable><a href="">音乐</a></lable></td><td class="filedate">filedate</td></tr>
         <tr><td class="checkbox"><input type="checkbox"></td><td class="filename"><lable><a href="showPicture">图片</a></lable></td><td class="filedate">filedate</td></tr>
       </table>
    </div>
  </body>
</html>
