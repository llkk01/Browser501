<%@tag import="java.util.Calendar"%>
<!-- body-content = empty(바디없이사용), tagdependent(태그 독립적 사용), scriptless(default) -->
<%@ tag language="java" pageEncoding="UTF-8" body-content="empty" %>
<%
	Calendar c = Calendar.getInstance();
%>
<%=c.get(Calendar.YEAR)%>년
<%=c.get(Calendar.MONTH)%>월
<%=c.get(Calendar.DATE)%>일<br>