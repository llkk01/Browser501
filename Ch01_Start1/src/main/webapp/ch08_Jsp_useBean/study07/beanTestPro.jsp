<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<jsp:useBean id="testBean" class="ch08_usebean.member.TestBean"/>
<jsp:setProperty property="name" name="testBean"/>


<h3>자바빈을 사용한 JSP페이지</h3>
입력된 이름은 <jsp:getProperty property="name" name="testBean"/> 입니다.
</body>
</html>