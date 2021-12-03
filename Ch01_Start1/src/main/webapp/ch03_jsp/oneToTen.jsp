<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<!-- Comsole에 화면 출력 -->
<%
	int sum = 0;
	for(int i=0; i<=10; i++){
		sum = sum + i;
	}
	System.out.println("Comsole : " +sum);

%>
<hr>

<!-- Web에 화면 출력 -->
<%
	int sum2 = 0;
	for(int i=0; i<=10; i++){
		sum = sum2 + i;
	}
	out.println("Web output : " +sum2);

%>
<hr>

<!-- Web에 화면 출력2 -->
<%
	int sum3 = 0;
	for(int i=0; i<=10; i++){
		sum = sum3 + i;
	}
	
%>
	Web output2 : <%=sum3 %>
<hr>

</body>
</html>