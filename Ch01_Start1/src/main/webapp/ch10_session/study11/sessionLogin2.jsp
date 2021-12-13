<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	request.setAttribute("req", "5678");
	session.setAttribute("id", request.getParameter("id"));
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Session Login</title>
</head>
<body>

<h4>로그인되었습니다.</h4>
<h4>로그인 아이디 : <%=session.getAttribute("id")%></h4>
<a href="sessionLogout.jsp?id2=abcd&pw2=1234">로그아웃</a>

</body>
</html>