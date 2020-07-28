<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		Connection conn = null;
	
		try {
			
			//String jdbcUrl = "jdbc:mysql://localhost:3306/jspbeginner?serverTimezone=UTC";
			String jdbcUrl = "jdbc:mysql://localhost:3306/jspbeginner";
			String dbId = "jspid";
			String dbPass = "jsppass";
			
			//Class.forName("com.mysql.jdbc.Driver");
			Class.forName("com.mysql.cj.jdbc.Driver");
			//Class.forName("com.mysql.jdbc.Driver").newInstance();
			//Class.forName("com.mysql.cj.jdbc.Driver").newInstance();
			
			conn = DriverManager.getConnection(jdbcUrl, dbId, dbPass);
			
			out.println(conn);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	
		
	%>
</body>
</html>