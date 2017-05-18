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
    
    <script type="text/javascript" src="jquery/jquery.js"></script>
    <script type="text/javascript">
    
    $(document).ready(function(){
    
        $("#upload").click(function(){
            top.location.href = "upload.jsp";
            
        });
        $("#upload").mouseenter(function(){
            $(this).css("cursor","pointer");
        });
    });
        
    </script>
  </head>
  
  <body>
   <div style="height: 100%; ">
       <label style="line-height: 70px;font-size: 30px; margin-right: 30px;" >百度云网盘</label>
       <lable style="line-height: 70px;font-size: 30px;margin-right: 30px;">网盘</lable>
       <lable style="line-height: 70px;font-size: 30px;margin-right: 30px;" id="upload" >上传</lable>
       <input style="line-height: 30px;font-size: 30px;margin-right: 30px;margin-left: 30px;" type="text"/>
       <lable style="line-height: 70px;font-size: 30px;margin-right: 30px;">搜索</lable>
   </div>
  </body>
</html>
