<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>exceptionTest.jsp</title>
</head>
<body>
에러발생
<%
	//int a=5/0;
	String a = null;
	a.toLowerCase();	//일부러 null오류 생성
%>
</body>
</html>