<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"
 %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>2021.12.15_study15 과제</title>
</head>
<body>

<c:out value="outtest"></c:out><br/>
<c:set var="settest" value="hong"></c:set>
${settest }<br/>
<hr>

<h2>JSTL Core 라이브러리 실습(배열저장:1~10/1~7)</h2>
<%
	int arr[] = {1,2,3,4,5,6,7,8,9,10};
	request.setAttribute("arr", arr);
	
	int[] arr2 = new int[10];
	for(int e=0; e<arr2.length; e++){
		arr2[e] = e+1;
	}
	request.setAttribute("arr2", arr2);
%>
<c:forEach var="i" items="${arr }">
	${i }
</c:forEach> <br/>

<c:forEach var="i" items="${arr }" begin="0" step="1" end="7">
	${i }
</c:forEach>
<br/>

<c:forEach var="i" items="${arr2 }">
	${i }<br/>
</c:forEach>

<hr/>

<h2>JSTL Core 라이브러리 실습2(ArrayList:홍길동,이순신,유관순)</h2>
<%
	ArrayList<String> list = new ArrayList<>();
	list.add(0, "홍길동");
	list.add(1, "이순신");
	list.add(2, "유관순");
	
	request.setAttribute("list", list);
%>
<c:forEach var="i" items="${list }">
	${i }<br>
</c:forEach>
<hr/>

<h2>JSTL Core 라이브러리 실습(String A,B,C,D)</h2>
<%
	request.setAttribute("s",new String[]{"A","B","C","D"});
%>
<c:forEach var="i" items="${s }">
	${i }<br/>
</c:forEach>


</body>

</html>