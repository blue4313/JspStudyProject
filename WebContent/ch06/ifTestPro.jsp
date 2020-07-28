<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		String strNumber = request.getParameter("number");
		int number = Integer.parseInt(strNumber);
		
		if (number <= 10) {
	%>
	
	<%=number %>
	
	<%		
		}
	%>
	<br>
	<a href="ifTestForm.jsp">back</a>
</body>
</html>