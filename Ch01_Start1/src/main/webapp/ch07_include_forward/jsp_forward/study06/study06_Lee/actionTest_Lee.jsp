<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	String id = request.getParameter("id");
	String password = request.getParameter("password");
	String choice = request.getParameter("choice");
%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style>
#div1{
	background-color: yellow;
	width: 300px;
	height : 150px;
}
</style>
</head>
<body>

<div id="div1">
<h2>${param.choice }로 로그인 성공</h2><br>
${param.id} 님 환영합니다.
</div>

</body>
</html>