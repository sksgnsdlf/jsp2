<%@page import="com.edu.board.BoardDao"%>
<%@page import="com.edu.board.Board"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>updateDept.jsp</title>
</head>
<body>
<h4>부서수정</h4>
<%
	//단건조회
	String id = request.getParameter("id");
	Board beans = BoardDao.getInstance().select(id);
%>
<form action="updateBoardProc.jsp">
	id<input name="id" value="<%=beans.getId() == null ? "" : beans.getId()%>"><br>
	게시판<input name="userName" value="<%=beans.getUserName() == null ? "" : beans.getUserName()%>"><br>
	컨텐츠<textarea name="contents"><%=beans.getContents() == null ? "" : beans.getContents()%></textarea><br>
	<!-- textarea는 value가 없다 -->
	<button>등록</button>
	<a href="deleteBoardProc.jsp?id=<%=id%>">삭제</a>
	<br>
</form>
</body>
</html>