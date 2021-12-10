<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Delete</title>
</head>
<body>

<%
	Cookie[] c = request.getCookies();

	if(c !=null && c.length>0){
		for(int i=0; i<c.length; i++){
			if(c[i].getName().equals("name")){ // getName에 "name"이 있으면
				Cookie cookie = new Cookie("name",""); //name을 ""로 비워두면 삭제와 같은 효과
				cookie.setMaxAge(0);
				response.addCookie(cookie); //새로생긴 쿠키를 내보내기
			}
		}
	}
%>
name 쿠키를 삭제합니다.<br>

</body>
</html>