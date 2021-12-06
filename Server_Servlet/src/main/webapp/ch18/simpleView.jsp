<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MVC model2 ::: View(p.526)</title>
</head>
<body>

URL : http://localhost:8080/Server_Servlet/simple <br>
type을 date로 한 경우 => 날짜 출력<hr>

결과(JSP-Attribute속성) : <%=request.getAttribute("result") %> <br>
결과(EL-Attribute속성) : ${result} <hr>

결과2(JSP-Parameter) : <%=request.getParameter("type") %> <br>
결과2(EL-Parameter) : ${param.type} <hr>

</body>
</html>