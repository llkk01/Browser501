<%@page import="java.util.Map"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

(1)Array<br>
${w[0]}<br>
${w[1]}<br>
${w[2]}<br><hr>

(2)getAttribute, 반복문 사용<br>
<%
	//1.배열
	//getAttribute, 반복문 사용
	String[] str = (String[])request.getAttribute("w");
    for(String s : str)
    	out.println(s+" ");
    out.println("<br>");
    
    String[] str2 = (String[])request.getAttribute("w");
    for(int i=0; i< str2.length; i++)
    	out.println(str2[i]+" ");
    out.println("<br>");
%>

<hr>
Array:: JSTL<br>
<c:forEach var="i" items="${w}">
	${i }<br>
</c:forEach>
<hr>

<br>
//2.ArrayList 출력<br>
${FRUITS[0]}<br>
${FRUITS[1]}<br>
${FRUITS[2]}<br>
<%	
	//2.ArrayList 출력
	List<String> list = (List<String>)request.getAttribute("FRUITS");
	for(int i=0; i<list.size(); i++){
		out.println(list.get(i) +" ");
	}
%>
<hr>
ArrayList를 SJTL방법으로 출력<br>
<c:forEach var="i" items="${FRUITS }">
	${i }<br>
</c:forEach>
<hr>

//3.HashMap<br>
${NAME["hong1"]}<br>
${NAME["hong2"]}<br>
${NAME["hong3"]}<br>
${NAME.hong1}<br>
${NAME.hong2}<br>
${NAME.hong3}<br>

<%
	Map<String,String> m = (Map<String,String>)request.getAttribute("NAME");
	for(String key : m.keySet()){
		out.println(m.get(key));
	}
	out.println("<br>");
%>
<hr>
HashMap:: JSTL로 작성해보기<br>
<!-- //c:forEach - 자바의 for문장과 같은 의미(var : 변수이름, items : 속성의 이름) -->
<c:forEach var="i" items="${NAME}">
	${i }<br>
</c:forEach>

<c:forEach var="entry" items="${NAME}">
	${entry.key } :: ${entry.value } <br>
</c:forEach>
<hr>


//4.Member class 내용 출력 <br>
${MEM.id}<br>
${MEM.name}<br>

</body>
</html>