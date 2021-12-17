<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

<script>
$(document).ready(function() {
	$("#btn").click(function() {
		$("#data").load("resource.html");
	});
});
</script>

</head>
<body>

<button id="btn">서버로부터 데이터 가져오기 </button><br><br>
<div id="data">데이터 가져오기 전</div>

</body>
</html>