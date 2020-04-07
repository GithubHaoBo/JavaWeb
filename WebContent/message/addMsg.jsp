<%@page import="javafx.scene.control.Alert"%>
<%@page import="java.util.ArrayList"%>
<%@page import="message.Message"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>添加留言板</title>
<style type="text/css">
* {
	text-align: center;
}
</style>
</head>
<body>
	<form action="addMsg.jsp">
		<input type="text" name="name" placeholder="请输入昵称" /><br> <br>
		<input type="text" name="title" placeholder="请输入标题" /><br> <br>
		<textarea rows="10" cols="40" name="message"></textarea>
		<br> <br> <input type="submit" value="提交" />
	</form>
	<br>
	<form action="showMsg.jsp">
		<input type="submit" value="查看留言板" />
	</form>
	<b></b>
	<%
		List<Message> list = (List<Message>) application.getAttribute("allMsgs");

		String name = request.getParameter("name");
		String title = request.getParameter("title");
		String content = request.getParameter("message");

		Message msg = new Message(name, title, content);

		if (name != null && title != null && content != null) {
			if (list == null) {
				list = new ArrayList<>();
				list.add(msg);
			} else {
				list.add(msg);
			}
			application.setAttribute("allMsgs", list);
		}
	%>
</body>
</html>