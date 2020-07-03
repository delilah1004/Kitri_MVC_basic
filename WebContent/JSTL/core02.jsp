<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>

<!-- 
 @ 날짜 : 2020.06.10
 @ author : 이다은
 -->

<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h3>제어문 - if</h3>
	<c:set var="fruit" value="apple" />

	<c:if test="${fruit=='apple'}">
		<h3>${fruit}</h3>
	</c:if>

	<c:if test="${fruit!='apple'}">
		<h3>${fruit}는 apple이 아님</h3>
	</c:if>

	<c:if test="${fruit=='apple'}">
		<c:out value="${fruit}" />
	</c:if>

	<c:out value="하하하" />

	${"하하하"}
	<br/><br/>
	
	<h3>제어문 - choose/when</h3>
	<c:choose>
		<c:when test= "${fruit='apple'}">
			${fruit}
		</c:when>
	
		<c:when test= "${fruit='banana'}">
			<c:out value="${fruit}"/>
		</c:when>
		
		<c:when test= "${fruit='orange'}">
			<c:out value="${fruit}"/>
		</c:when>
		
		<c:otherwise>기타등등</c:otherwise>
	
	</c:choose>
	
</body>
</html>