<%@page import="java.util.Map"%>
<%@page import="java.util.HashMap"%>
<%@page import="org.apache.jasper.tagplugins.jstl.core.Param"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="jstl_login.jsp">
		<input type="text" name="username"> <input type="submit"
			value="提交">
	</form>

	<c:if test="${'admin'==param.username}">
		欢迎管理员
	</c:if>
	<c:if test="${'user'==param.username}">
		欢迎用户
	</c:if>

	<c:choose>
		<c:when test="${'admin'==param.username}">
			欢迎管理员
		</c:when>
	</c:choose>


	<br>
	<c:forEach begin="1" end="5" step="2" var="i" varStatus="status">
			值：${i }<br>
			index:${status.index }<br>
			count:${status.count }<br>
			first:${status.first }<br>
			last:${status.last }<br>
	</c:forEach>


	<%
		Map<String, String> map = new HashMap<>();
		map.put("1904", "A");
		map.put("1905", "B");
		map.put("1906", "C");
		map.put("1907", "D");
		map.put("1908", "E");

		session.setAttribute("myMap", map);
	%>
	<ul>
		<c:forEach var="map" items="${myMap }" varStatus="myst">
			<li>${myst.current.key }======${myst.current.value }</li>
			<li>${map.key}++++++${map.value}</li>
			<li></li>
		</c:forEach>
	</ul>

	<c:forTokens items="hello,word,开发x班,谁谁谁" delims="," var="zifu">
		<c:out value="${zifu }"></c:out>
	</c:forTokens>

	<%--<c:redirect url="index.jsp"></c:redirect> --%>


	<c:url value="https://www.baidu.com" var="dizhi"></c:url>
	<a href="${dizhi}">点击跳转百度</a>

</body>
</html>