<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Cartlist.jsp</title>
</head>
<body>
<h4>장바구니</h4>
<%
List<String> cartlist = (List<String>)session.getAttribute("cart");
for(int i=0; i< cartlist.size(); i++){ //장바구니에 아무것도없으면 오류뜬다(if로 해결해야함)
	out.print(cartlist.get(i) +"<br>");
}
%>
</body>
</html>