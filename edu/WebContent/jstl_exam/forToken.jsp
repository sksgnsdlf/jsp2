<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>forToken.jsp</title>
</head>
<body>
<% String hobbys = "소설/인문/정치"; %>
<c:forTokens items="<%=hobbys%>" delims="/" var="token" varStatus="st">
	${st.count} <t>${token} <br>
</c:forTokens>
<hr>
<c:set var="birth" value="80-12-05"/>
<c:forTokens items="${birth}" delims="-" var="bir" varStatus="st">
	${st.count}.${bir}
	<c:if test="${st.count==1}">년생 </c:if>
	<c:if test="${st.count==2}">월 </c:if>
	<c:if test="${st.count==3}">일 </c:if>	
	<br>
</c:forTokens>
</body>
</html>