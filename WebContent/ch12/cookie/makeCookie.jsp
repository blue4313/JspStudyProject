<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		String cookieName = "id";
	
		Cookie cookie = new Cookie(cookieName, "haha hoho");
		cookie.setMaxAge(60*2);
		response.addCookie(cookie);
	%>
	
	<h1>쿠키가 생성되었습니다.</h1>
	<form method="post" action="useCookie.jsp">
		<input type="submit" value="submit12">
	</form>
</body>
</html>