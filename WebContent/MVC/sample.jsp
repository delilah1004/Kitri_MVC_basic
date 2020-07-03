<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>url-pattern : 디렉토리 패턴 방식</h3>
	<a href="http://localhost:8181/mvcExample/com/java/mvc01/Directory.java">
		Directory
	</a><br/>
	
	<a href="http://localhost:8181/mvcExample/aa/bb/cc/ABC">
		Directory
	</a><br/>
	
	<a href="http://localhost:8181/mvcExample/xyz">
		Directory
	</a><br/>
	
	<h3>url-pattern : 확장자 패턴 방식</h3>
	
	<a href="http://localhost:8181/mvcExample/xyz.nhn">
		Directory
	</a><br/>

</body>
</html>