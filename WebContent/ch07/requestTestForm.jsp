<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form method="post" action="requestTestPro.jsp">
		num : <input type="text" name="num"><br>
		name : <input type="text" name="name"><br>
		grade : 
		<input type="checkbox" name="grade" value="1">grade 1 &nbsp;
		<input type="checkbox" name="grade" value="2">grade 2 &nbsp;
		<input type="checkbox" name="grade" value="3">grade 3 &nbsp;
		<input type="checkbox" name="grade" value="4">grade 4 &nbsp;
		<br>
		subject :
		<select name="subject">
			<option value="JAVA">JAVA</option>
			<option value="JSP">JSP</option>
			<option value="XML">XML</option>
		</select>
		<br>
		<input type="submit" value="submit7">
	</form>
</body>
</html>