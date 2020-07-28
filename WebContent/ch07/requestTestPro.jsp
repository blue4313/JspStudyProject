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
	
		String num = request.getParameter("num");
		String name = request.getParameter("name");
		String[] grade = request.getParameterValues("grade");
		String subject = request.getParameter("subject");	
		
		String grades = "";
		
		for(String s : grade) {
			
			grades += s + ", ";
		}
		
	%>
	
	num : <%=num %> <br>
	name : <%=name %> <br>
	grade : <%=grades %> <br>
	subject : <%=subject %> <br>
	
	<a href="requestTestForm.jsp">back</a>
</body>
</html>