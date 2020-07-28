<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.*, java.text.*" %>
<%-- <%@ page errorPage="error.jsp" %> --%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		Date date = new Date();
		SimpleDateFormat simpleDate = new SimpleDateFormat("yyyy-MM-dd");
		String strdate = simpleDate.format(date);
	%>
	
	- 서버 : <%=application.getServerInfo() %><br>
	- 서블릿 : <%= application.getMajorVersion() %>.<%= application.getMinorVersion() %><br>
	- JSP : <%= JspFactory.getDefaultFactory().getEngineInfo().getSpecificationVersion() %><br>
	<%=strdate %>
</body>
</html>