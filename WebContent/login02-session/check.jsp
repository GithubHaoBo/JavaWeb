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
			session.setAttribute("UserName", name);
			response.sendRedirect("success.jsp");
		} else {
			out.print("登录失败");
		}
	%>
	<a href="login.jsp">返回重新登陆</a>
</body>
</html>