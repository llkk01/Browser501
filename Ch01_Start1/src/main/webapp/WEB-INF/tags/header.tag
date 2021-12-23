<%@ tag pageEncoding="UTF-8" body-content="empty" %>

<!--  trimDirectiveWhitespaces="true" 공백이 있는건 없애겠다. -->
<%@ tag trimDirectiveWhitespaces="true" %>

<!-- required="true" 타이틀변수는 반드시 있어야한다. -->
<%@ attribute name="title" required="true" %>

<!--  type="java.lang.Integer" level은 반드시 숫자형식이다. -->
<%@ attribute name="level" type="java.lang.Integer" %>

<%
	String headStartTag = null;
	String headEndTag = null;

	if(level == null){
		headStartTag = "<h1>";
		headEndTag = "</h1>";
	}else if(level == 1){
		headStartTag = "<h1>";
		headEndTag = "</h1>";
	}else if(level == 2){
		headStartTag = "<h2>";
		headEndTag = "</h2>";
	}else if(level == 3){
		headStartTag = "<h3>";
		headEndTag = "</h3>";
	}
%>

<%=headStartTag %>
${title}
<%=headEndTag %>
