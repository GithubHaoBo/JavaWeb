<%@page import="com.sun.net.httpserver.Authenticator.Success"%>
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
		String name = request.getParameter("username");
		String password = request.getParameter("password");
		
		if ("admin".equals(name) && "123".equals(password)) {
			request.getRequestDispatcher("success.jsp").forward(request,response);
		} else {
			out.print("登录失败");
		}
	%>

</body>
</html>