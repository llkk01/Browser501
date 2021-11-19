<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%
	request.setCharacterEncoding("utf-8");
	response.setContentType("text/html; charset = utf-8");
%>

<%
	String Web = request.getParameter("fav_language");
%>

<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

Web name : <%=Web %><br>

</body>
</html>