<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.List"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>리스트 Bean</title>
<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css" rel="stylesheet">
<!-- Optional theme -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap-theme.min.css">
<script src="https://code.jquery.com/jquery-2.2.4.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
</head>
<body>
	
	<jsp:useBean id="mysqlDB" class="ch11.bean.MysqlDB" />
	
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
					List<Map<String, Object>> list = mysqlDB.selectMember();
				
					for(Map<String, Object> map : list) {
				%>
				<tr>
					<td><%=map.get("id") %></td>
					<td><%=map.get("passwd") %></td>
					<td><%=map.get("name") %></td>
					<td><%=map.get("reg_date") %></td>
					<td><button type="button" onclick="location.href='updateTestForm.jsp?id=<%=map.get("id")%>'">수정</button></td>
					<td><button type="button" onclick="location.href='deleteTestForm.jsp?id=<%=map.get("id")%>'">삭제</button></td>
				</tr>
				<%
					}
				%>
				<tr>
					<td colspan="6">
						<a href="insertBeanTestForm.jsp">사용자 등록</a>
					</td>
				</tr>
			</tbody> 
		</table>
	</div>
</body>
</html>