<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

현재 페이지는 <b>responseRedirect.jsp</b>
<%
	// sendRedirect는 데이터를 가져가지 못한다. (페이지 이동만 가능)
	// ?id=hong으로 작성해서 전송하면 값이 넘어가긴한다.
	response.sendRedirect("responseResult.jsp?id=hong");
	request.setAttribute("ids", "abcd"); // 값을 전달 못한다.
%>
redirect 밑에 있는 내용<br>
</body>
</html>