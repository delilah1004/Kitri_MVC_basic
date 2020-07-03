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

	<h3>반복문 - for</h3>
	<c:forEach var="i" begin="1" end="10" step="1">
		<h3>${i}</h3>
	</c:forEach>
	<br/><br/>
	
	<c:forEach var="i" begin="1" end="10">
		<c:if test="${i%2==0}">
			<c:out value="${i}"/>
		</c:if>
	</c:forEach>
	<br/><br/>
	
	<c:forEach var="j" begin="1" end="100">
		<c:set var="tot" value="${tot+j}"/>
	</c:forEach>
	<h3>1~100까지의 합 : ${tot}</h3>
	
	<%-- 주석 --%>
	<%
		// 자바 명령어 가능 - 요즘은 거의 안씀
		// <%@ page : page 지시어, <%@ taglib : tag 지시어
		int su = 77;
	
		java.util.ArrayList<String> arrList = new java.util.ArrayList<String>();
		arrList.add("사과");
		arrList.add("바나나");
		arrList.add("딸기");
	%>
	
	<%= su %>
	
	<c:set var="arrList" value="<%=arrList%>"/>
	<c:forEach var="fruit" items="${arrList}">
		<c:out value="${fruit}"/>
	</c:forEach>
	
	
	
	
	
	
	
	
</body>
</html>