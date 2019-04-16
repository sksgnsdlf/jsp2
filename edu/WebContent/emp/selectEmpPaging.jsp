<%@page import="com.edu.common.Paging"%>
<%@page import="com.edu.emp.EmpDTO"%>
<%@page import="java.util.List"%>
<%@page import="com.edu.emp.EmpDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="my" tagdir="/WEB-INF/tags" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>selectEmpPaging.jsp</title>
</head>
<body>
<%	
	String sp = request.getParameter("p");
	int p = 1;	
	if(sp != null && ! sp.isEmpty()){
		p = Integer.parseInt(sp);
	}
	
	Paging paging = new Paging();
	paging.setPage(p); //현재 페이지
	int cnt = EmpDAO.getInstance().count();
	paging.setPageUnit(5); //페이지 갯수
	paging.setPageSize(3); //페이지버튼 갯수
	paging.setTotalRecord(cnt); //전체 레코드 건수
	
	int first = paging.getFirst();
	int last = paging.getLast();
	List<EmpDTO>list = EmpDAO.getInstance().selectPage(first, last);
%>
<table border="1">
<c:forEach items="<%=list%>" var="emp">
	<tr><td>${emp.employee_id}</td> 
	<td>${emp.first_name}</td> 
	<td>${emp.email }</td>
</c:forEach>
</table>
<my:paging paging="<%=paging%>" jsfunc="goList">
</my:paging>
<script>
	function goList(p){
		location = "selectEmpPaging.jsp?p="+p;
	}
</script>
<style>
	li{display: inline-block; border: 1px solid gray; padding:5px;}
	.active{ color: red}
</style>
</body>
</html>