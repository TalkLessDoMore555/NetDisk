<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'index.jsp' starting page</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
    <style type="text/css">
      #page{
        height: 100%;
        border: solid 1px;
        background-image: url('picture/bg1.jpg');
        
      }
      #formdiv{
        margin-top: 10%;
        background-color: white;
        height: 300px;
        width: 24%
      }
      #username{
        width: 100%;
      }
      #password{
        margin-top:30px;
        width: 100%;
      } 
      #submit{
        margin-top: 30px;
        text-align: center;
        background-color: 3f89ec ;
        width: 100%;
      }
      #lable{
        padding-top:20px;
        margin-bottom: 30px;
        font-size: 20px;
        color: green;
      }
    </style>
  </head>
  
  <body>
    <div  id="page" >
      <center>
        <div  id="formdiv">
            <div id="lable">欢迎登陆</div>
            <s:form action="login" method="post">
                <s:textfield id="username" name="username" placeholder="手机/邮箱/账户名"></s:textfield>  
                <s:password id="password" name="password" placeholder="密码"></s:password>  
                <s:submit id="submit" value="登录"></s:submit>                              
            </s:form>
        </div>
      </center>
    </div>
  </body>
</html>
