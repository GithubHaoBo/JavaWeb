<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
		<link rel="stylesheet" type="text/css" href="css/mystyle.css"/>
</head>
<body>

	返回session创建时的唯一ID号:
	<%=session.getId()%>
	<br> 判断是否是一个新的用户:
	<%=session.isNew()%>
	<br>
	<%=session.getCreationTime()%>
	<br>
	<%=session.getLastAccessedTime()%>
	<br>
	<label for="name">用户名：</label>
	<input type="text" id="name">
</body>
</html>