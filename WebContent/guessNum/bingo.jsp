<%@page import="java.util.List"%>
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
		Object obj = session.getAttribute("count");
		int num = Integer.parseInt(obj.toString());
	%>
	恭喜你猜中了！一共用了<%=num%>次机会
	<a href="again.jsp">重新猜数字</a>
	<br>
	<%
		//获取所猜数字集合
		List<Integer> list = (List<Integer>) session.getAttribute("arr");
		out.print("猜的数字分别是:");
		for (int i = 0; i < list.size(); i++) {
			out.print(list.get(i) + " ");
		}
	%>
</body>
</html>