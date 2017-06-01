<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
  <%
  ArrayList<String> list = new ArrayList<String>();
  list = (ArrayList<String>)request.getSession().getAttribute("pictures");
  System.out.println(list.size());
  for(int i=0;i<list.size();++i) {
    if((i+1)%5==0){
    	out.print("<br>");
    } 
    String source = list.get(i);
   %>
   <img alt="123" src="<%=source %>">
   <% 
  }
  %>
  
</body>
</html>