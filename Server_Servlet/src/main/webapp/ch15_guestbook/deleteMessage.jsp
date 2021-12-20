<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import="ch15.guestbook.service.DeleteMessageService" %>
<%@ page import="ch15.guestbook.service.InvalidPasswordException" %>

<%
	int messageId = Integer.parseInt(request.getParameter("messageId"));
	String password = request.getParameter("password");
	boolean invalidPassword = false;
	try{
		DeleteMessageService deletService = DeleteMessageService.getInstance();
		deletService.deleteMessage(messageId, password);
	}catch(InvalidPasswordException ex){
		invalidPassword = true;
	}
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>P.467 방명록 메세지 삭제함</title>
</head>
<body>

<% if(!invalidPassword) {%>
	메세지를 삭제했습니다.
<% } else { %>
	입력한 암호가 올바르지 않습니다. 암호를 확인해주세요.
<% } %>
<br/>
<a href="list.jsp">[목록보기]</a>
</body>
</html>