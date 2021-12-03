<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	request.setCharacterEncoding("utf-8");
%>
    
<%
	// request.get 데이터를 가져오기 위한 작업
	String num = request.getParameter("num");
	String name = request.getParameter("name");
	String grade = request.getParameter("grade");
	String subject = request.getParameter("subject");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style>
/* 테이블 style */
table, th, td {
  border: 1px solid black;
  width: 200px;
}
</style>
</head>

<body>

<!-- 학생정보출력 -->
	<h2>학생정보</h2>
	<table>
		<tr>
			<th>학번</th><th><%=num %></th>
		</tr>
		
		<tr>
			<th>이름</th><th><%=name %></th>
		</tr>
		
		<tr>
			<th>학년</th><th><%=grade %></th>
		</tr>

		<tr>
			<th>선택과목</th><th><%=subject %></th>
		</tr>
		
	</table>
	
</body>
</html>