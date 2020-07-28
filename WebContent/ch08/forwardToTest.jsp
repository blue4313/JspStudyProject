<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		String id = request.getParameter("id");
		String hobby = request.getParameter("hobby");
	%>
	
	<h1>forwardToTest</h1>
	
	<%=id %>
	<br>
	<%=hobby %>
</body>
</html>