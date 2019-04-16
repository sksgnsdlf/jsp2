<%@tag import="java.util.Calendar"%>
<%@ tag language="java" pageEncoding="UTF-8"%>
<%
	Calendar date = Calendar.getInstance();
%>
<jsp:doBody/>
<%= date.get(Calendar.YEAR)%>-
<%= date.get(Calendar.MONTH)+1%>-
<%= date.get(Calendar.DATE)%>
