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
		String local = request.getParameter("local");
		String tel = request.getParameter("tel");
		
		String localNum = "";
		
		if (local.equals("서울")) {
			localNum = "02";
			out.println(name + " - " + localNum + " - " + tel);
		} else if (local.equals("경기")) {
			localNum = "031";
			out.println(name + " - " + localNum + " - " + tel);
		} else if (local.equals("강원")) {
			localNum = "033";
			out.println(name + " - " + localNum + " - " + tel);
		}
	%>
	<br>
	<a href="ifMultiTestForm.jsp">back</a>
</body>
</html>