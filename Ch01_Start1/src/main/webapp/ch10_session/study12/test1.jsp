<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	//request에 대한 새로운 세션을 생성 후 리턴
	session = request.getSession(true);
	
	String id = request.getParameter("id");
	request.getSession().setAttribute("id", id);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<h3>Session 생성</h3>
새로운 세션이 생성되었습니다.<br>
세션 ID: <%=session.getId() %>
<!-- <a>태그로는 데이터 전달이 불가능하다. -->
<a href="test2.jsp">세션내용보기</a>
</body>
</html>