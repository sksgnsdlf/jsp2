<%@page import="com.edu.emp.EmpDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>setAttibute.jsp</title>
</head>
<body>
<H3>속성 저장</H3>
<%-- <%
	application.setAttribute("appUsername", "홍길동");
	session.setAttribute("sessionUsername", "김길동");
	request.setAttribute("reqUsername", "박길동");
	session.setAttribute("emp", new EmpDTO("100","사원김유신","2000"));
%> --%>
<c:set var="appUsername" value="홍길동" scope="application"></c:set>
<c:set var="sessionUsername" value="박길동" scope="session"></c:set>
<c:set var="reqUsername" value="김길동" scope="request"></c:set>
 
<c:set var="emp" value="<%= new EmpDTO() %>" scope="session"/>
<c:set target="${emp}" property="first_name" value="사원유관순"/> 

<jsp:forward page="elTest.jsp"/>
</body>
</html>