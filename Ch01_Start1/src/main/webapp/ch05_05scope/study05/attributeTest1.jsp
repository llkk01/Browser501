<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	request.setCharacterEncoding("utf-8");
	
	//attributeTest_Form.jsp에서 저장한 내용을 받기 위한 작업
	String name = request.getParameter("name");
	String id = request.getParameter("id");
	
	application.setAttribute("name", name); //("name"-이름, name-값)
	application.setAttribute("id", id);  //("id"-이름, id-값)
%>

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

<h3>용역과 속성 테스트</h3>
<!-- JSP로 작성 -->
<b><%=name %>님 반갑습니다.<br>
   ${param.name}의 아이디는  ${param.id}입니다.</b><br>
 

<form action="attributeTest2.jsp" method="post">
	<table>
		<tr>
			<td colspan="2">session scope에 저장할 내용들</td>
		</tr>
		<tr>
			<td>email주소</td><td><input type="email" name="email" class="email"></td>
		</tr>
		<tr>
			<td>집주소</td><td><input type="text" name="address" class="address"></td>
		</tr>
		<tr>
			<td>전화번호</td><td><input type="text" name="tel" class="tel"></td>
		</tr>
		<tr>
			<td colspan="2"><input type="submit" value="전송"></td>
		</tr>
	</table>
</form>
</body>
</html>