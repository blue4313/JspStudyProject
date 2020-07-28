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
	%>
	
	<jsp:useBean id="mysqlDB" class="ch11.bean.MysqlDB">
		<jsp:setProperty property="*" name="mysqlDB"/>
	</jsp:useBean>
	
	<h1>자바빈을 이용한 DB Insert</h1>
	<%
		mysqlDB.insertMember();
	
		response.sendRedirect("selectBeanTest.jsp");
		
	%>
</body>
</html>