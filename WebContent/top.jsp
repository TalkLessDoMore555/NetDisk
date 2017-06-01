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
            top.location.href = "select.jsp";
            
        });
        $("#upload").mouseenter(function(){
            $(this).css("cursor","pointer");
        });
        
        $("#search").mouseenter(function(){
        	
        	$(this).css("cursor","pointer");
        });
        
        $("#search").click(function(){
        	var keyValue = $("#keyValue").val();
        	alert(keyValue);
        	var xmlhttp;
        	if (window.XMLHttpRequest)
        	  {// code for IE7+, Firefox, Chrome, Opera, Safari
        	  xmlhttp=new XMLHttpRequest();
        	  }
        	else
        	  {// code for IE6, IE5
        	  xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
        	  }
        	xmlhttp.onreadystatechange=function()
        	  {
        	  if (xmlhttp.readyState==4 && xmlhttp.status==200)
        	    {
        	    $("#keyValue").val(xmlhttp.responseText);
        	    
        	    }
        	  }
        	var uri = "search?keyValue="+keyValue;
        	xmlhttp.open("GET",uri,true);
        	xmlhttp.send();
        });
        
    });
        
    </script>
  </head>
  
  <body>
   <div style="height: 100%; ">
       <label style="line-height: 70px;font-size: 30px; margin-right: 30px;" >百度云网盘</label>
       <lable style="line-height: 70px;font-size: 30px;margin-right: 30px;">网盘</lable>
       <lable style="line-height: 70px;font-size: 30px;margin-right: 30px;" id="upload" >上传</lable>
       <input style="line-height: 30px;font-size: 30px;margin-right: 30px;margin-left: 30px;" id="keyValue" type="text"/>
       <lable style="line-height: 70px;font-size: 30px;margin-right: 30px;" id="search">搜索</lable>
   </div>
  </body>
</html>
