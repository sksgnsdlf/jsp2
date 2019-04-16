<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Goodlist.jsp</title>
</head>
<body>
<h4>상품목록</h4>
<form action="Cartadd.jsp">
	<select name="goodno" size="5">
		<option>상품1
		<option>상품2
		<option>상품3
		<option>상품4
	</select>
	<button>장바구니 버튼</button>
	<a href="Cartlist.jsp">장바구니 보기</a>
</form>
</body>
</html>