<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel=""stylesheet" href="css/mystyle.css">
</head>
<body>
	<form action="yanzheng.jsp" method="post">

		<lable for="username">用户名：</lable>
		<input id="username" type="text" name="username" /> <br>
		<lable for="password">密 码：</lable> 
		<input id="password" type="text" name="password" /><br>
		<lable>信息来源：</lable>
		<input name="mess" type="checkbox" value="报刊"/>报刊
		<input name="mess" type="checkbox" value="网络"/>网络
		<input name="mess" type="checkbox" value="朋友"/>朋友推荐
		<input name="mess" type="checkbox" value="电视"/>电视<br>
		<input id="submit" type="submit" value="提交"/>
		<input id="reset" type="submit" value="重置"/>
	</form>

</body>
</html>