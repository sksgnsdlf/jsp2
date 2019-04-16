<%@page import="java.net.URLEncoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>a.jsp</title>
</head>
<body>
A page <hr>
<% String name="홍길동"; %>
<%--include file="b.jsp" --%>

<c:url value="b.jsp" var="url">
	<c:param name="name"><%=name%></c:param>
</c:url>
<%response.sendRedirect("b.jsp"); %>
<%-- <jsp:forward page="b.jsp"></jsp:forward> --%>
<%-- <jsp:include page="${url}"/> --%>
<%--<jsp:include page="b.jsp">
	<jsp:param value="<%=URLEncoder.encode(name,\"utf-8\")%>" name="name"/>
</jsp:include>--%>
<%=request.getRealPath("/")%>
</body>
</html>