<%@page import="org.apache.tomcat.util.descriptor.web.LoginConfig"%>
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
	//判断session是否存值，也就是判断是否登录
	Object obj = session.getAttribute("UserName");
	if(obj==null){
		response.sendRedirect("login.jsp");
	}
		request.setCharacterEncoding("utf-8");
		out.print(obj);
	%>
	<a href="logout.jsp">退出登录</a>
</body>
</html>