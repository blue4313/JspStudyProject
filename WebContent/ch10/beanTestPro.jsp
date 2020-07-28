<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<% request.setCharacterEncoding("UTF-8"); %>
	
	<jsp:useBean id="testBean" class="ch10.bean.TestBean">
		<jsp:setProperty property="name" name="testBean"/>
	</jsp:useBean>
	
	<br>
	<jsp:getProperty property="name" name="testBean"/>
	
</body>
</html>