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
	$function click() {
		var ids = document.getElementById("id").value;
	    var pw = document.getElementById("password").value;
	    ids = "admin"
	    pw= "1234"
	    if(ids != "admin"){
	    	alert("아이디와 비밀번호가 일치하지않습니다.");
	    
	    }else {
	    	alert("아이디와 비밀번호가 일치합니다.");
	    }
	});

</script>

	<form action="actionTest_Lee.jsp">
		아이디 : <input type="text" name="id" id="id" required> <br>
		암 호 : <input type="password" name="password" id="password" required> <br>
		<label><input type="radio" name="choice" value="사용자" required>사용자</label>
		<label><input type="radio" name="choice" value="관리자" required>관리자</label>  <br>
		<input type="submit" value="로그인" onclick="click()">
	</form>
</body>
</html>