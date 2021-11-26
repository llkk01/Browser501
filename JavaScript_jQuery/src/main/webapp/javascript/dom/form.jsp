<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<%
	request.setCharacterEncoding("utf-8");
	response.setContentType("text/html; charset = utf-8");
%>

<%
	String first = request.getParameter("fname");
%>

<title>dom_form.html의 요청받아 서버에서 데이터를 출력하기</title>
</head>

<body>
first name : <%=first %> <br>

</body>
</html>