<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%!
		String str = "global variable";
	
		String getStr() {
			return str;
		}
	%>
	
	<%
		String str2 = "local variable";
	%>
	
	<%=str2 %>
	<br>
	<%=getStr() %>
</body>
</html>