<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
	<c:set var="jpath" value="${pageContext.request.contextPath }"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<table border=" ">
			<tr>
				<td>编号</td>
				<td>姓名</td>
				<td>性别</td>
				
				
			</tr>
			<c:forEach var="s" items="${s}">
			<tr>
				<td>${s.id }</td>
				<td>${s.username }</td>
				<td>${s.sex }</td>
				
			</tr>	
			</c:forEach>
		</table>
		
</body>
</html>