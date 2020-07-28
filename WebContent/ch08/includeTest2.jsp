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
	
		String name = "blue4313";
		String pageName = "includedTest2.jsp";
	%>
	before
	<hr>
	<jsp:include page="<%=pageName %>" flush="false">
		<jsp:param value="<%=name %>" name="name"/>
		<jsp:param value="<%=pageName %>" name="pageName"/>
	</jsp:include>
	<hr>
	after
</body>
</html>