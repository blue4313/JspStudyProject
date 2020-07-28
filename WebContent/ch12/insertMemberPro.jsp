<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="ch12.LogonDBBean" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		request.setCharacterEncoding("UTF-8");
	%>
	
	<jsp:useBean id="member" class="ch12.LogonDataBean">
		<jsp:setProperty property="*" name="member"/>
	</jsp:useBean>
	
	<%
		member.setReg_date(new Timestamp(System.currentTimeMillis()));
	
		LogonDBBean logon = LogonDBBean.getInstance();
		
		logon.insertMember(member);
	%>
	
	<jsp:getProperty property="id" name="member"/>님 회원가입을 축하합니다.
	
</body>
</html>