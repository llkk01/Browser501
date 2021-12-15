<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

JSTL(JSP Standard Tag Library) <br>
- 태그를 만드는 커스텀 태그중에서 많이 사용되는 것을 보아서 표준으로 삼은 것<br>
- 가독성을 높이기 위해서 사용<br><hr>

<img src="jstl01.png"><br>
<h3>JSTL:: Core(P.295)</h3>


<img src="coretag table.png"><br>
<%
	int n1 = 10;
	int n2 = 20;
%>
<br><br><hr>
<c:set var="num1" value="7"></c:set>
<c:set var="num2" value="9"></c:set>
<c:set var="result1" value="${num1*num2 }"></c:set>
<c:set var="result2" value="<%=n1+n2 %>"></c:set>
${num1 }와 ${num2 }의 곲은? ${result1 }<br>
<%=n1 %>와 <%=n2 %>의 곲은? ${result2 }<br>

</body>
</html>