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
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		String remember = request.getParameter("remember");
		if ("admin".equals(username) && "123".equals(password)) {
			
			if(remember!=null){
				//创建cookie对象
				Cookie USERNAME = new Cookie("USERNAME",username);
				Cookie PASSWORD=new Cookie("PASSWORD",password);
				//设置有效期
				USERNAME.setMaxAge(60);//一分钟
				PASSWORD.setMaxAge(60);//一分钟
				//添加cookie
				response.addCookie(USERNAME);
				response.addCookie(PASSWORD);
				
			}
			session.setAttribute("UserName", username);
			response.sendRedirect("success.jsp");
		} else {
			out.print("登录失败");
		}
	%>
	<a href="login.jsp">返回重新登陆</a>
</body>
</html>