<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		String[] str = {"jsp", "java", "xml", "ajax", "json"};
	
		int i = (int)(Math.random() * 4);
		
		out.println(i);
	%>
	<br>
	<%=str[i] %>
</body>
</html>