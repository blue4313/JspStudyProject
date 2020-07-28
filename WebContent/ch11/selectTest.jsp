<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>리스트</title>
<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css" rel="stylesheet">
<!-- Optional theme -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap-theme.min.css">
<script src="https://code.jquery.com/jquery-2.2.4.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
</head>
<body>
	<div class="container">
		<h2 class="text-center">사용자 목록</h2>
		<table class="table table-bordered table table-hover"> 
			<thead> 
				<tr> 
					<th>아이디</th> 
					<th>패스워드</th> 
					<th>이름</th>
					<th>가입일자</th>
					<th>&nbsp;</th>
					<th>&nbsp;</th>
				</tr> 
			</thead> 
			<tbody> 
				<%
					Connection conn = null;
					PreparedStatement pstmt = null;
					ResultSet rs = null;
					
					try {
						
						String jdbcUrl = "jdbc:mysql://localhost:3306/jspbeginner";
						String dbId = "jspid";
						String dbPass = "jsppass";
						
						Class.forName("com.mysql.cj.jdbc.Driver");
						conn = DriverManager.getConnection(jdbcUrl, dbId, dbPass);
						
						String sql = "select * from member order by reg_date desc";
						pstmt = conn.prepareStatement(sql);
						rs = pstmt.executeQuery();
						
						while(rs.next()) {
							String id = rs.getString("id");
							String passwd = rs.getString("passwd");
							String name = rs.getString("name");
							Timestamp register = rs.getTimestamp("reg_date");
				%>
				<tr>
					<td><%=id %></td>
					<td><%=passwd %></td>
					<td><%=name %></td>
					<td><%=register.toString() %></td>
					<td><button type="button" onclick="location.href='updateTestForm.jsp?id=<%=id%>'">수정</button></td>
					<td><button type="button" onclick="location.href='deleteTestForm.jsp?id=<%=id%>'">삭제</button></td>
				</tr>
				<%			
						}
						
						
					} catch (Exception e) {
						
					} finally {
						if (rs != null) try {rs.close();} catch(SQLException sqle){}
						if (pstmt != null) try {pstmt.close();} catch(SQLException sqle) {}
						if (conn != null) try {conn.close();} catch(SQLException sqle) {}
					}
				%>
				<tr>
					<td colspan="6">
						<a href="insertTestForm.jsp">사용자 등록</a>
					</td>
				</tr>
			</tbody> 
		</table>
	</div>
</body>
</html>