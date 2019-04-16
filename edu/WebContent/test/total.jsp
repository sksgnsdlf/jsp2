<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<table>
<%
	int sum=0;
	for(int i=0; i<=10; i++){
		sum =sum+i;
	%>
	<tr><td>
	<%=i %> </td></tr>
	<%
	}
	%>
	<%=sum
%>

<c:set var="sum" value="0"/> <%--초기화해야함 --%>
</table>
<hr>
<table>
<c:forEach begin="1" end="10" var="i">	<%--반복문 --%>
	<tr><td>
	<c:set var="sum" value="${ sum+i }"	/>  <%--반복합계 --%>
	<c:out value="${i}"/><br>
	</td></tr>
</c:forEach>
</table>
합계:<b><c:out value="${sum}"/><br></b>
</body>
</html>