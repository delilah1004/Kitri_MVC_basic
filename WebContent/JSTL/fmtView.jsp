<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
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
	
	<fmt:requestEncoding value="utf-8"/>
	
	<h3>${param.msg}</h3>
	
	<c:forEach var="fruit" items="${paramValues.fruit}">
		${fruit}
	</c:forEach>
	<br/><br/>
	
	
	<h3>숫자를 문자열 변환</h3>
	number:
		<fmt:formatNumber value="12345.678" type="number"/>
	<br/>
		
	currency:
		<fmt:formatNumber value="12345.678" type="currency"/>
		<fmt:formatNumber value="12345.678" type="currency" currencySymbol="$"/>
	<br/>
		
	percent:
		<fmt:formatNumber value="12345.678" type="percent"/>
	<br/>
		
	pattern:
		<fmt:formatNumber value="12345.678" pattern=".0000"/> <%-- #, 0 --%>
	<br/><br/>	
	
	
	<h3>문자열을 숫자 변환</h3>
	<c:set var="str" value="${'1000'}"/>
	<fmt:parseNumber var="pNum" value="${str}"/>
	
	<fmt:parseNumber var="isu" value="55.7" integerOnly="true"/>
	
	${isu}
	
	
	<h3>날짜를 문자열 변환</h3>
	<jsp:useBean id="date" class="java.util.Date"/>
	<c:set var="today" value="${date}"/>
	
	<b>날짜</b><br/>
		<fmt:formatDate value="${date}" type="date"/>
	<br/><br/>
	
	<b>시간</b><br/>
		<fmt:formatDate value="${date}" type="time"/>
	<br/><br/>
	
	<b>날짜시간</b><br/>
		<fmt:formatDate value="${date}" type="both"/><br/>
		<fmt:formatDate value="${date}" type="both" dateStyle="short" timeStyle="short"/><br/>
		<fmt:formatDate value="${date}" type="both" dateStyle="long" timeStyle="long"/>
	<br/><br/>
	
	<b>패턴</b><br/>
		<fmt:formatDate value="${date}" pattern="yyyy-MM-dd HH:mm:ss"/>
	<br/>
	
	<h3>문자열을 날짜 변환</h3>
	
</body>
</html>