<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
	<!-- EL 내장객체 HTTP 요청 파라미터 paramValue -->
	<h3>이름 : ${param.name}</h3>
	<h3>아이디 : ${param.id}</h3>
	<h3>비밀번호 : ${param.pass}</h3>
	<br/><br/>
	
	<!-- EL 내장객체 - JSP 저장객체 (Scope) 읽기 -->
	<ul>
		<li>${pageScope.pName}</li>	<%-- 결과 안나옴 --%>
		<li>${requestScope.rName}</li>	<%-- 결과 안나옴 --%>
		<li>${sessionScope.sName}</li>
		<li>${applicationScope.aName}</li>
	</ul>
</body>
</html>