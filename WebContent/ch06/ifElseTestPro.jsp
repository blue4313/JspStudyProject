<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		request.setCharacterEncoding("UTF-8");
	
		String name = request.getParameter("name");
		int age = Integer.parseInt(request.getParameter("age"));
		
		if (age >= 20) {
			out.println(name + " over 20");
		} else {
			out.println(name + " under 20");
		}
	%>
	<br>
	<a href="ifElseTestForm.jsp">back</a>
</body>
</html>