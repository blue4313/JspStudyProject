<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<h1>forwardTest2</h1>
	<%
		request.setCharacterEncoding("UTF-8");
	%>
	<jsp:forward page="forwardToTest.jsp">
		<jsp:param value="이기준" name="id"/>
		<jsp:param value="아무것도 안하기" name="hobby"/>
	</jsp:forward>
	
</body>
</html>