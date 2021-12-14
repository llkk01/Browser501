<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>EL표기법으로 출력하기</title>
</head>
<body>
attribute name:: ${name }<br>
scope name:: ${requestScope.name}<br>
Member.id:: ${m.id }<br>
Member.name:: ${m.name }<br>

<%-- 요청URI:: ${pageContext.getRequest().getRequestURI() }<br> --%>
요청URI:: ${pageContext.request.requestURI }<br>
요청URI:: <%=request.getRequestURI() %> <br>
파라미터 code:: ${param.code }<br>
변수로 선언된 이름을 request에 담기:: ${requestScope.name }<br>
</body>
</html>