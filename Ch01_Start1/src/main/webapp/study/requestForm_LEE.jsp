<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>

<body>

<form action = "requestResult_LEE.jsp">
<h2>학번,이름,학년,선택과목을 입력하는 폼</h2>
	
	학번 : <input type = "text" name = "num"> <br>
	
	이름 : <input type = "text" name = "name" > <br>
	
	학년 : 
	<label><input type = "radio" name = "grade" value = "1">1학년</label>
	<label><input type = "radio" name = "grade" value = "2">2학년</label>
	<label><input type = "radio" name = "grade" value = "3">3학년</label>
	<label><input type = "radio" name = "grade" value = "4">4학년</label> <br>
	선택과목 :
	<select name = "subject">
		<option value="JAVA">JAVA</option>
		<option value="CSS">CSS</option>
		<option value="JSP">JSP</option>
		<option value="JavaScript">JavaScript</option>
	</select>
	
	 <br><input type = "submit" value = "입력완료">
</form>

</body>

</html>