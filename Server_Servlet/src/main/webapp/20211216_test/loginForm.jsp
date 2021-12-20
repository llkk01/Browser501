<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>


<script>
 	$(document).ready(function() {
 		$("#id").focus();
 	});
 	
</script> 


<title>문항2</title>
</head>
<body>

<form action="join.do">
<h4>로그인</h4>
아이디 : <input type="text" name="id" id="id" required>  <br>
암호 : <input type="password"  name="password" id="password" required> <br>
<input type="submit" value="확인" >
</form>

</body>
</html>