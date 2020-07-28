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
		request.setCharacterEncoding("UTF-8");
	
		String id = request.getParameter("id");
		String passwd = request.getParameter("passwd");
		String name = request.getParameter("name");
		Timestamp register = new Timestamp(System.currentTimeMillis());
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		
		try {
			
			String jdbcUrl = "jdbc:mysql://localhost:3306/jspbeginner";
			String dbId = "jspid";
			String dbPass = "jsppass";
			
			Class.forName("com.mysql.cj.jdbc.Driver");
			
			conn = DriverManager.getConnection(jdbcUrl, dbId, dbPass);
			
			String sql = "insert into member values (?, ?, ?, ?)";
			
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, id);
			pstmt.setString(2, passwd);
			pstmt.setString(3, name);
			pstmt.setTimestamp(4, register);
			
			pstmt.executeUpdate();
			
			response.sendRedirect("selectTest.jsp");
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if (pstmt != null) try {pstmt.close();} catch(SQLException sqle) {}
			if (conn != null) try {conn.close();} catch(SQLException sqle) {}
		}
	%>
</body>
</html>