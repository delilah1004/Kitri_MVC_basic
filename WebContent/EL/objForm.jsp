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
	<form action="objFormView.jsp" method="post">
		<label>이름</label> 
		<input type="text" name="name"> 
		<br/><br/> 
		
		<label>아이디</label> 
		<input type="text" name="id"> 
		<br/><br/> 
		
		<label>비밀번호</label> 
		<input type="text" name="pass"> 
		<br/><br/> 
		
		<input type="submit" value="전송"> 
		<input type="reset"	value="취소">
	
	</form>
	
	<%	// 자바 코드 작성 가능하지만 요즘 거의 안쓴다.
		java.util.Date date = new java.util.Date();
	
		// pageScope : 현재 페이지에서만 데이터 공유
		pageContext.setAttribute("pName", "apple");
		
		// requestScope : 요청시 데이터 공유 (form, include, forward)
		request.setAttribute("rName", "banana");
		
		// sessiocScope : 하나의 웹어플리케이션에서 데이터 공유 (Cookies, Session) -> 웹 브라우저 1개
		session.setAttribute("sName", "melon");
		
		// applicationScope : 하나의 웹어플리케이션에서 데이터 공유 -> 웹 서버가 꺼질 때까지 공유
		application.setAttribute("aName", "strawberry");
	%>
	
</body>
</html>