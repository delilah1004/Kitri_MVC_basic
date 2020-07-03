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

	내부자원 가져오기 : <c:import url="core01.jsp"/>
	
	외부자원 가져오기(파싱에서 프록시 작업시) : <c:import url="https://www.google.com"/>
	<!-- 스타일시트는 못 가져온다. -->
	
	자원추가시 값을 전달해주고 원하는 데이터를 가져온다.
	
	<c:import url="https://www.google.com">
		<c:param name="msg" value="hi"/>
	</c:import>
	
</body>
</html>