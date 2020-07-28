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
		String passwd = request.getParameter("passwd");
		
		session.setAttribute("id", id);
		session.setAttribute("passwd", passwd);
	%>
	
	id 와 passwd 세션속성을 설정하였습니다.
	<br>
	
	<%=(String)session.getAttribute("id") %>
	<br>
	<%=session.getAttribute("passwd") %>
</body>
</html>