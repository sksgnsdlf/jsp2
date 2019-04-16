<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>number.jsp</title>
</head>
<body>
<c:set var="salary" value="-120000000"/>
${salary}<br>
<fmt:formatNumber value="${salary}"></fmt:formatNumber><br>					<%--쉼표만 --%>
<fmt:formatNumber value="${salary}" groupingUsed="false"/><br> 				<%--단위안씀 --%>
<fmt:formatNumber value="${salary}" type="currency"/><br>					<%--달러+쉼표 --%>
<fmt:formatNumber value="${salary}" type="currency" currencySymbol="#"/><br><%--앞에 넣을 문자+쉼표 --%>
<fmt:formatNumber value="${salary}" minFractionDigits="2"/><br>				<%--(최소)소수점자리수 --%>
<fmt:formatNumber value="${salary}" maxFractionDigits="3"/><br>				<%--(최대)소수점자리수 --%>
<fmt:formatNumber value="${salary}" pattern="000,000.0;(000,000.0)"/><br>	<%--맘대로조정(양수값/음수값) --%>

<hr>
<c:set var="today" value="2019/03/20 4:30:13"/>
<fmt:parseDate var="today" value="${today}" pattern="yyyy/MM/dd hh:mm:ss"/>
<fmt:formatDate value="${today}"/> <br>
<fmt:formatDate value="${today}" type="both"/> <br>
<fmt:formatDate value="${today}" pattern="yyyy/MM/dd hh:mm:ss"/> <br>
</body>
</html>