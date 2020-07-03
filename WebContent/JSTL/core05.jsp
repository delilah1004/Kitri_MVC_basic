<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>

<!-- 
 @ 날짜 : 2020.06.29
 @ author : 이다은
 -->

<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h3>response.sendRedirect()를 대체하는 태그</h3>
	
	<!-- http://localhost:8181/mvcExample/JSTL/core02.jsp?su=1 -->
	
	<c:set var="su" value="${param.su}"/>
	
	<c:if test="${su==1}">
		<c:redirect url="core01.jsp"/>
	</c:if>
	
	<c:if test="${su==2}">
		<c:redirect url="core02.jsp"/>
	</c:if>
	
	
	
	
	
	
	
</body>
</html>