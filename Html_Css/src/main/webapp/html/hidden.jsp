<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%
	String fname = request.getParameter("fname");
	String custId = request.getParameter("custId");
	
	out.print("fname = " +fname +" : " +"custId = " +custId);
%>

<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>