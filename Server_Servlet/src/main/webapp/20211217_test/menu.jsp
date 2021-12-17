<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

<style>
	div{ width:200px; height:100px;
		 margin:3px; float:left;
	}
</style>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<script>

$(function() {	
	$("#menu1").click(function(){
		$.ajax({
			url:"ajax.html",
			datatype:"html",
			success:function(data){
				$("#message1").html(data);
			}	
		});
		
	});
	$("#menu2").click(function(){
		$.ajax({
			url:"ajax.html",
			datatype:"html",
			success:function(data){
				$("#message2").html($(data).find('li'));
			}	
		});
	});
});

</script>

</head>
<body>
<div>
	<a href="#" id="menu1">메뉴 보기1</a><br>
	<span id="message1"></span>
</div>
<div>
	<a href="#" id="menu2">메뉴 보기2</a><br>
	<span id="message2"></span>
</div>
</body>
</html>