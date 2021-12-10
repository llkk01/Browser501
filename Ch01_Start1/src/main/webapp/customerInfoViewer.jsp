<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>


<b>request영역으로부터 자바빈 객체 가져오기</b> <br>
<jsp:useBean id="pinfo" class="ch08_usebean.member.personalInfo" scope="request"/>
이름 : <jsp:getProperty property="name" name="pinfo"/> <br>
성별 : <jsp:getProperty property="gender" name="pinfo"/> <br>
나이 : <jsp:getProperty property="age" name="pinfo"/> <br>



</body>
</html>