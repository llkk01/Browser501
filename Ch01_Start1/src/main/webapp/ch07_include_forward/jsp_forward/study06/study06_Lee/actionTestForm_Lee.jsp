<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">


<title>Insert title here</title>
</head>
<body>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

<script>


</script>

	<form action="actionTest.jsp">
		아이디: <input type="text" name="userId" required> <br>
		암 &nbsp;호: <input type="text" name="userPwd" required> <br>
		<input type="radio" name="loginCheck" value="user" checked="checked"> 사용자
		<input type="radio" name="loginCheck" value="manager"> 관리자<br>
		<input type="submit" value="로그인">
	</form>
</body>
</html>