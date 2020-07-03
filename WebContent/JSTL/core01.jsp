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
	<%-- JSTL (JSP Standard Tag Library) : Java를 태그로 만들어 놓았음
		 CORE, XML, FMT, SQL, Function
	 --%>

	<h3>변수 선언</h3>
	<c:set var="su" value="10" />
	<c:set var="imsi" value="${20}" />

	<h3>${su}/ ${imsi}</h3>
	<br/><br/>

	<c:set var="msg" value="${'Hi'}" scope="page" />	<!-- page(기본값), request, session, application -->
	<c:set var="age" value="23" />
	
	<div>메시지 : ${msg}</div>
	<br/>
	<div>나이 : ${age}</div>
	<br/>
	
	<jsp:useBean id="member" class="com.java.el.MemberInfo"/>	
	<c:set target = "${member}" property="name" value="홍길동"/>	<!-- value="${param.name} -->
	<c:set target = "${member}" property="id" value="abc123"/>
	<c:set target = "${member}" property="pass" value="1234"/>
	
	<h3>${member.name}</h3>
	<h3>${member.id}</h3>
	<h3>${member.pass}</h3>
	<br/>
	
	<c:set var="id" value="${member.id}" scope="session"/>
	<h3>${sessionScope.id}</h3>
	<br/>
	
	<h3>변수제거</h3>
	<c:remove var="age"/>
	<c:remove var="id" scope="session"/>
	<div>${age}, ${id}</div>
	
</body>
</html>