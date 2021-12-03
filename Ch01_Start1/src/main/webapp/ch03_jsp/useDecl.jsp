<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%-- 메소드를 선언하려면 선언부에 !를 작성해줘야한다. <%! method %>  --%>
<%!
	public int multiply(int a, int b) {
	int c = a + b;
	return c;
}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	10+25 = <%=multiply(10,25) %>
</body>
</html>