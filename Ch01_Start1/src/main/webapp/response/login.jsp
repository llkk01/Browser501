<%@page import="java.net.URLEncoder"%>
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
// 한줄주석
/* 여러줄 주석 */

	String id  = request.getParameter("memberid");
	
	if(id != null && id.equals("admin")){
		
		String value = "홍길동";
		String encodevalue = URLEncoder.encode(value, "utf-8");
		//?로 직접 입력한것만 데이터 전달을하고 나머지는 데이터 전달 불가능하다.
		response.sendRedirect("index.jsp?name=" +encodevalue); 
// 		response.sendRedirect("index.jsp);

	}else {
		out.println("잘못된 id 입니다.");
	}
	
%>


</body>
</html>