<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%-- name Parameter1:: <%=request.getParameter("name").toUpperCase() %>  --%>
<!-- 예외발생 : org.apache.jasper.JasperException: 행 [11]에서 [/ch06_error/readParameterNoErrorPage.jsp]을(를) 처리하는 중 예외 발생 -->
<hr>

<%
	//예외처리 해주기
	try{
		out.println("name : " +request.getParameter("name").toUpperCase());
	}catch(Exception e){
		out.println("name Parameter가 올바르지 않습니다.");
	}
%>

</body>
</html>