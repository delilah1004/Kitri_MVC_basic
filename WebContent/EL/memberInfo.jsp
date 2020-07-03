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
	<h3>EL - 2. setMethod, getMethod </h3>
	<jsp:useBean id="member" class="com.java.el.MemberInfo"/>
	
	<%-- setMethod --%>
	${member.setName("이영자")}
	${member.setId("lee1234")}
	${member.setPass("1234")}
	<br/><br/>
	
	<%-- getMethod --%>
	<h3>${member.toString()}</h3>
	<br/><br/>
	
	<h3>${member.getName()}</h3>
	<h3>${member.getId()}</h3>
	<h3>${member.getPass()}</h3>
	<br/><br/>
	
	<h3>${member.name}</h3>
	<h3>${member.id}</h3>
	<h3>${member.pass}</h3>
	<br/><br/>
</body>
</html>