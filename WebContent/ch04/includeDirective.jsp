<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		Date today = new Date();
		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
		String strDate = format.format(today);
		
		String name = "kijun";
	%>
	
	<%@ include file="top.jsp" %>
	
	<%=strDate %>
	<br>
	<%=date.toLocaleString() %>
	
	<c:set var="aInt" value="123" />
	
	<%@ include file="bottom.jsp" %>
</body>
</html>