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
	<div>JAVA 명령어는 JSTL, EL 사용해야 한다.</div>
	
	<!-- HTML 주석 -->
	<%-- JSP 주석 --%>
	
	<%-- 데이터, 연산자 --%>
	<h3>EL - 연산자, 데이터 사용 가능</h3>
	<ol>
		<li>수 출력 : ${10}, ${99.99}</li>
		<li>문자(문자열) 출력 : ${"apple"}, ${'apple'}</li>
		<li>연산 : ${10+20}, ${10-20}, ${4/5}, ${5%7}</li>
		<li>작다 : ${2<3}, ${2 lt 3}</li>
		<li>크다 : ${2>3}, ${2 gt 3}</li>
		<li>작거나 같다 : ${2.5<=3.7}, ${2 le 3}</li>
		<li>크거나 같다 : ${2.5>=3.7}, ${2 ge 3}</li>
		<li>논리연산자 : ${" &&, AND, ||, OR, !, NOT"}</li>
		<li>빈 문자열 : ${null}</li>
	</ol>
	
</body>
</html>