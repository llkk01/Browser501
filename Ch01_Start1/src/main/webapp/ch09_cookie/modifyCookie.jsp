<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Modify</title>
</head>
<body>

<%
	Cookie[] c = request.getCookies();

	if(c !=null && c.length>0){
		for(int i=0; i<c.length; i++){
			if(c[i].getName().equals("name")){ // getName에 "name"이 있으면
				Cookie cookie = new Cookie("name","JSP프로그래밍"); //name을 JSP프로그래밍로 변경
				response.addCookie(cookie); //새로생긴 쿠키를 내보내기
			}
		}
	}
%>
name 쿠키의 값을 변경합니다.<br>

</body>
</html>