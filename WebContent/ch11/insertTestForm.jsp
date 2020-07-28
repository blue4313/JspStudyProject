<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>등록하기</title>
</head>
<body>
	<h1>등록하기</h1>
	<form method="post" action="insertTestPro.jsp">
		id : <input type="text" name="id" maxlength="12"><br>
		passwd :  <input type="password" name="passwd" maxlength="12"><br>
		name : <input type="text" name="name" maxlength="10"><br>
		<input type="submit" value="submit11">
	</form>
	<br>
	<a href="selectTest.jsp">목록보기</a>
</body>
</html>