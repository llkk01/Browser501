<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	request.setCharacterEncoding("utf-8");

	//attributeTest1.jsp에서 저장한 내용을 받기 위한 작업
	String email = request.getParameter("email");
	String address = request.getParameter("address");
	String tel = request.getParameter("tel");

	session.setAttribute("email", email); //("email"-이름, email-값)
	session.setAttribute("address", address);
	session.setAttribute("tel", tel);
	
	//name의 데이터 가져오기
	String name = (String)application.getAttribute("name");
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<h3>용역과 속성 테스트</h3>
<b><%=name %>님 정보가 모두 저장되었습니다.</b><br>
<a href="attributeTest3.jsp">확인하러가기</a>

</body>
</html>