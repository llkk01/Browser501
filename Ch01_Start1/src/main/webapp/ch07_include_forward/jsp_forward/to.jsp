<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP:: forward(p.180)</title>
</head>
<body>
이 페이지는 to.jsp페이지 입니다.<br>
<img src="jsp_forward.jpg"> <br>
JSP(id):: <%=request.getParameter("id") %> <br>
EL(id):: ${param.id}; <br><hr>

number(JPS):: <%=request.getAttribute("number") %> <br>
number(EL):: ${number}; <br><hr>

name(JSP):: <%=request.getParameter("name") %>

</body>
</html>