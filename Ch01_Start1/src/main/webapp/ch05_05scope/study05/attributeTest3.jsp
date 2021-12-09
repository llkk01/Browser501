<%@page import="java.util.Enumeration"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style>
table{
	border: 1px solid black;
	margin: 5px;
	padding: 5px;	
}

td{
	border: 1px solid black;
	
}
</style>

</head>
<body>

<table>
		<tr>
			<td colspan="2">application scope에 저장할 내용들</td>
		</tr>
		<tr>
			<td>이름</td><td><%=application.getAttribute("name") %></td>
		</tr>
		<tr>
			<td>아이디</td><td>${applicationScope.id}</td>
		</tr>
</table>

<table>
		<tr>
			<td colspan="2">session scope에 저장할 내용들</td>
		</tr>
<%-- 		<tr><td>email주소</td><td><%=session.getAttribute("email") %></td></tr> --%>
<%-- 		<tr><td>집주소</td><td><%=session.getAttribute("address") %></td></tr> --%>
<%-- 		<tr><td>전화번호</td><td><%=session.getAttribute("tel") %></td></tr> --%>
		
		<%
			//getAttributeNames로 데이터 뽑아오기
			Enumeration<String> e = session.getAttributeNames();
			while(e.hasMoreElements()){
				String name = e.nextElement();
				String value = (String)session.getAttribute(name);
/* 				out.println("<tr><td>" +name + "</td><td>" +value +"</td>");
			} */
		%>
 		<tr>
			<td><%=name %></td><td><%=value %></td>
		</tr>
		<%
			}
		%> 
</table>

<!-- 데이터는 못가져가고 페이지만 이동 -->
<a href="attributeTest_Form.jsp">첫 페이지로 이동</a> 

</body>
</html>