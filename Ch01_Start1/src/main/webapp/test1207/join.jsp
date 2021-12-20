<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%

String id = request.getParameter("id");
String pw1 = request.getParameter("password1");
String pw2 = request.getParameter("password2");

if(pw1 == pw2){
	 out.println("로그인 성공");
	 request.getRequestDispatcher("main.jsp");
 }else{
	 out.println("로그인 실패");
	 request.getRequestDispatcher("joinform.jsp");
 }
	
%>

</body>
</html>