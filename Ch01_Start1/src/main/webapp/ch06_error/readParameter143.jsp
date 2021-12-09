<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   
<!-- 예외발생시 viewErrorMessage.jsp 을 찾아서 실행하겠다. -->
<%--  <%@ page errorPage="/error/viewErrorMessage.jsp" %> --%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

name Parameter1:: <%=request.getParameter("name").toUpperCase() %> 

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