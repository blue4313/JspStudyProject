<%@page import="java.util.Map.Entry"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.HashMap"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.Enumeration" %>
<%@page import="java.util.Map"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		String names[] = {
				"프로토콜이름"
				, "서버이름"
				, "Method방식"
				, "컨텍스트경로"
				, "URI"
				, "접속한클라이언트의IP"
			};
	
		String[] values = new String[] {
				request.getProtocol() 
				, request.getServerName()
				, request.getMethod()
				, request.getContextPath()
				, request.getRequestURI()
				, request.getRemoteAddr()
			};
		
		
		for (int i = 0; i < names.length; i++) {
			out.println(names[i] + " : " + values[i] + "<br>");
		}
		
		out.println("<hr>");
		
		Enumeration en = request.getHeaderNames();
		
		String headerName = "";
		String headerValue = "";
		
		while(en.hasMoreElements()) {
			headerName = (String)en.nextElement();
			headerValue = request.getHeader(headerName);
			
			out.println(headerName + " : " + headerValue + "<br>");
		}
		
		out.println("<hr>");
		
		Map<String, Object> headers = new HashMap<String, Object>();
		
		headers.put("protocol", request.getProtocol());
		headers.put("servername", request.getServerName());
		headers.put("method", request.getMethod());
		headers.put("contextpath", request.getContextPath());
		headers.put("requesturi", request.getRequestURI());
		headers.put("remoteaddr", request.getRemoteAddr());
		
		// 방법1
        Iterator<String> keys = headers.keySet().iterator();
        while( keys.hasNext() ){
            String key = keys.next();
            out.println(key + " : " + headers.get(key) + "<br>");
        }
        
        out.println("<hr>");
         
        // 방법2
        for( Map.Entry<String, Object> elem : headers.entrySet() ){            
            out.println(elem.getKey() + " : " + elem.getValue() + "<br>");
        }
        
        out.println("<hr>");
         
        // 방법3
        for( String key : headers.keySet() ){
            out.println(key + " : " + headers.get(key) + "<br>");
        }
        
        out.println("<hr>");
        
        // 방법4
        for(Entry<String, Object> entry : headers.entrySet()) {
        	out.println(entry.getKey() + " : " + entry.getValue() + "<br>");
        }
	%>
</body>
</html>