<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<jsp:useBean id="myBean" class="ch11_el.LoginBean"/>
<jsp:setProperty property="*" name="myBean"/>
<!-- // *은 모두를 의미하기때문에 두개 나눠쓰지 않고 한번에 써도 된디. -->
<%-- <jsp:setproperty name="myBean" property="userid"> --%>
<%-- <jsp:setproperty name="myBean" property="passwd"> --%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
사용자 아이디 : <jsp:getProperty property="userid" name="myBean"/><br>
사용자비밀번호 : <jsp:getProperty property="passwd" name="myBean"/><br>
사용자 아이디(EL) : ${myBean.userid }<br>
사용자비밀번호(EL) : ${myBean.passwd }<br>
입력 파라미터를 저장하지않고 바로 출력하기<br>
사용자 아이디(EL) : ${param.userid }<br>
사용자비밀번호(EL) : ${param.passwd }<br>
</body>
</html>