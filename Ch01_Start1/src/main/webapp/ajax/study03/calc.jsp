<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	String value1 = request.getParameter("v1");
	int v1 = Integer.parseInt(value1); // 문자열을 숫자로 바꾸기 위한 작업
	String value2 = request.getParameter("v2");
	int v2 = Integer.parseInt(value2);
	
	System.out.println(v1+v2); //콘솔창에 값 출력
	out.println(v1+v2); //wwb에 값 출력
%>