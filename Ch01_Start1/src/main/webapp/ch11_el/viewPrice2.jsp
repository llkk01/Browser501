<%@page import="ch11_el.FormatUtil"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	request.setAttribute("price", 123456L);
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>EL함수 호출(P.274)</title>
</head>
<body>
<%-- EL에서 static method()를 사용하기 위한 방법 - ${클래스명.메소드이름}을 사용 --%>
가격은 <b>${FormatUtil.number(price,'#,##0') }</b>
</body>
</html>