<%@page import="ch11_el.Member"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>P.252</title>
</head>
<body>
<%
	Member m = new Member();
	m.setName("이름1");
%>
<c:set var="m" value="<%=m %>"></c:set>
<c:set var="name" value="${m.name }"></c:set> 
<!-- //표현이 실행될때 들어있는 값을 가지고 있음 -->
<%
	m.setName("이름2");
%>
${name }<br>
<!-- \ : 문자열을 출력(화면에 출력) -->
\${m.name} : 표현이 실행되는 시점에 곧바로 계산(Immediate Expression)
</body>
</html>