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
	
	function test() {
		var p1 = document.getElementById("password1").value;
	    var p2 = document.getElementById("password2").value;
	    
	    if( p1 != p2 ) {
	        alert("비밀번호가 일치 하지 않습니다");
	        history.back(); 
	     
	      } else{
	        alert("비밀번호가 일치합니다");
	      }

	}
	

</script>

<title>joinform.jsp</title>
</head>
<body>

<form action="join.jsp" method="post">
id : <input type="text" id="id" required>  <br>
pw : <input type="password"  id="password1" required> <br>
pw확인 : <input type="password" id="password2" required> <br>
<input type="submit" value="회원가입" onclick="test()" >
	
</form>

</body>
</html>