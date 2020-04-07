<%@page import="java.util.ArrayList"%>
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
		//获取所猜数字集合
		List<Integer> list = (List<Integer>) session.getAttribute("arr");
	
		//获取输入的值
		int inputNum = Integer.parseInt(request.getParameter("num"));

		//获取实际值
		int realNum = Integer.parseInt(session.getAttribute("number").toString());

		//获取猜数字的次数
		int count = Integer.parseInt(session.getAttribute("count").toString());
		//所猜次数+1
		session.setAttribute("count", count + 1);
		if(list==null){
			list = new ArrayList<>();
			list.add(inputNum);
		}else{
			list.add(inputNum);
		}
		//向集合添加元素
		session.setAttribute("arr", list);
		
		if (inputNum > realNum) {
			response.sendRedirect("large.jsp");
		} else if (inputNum < realNum) {
			response.sendRedirect("small.jsp");
		} else {
			response.sendRedirect("bingo.jsp");
		}
	%>
</body>
</html>