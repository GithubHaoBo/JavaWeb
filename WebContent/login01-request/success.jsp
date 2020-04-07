<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		request.setCharacterEncoding("utf-8");
		String name = request.getParameter("username");
		String password = request.getParameter("password");
		String[] mess = request.getParameterValues("mess");
		out.print("用户名:"+name);
		out.print("m密码:"+password);
	%>
	

</body>
</html>