<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 폼</title>
<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css" rel="stylesheet">
<!-- Optional theme -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap-theme.min.css">
<script src="https://code.jquery.com/jquery-2.2.4.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
</head>
<body>
	<div class="container">
		<h2 class="text-center">로그인 폼</h2>
		<div>
			<form method="post" action="cookieLoginPro.jsp"  >
				<table  class="table table-bordered table table-hover">
					<tr>
						<td>아이디 :</td>
						<td><input type="text" name="id" maxlength="12"></td>
					</tr>
					<tr>
						<td>패스워드 :</td>
						<td><input type="password" name="passwd" maxlength="12"></td>
					</tr>
					<tr>
					<td colspan="2"  class="text-center">
						<input type="submit" value="로그인">
						<button type="button" onclick="location.href='insertMemberForm.jsp'">회원가입</button>
					</td>
					</tr>
					
				</table>
			</form>
		</div>
	</div>
</body>
</html>