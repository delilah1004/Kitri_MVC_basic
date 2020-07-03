<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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

	<form action="fmtView.jsp" method="post">
		<label>메시지</label>
		<input type="text" name="msg"/>
		<br/>
		
		<input type="checkbox" name="fruit" value="사과"/>
		<label>사과</label>
		
		<input type="checkbox" name="fruit" value="딸기"/>
		<label>딸기</label>
		
		<input type="checkbox" name="fruit" value="바나나"/>
		<label>바나나</label>
		
		<input type="submit" value="전송"/>
		<input type="reset" value="취소"/>
	</form>
	
</body>
</html>