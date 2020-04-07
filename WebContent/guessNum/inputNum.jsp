<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel=""stylesheet" type="text/css" href="css/mystyle.css" charset="utf-8">
</head>
<body>
	<%
		int num = (int) (Math.random() * 100) + 1;
		session.setAttribute("number", num);
		session.setAttribute("count", 0);
	%>
	快来猜数字吧！范围为（0-100）
	<br>
	<form action="judge.jsp">
		<input type="text" name="num" autofocus />
	</form>
</body>
</html>