<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css" rel="stylesheet">
<!-- Optional theme -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap-theme.min.css">
<script src="https://code.jquery.com/jquery-2.2.4.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
</head>
<body>
	<%
		String id;
	
		try {
			
			id = (String)session.getAttribute("id");
			
			if (id == null || id.equals("")) {
				response.sendRedirect("sessionLoginForm.jsp");
			} else {
				
	%>
	
	<div class="container">
		<h2 class="text-center">정보입력 폼</h2>
		<div>
			<table  class="table table-bordered table table-hover">
				<tr>
					<td>
						<%=id %>님이 로그인 하셨습니다.
					</td>
				</tr>
				<tr>
					<td>
						<form method="post" action="sessionLogout.jsp">
							<input type="submit" value="로그아웃">
						</form>
					</td>
				</tr>
				
			</table>
		</div>
	</div>
	<%
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	%>
</body>
</html>