<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>삭제하기</title>
</head>
<body>
	<%
		String id = request.getParameter("id");
	
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		String rId = "";
		String rName = "";
		
		try {
			
			String jdbcUrl = "jdbc:mysql://localhost:3306/jspbeginner";
			String dbId = "jspid";
			String dbPass = "jsppass";
			
			Class.forName("com.mysql.jdbc.Driver");
			
			conn = DriverManager.getConnection(jdbcUrl, dbId, dbPass);
			
			
			String sql = "select id, name from member where id=?";
			
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			
			if (rs.next()) {
				rId = rs.getString("id");
				rName = rs.getString("name");
			}
			
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			
			if (rs != null) try {rs.close();} catch(SQLException sqle) {}
			if (pstmt != null) try {pstmt.close();} catch (SQLException sqle) {}
			if (conn != null) try {conn.close();} catch (SQLException sqle) {}
		}
	%>
	<h1>삭제하기</h1>
	<form method="post" action="deleteTestPro.jsp">
		id : <input type="text" name="id" value="<%=rId %>" maxlength="12" readonly="readonly"><br>
		passwd : <input type="password" name="passwd" maxlength="12"><br>
		name : <input type="text" name="name" value="<%=rName %>" maxlength="10" readonly="readonly"><br>
		<input type="submit" value="submit11">
	</form>
	<br>
	<a href="selectTest.jsp">목록보기</a>
</body>
</html>