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
		//读取cookie
		Cookie[] cookies = request.getCookies();
		//定义要显示在文本框里的值
		String username = "";
		String password = "";
		if (cookies != null) {
			for (Cookie c : cookies) {
				System.out.print(c.getName()+"------->"+c.getValue()+"\n");
				if ("USERNAME".equals(c.getName())) {
					username = c.getValue();
				}
				if ("PASSWORD".equals(c.getName())) {
					password = c.getValue();
				}
			}
		}
	%>

	<form action="check.jsp" method="post">

		<lable for="username">用户名：</lable>
		<input id="username" type="text" name="username" value="<%=username %>"/> <br>
		<lable for="password">密 码：</lable>
		<input id="password" type="text" name="password" value="<%=password %>" /><br> <input
			type="checkbox" name="remember">记住密码<br> <input
			id="submit" type="submit" value="提交" /> <input id="reset"
			type="submit" value="重置" />
	</form>
</body>
</html>