<%@page import="message.Message"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>留言板展示</title>
</head>
<body>
<table border="1" cellspacing="0" width="500px" align="center">
<tr><th><b>留言板</b></th></tr>
<%
		List<Message> list = (List<Message>) application.getAttribute("allMsgs");

		if (list == null) {
			out.print("暂无留言……");
		} else {
			for (int i = 0; i < list.size(); i++) {
	%>
		<tr><td>编号：No.<%=i + 1%></td></tr>
		<tr><td>昵称：<%=list.get(i).getName()%></td></tr>
		<tr><td>标题：<%=list.get(i).getTitle()%></td></tr>
		<tr><td>留言：<%=list.get(i).getMycontent()%></td></tr>
		<tr><td></td></tr>
		<tr><td></td></tr>
	</ul>
	<%
		}
		}
	%>
</table>
	
</body>
</html>