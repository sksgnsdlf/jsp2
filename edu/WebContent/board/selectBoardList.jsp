<%@page import="com.edu.board.BoardDao"%>
<%@page import="com.edu.board.Board"%>
<%@page import="com.edu.board.DAO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>selectDeptList</title>
</head>
<body>
<%@include file="../main/header.jsp" %>
<h4>부서목록</h4>
<a href="insertBoard.jsp">부서등록</a>
<table>
	<tr><td>아이디</td><td>과목</td><td>컨텐츠</td></tr>	
<%
ArrayList<Board> list = BoardDao.getInstance().selectAll();
for(int i=0; i<list.size(); i++){
	Board beans = list.get(i);
	
%>		
	<tr><td><a href="updateBoard.jsp?id=<%=beans.getId()%>"><%=beans.getId()%> </a> </td>
	    <td><%=beans.getUserName() %></td>
	    <td><%=beans.getContents() %></td>	
<%} %>

</table>
<%@include file="../main/footer.jsp" %>
</body>
</html>