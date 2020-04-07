<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	request.getMethod()提交方式：<%=request.getMethod()%><br> 	
	request.getRequestURL()请求的URL地址：<%=request.getRequestURL()%><br>
	request.getRequestURI()请求的URI地址：<%=request.getRequestURI()%><br>
	request.getProtocol()协议名称：<%=request.getProtocol()%><br> 
	request.getQueryString()URL的查询部分：<%=request.getQueryString()%>("即?name=123")<br> 
	request.getServerName()服务器的名称：<%=request.getServerName()%><br>
	request.getServerPort()服务器端口号：<%=request.getServerPort()%><br> 
	request.getContextPath()获取项目名：<%=request.getContextPath()%><br> 	
	request.getServletPath()客户端请求服务器文件路径：<%=request.getServletPath()%><br>
	request.getServletContext()...........：<%=request.getServletContext()%><br>
	request.getRemoteAddr()远程客户端IP地址：<%=request.getRemoteAddr()%><br>
	request.getHeaderNames()执行getHeaderNames(输出首地址)：<%=request.getHeaderNames()%><br>

	<%
		Enumeration e = request.getHeaderNames();
		out.print("执行getHeaderNames(输出枚举)：");
	%>
	<br>
	<%
		while (e.hasMoreElements()) {
			String str = (String) e.nextElement();
			out.print(str);
	%>
	<br>
	<%
		}
	%>
</body>
</html>