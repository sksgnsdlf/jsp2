<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    trimDirectiveWhitespaces="true"
    buffer="8kb"
    autoFlush="false"
    %>
    <!--   errorPage="error.jsp" -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>example1.jsp</title>
</head>
<body>
<!-- html 주석 -->
<%  //스크립트릿
	Date today;
	//int a = 5/0;
	//라인주석
	/*
	블록주석
	*/
	String name = request.getParameter("name");
	if(name == null){
		name ="guest";
	}
	for(int i = 0; i<500; i++ ){
	
%>
<%= name %><%//<--출력문 %> <%out.print(name); //둘다 똑같은 개념임 %> 

<% } %>
<%-- jsp 주석 --%>
</body>
</html>