<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>exapmle2.jsp</title>
</head>
<body>

<%@ include file="header.jsp" %>

<H4>jsp 스크립트릿 태그 연습</H4>
<%! //변수나 메서드를 선언 
String[] hobbys = {"독서","운동","등산","스키"};

%>
<select>	
	<%
	for(int i= 0; i< hobbys.length; i++ ){
	%>
	<option><%= hobbys[i] %>
	<%
	}
	%>
</select>

<table border="1">
<%for(int j=0; j<5; j++){ %>
	<tr>
	<% 
	int count=0;
	for(int i = 1; i<=10; i++ ){
		count = i;
	%>
		<td><%=count %></td>
	<% } %>
	</tr>
<% } %>
</table>
<%@ include file="header.jsp" %>
</body>
</html>