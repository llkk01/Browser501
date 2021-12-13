<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!-- session은 "true"가 기본값이다.(안써줘도 true임) -->
<%@ page session="true" %> 

<%
	Date time = new Date();
	SimpleDateFormat f = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<img src="session.png"><br>
<!-- session : JSP 기본객체 중 하나 -->
세션 ID : <%=session.getId() %><br>
<%
	time.setTime(session.getCreationTime());
	out.println("세션생성시간 : " +f.format(time) +"<br>");
	time.setTime(session.getLastAccessedTime());
	out.println("최근접근 : " +f.format(time)+"<br>");
	
	session.setAttribute("memberid", "abcde");
	session.setAttribute("name", "hong");
	
	String name = (String)session.getAttribute("name");
	out.println("회원명 : " +name +"<br> 세션을 종료합니다.");
	
	//세션종료의 방법
	session.setMaxInactiveInterval(60*60); //1시간후에 세션을 종료
	session.invalidate(); //바로 세션종료
	//3. 브라우저를 닫기 > 세션이 종료됨
%>

</body>
</html>