<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		String[] strArray = new String[] {"JAVA", "JSP", "XML", "AJAX"};
	
		for(int i = 0; i < strArray.length; i++) {
			out.println(strArray[i] + "<br>");
		}
		
		out.println("<br>");
		
		for (String m : strArray) {
			out.println(m + "<br>");
		}
	%>
</body>
</html>