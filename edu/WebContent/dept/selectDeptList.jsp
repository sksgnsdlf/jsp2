
<%@page import="com.edu.emp.DeptBeans"%>
<%@page import="com.edu.emp.DeptDAO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>selectDeptList</title>
</head>
<body>
<%@include file="../main/header.jsp" %>
<h4>부서목록</h4>
<a href="../dept/insertDept.jsp">부서등록</a>
<table>
	<tr><td>부서번호</td><td>부서명</td><td>지역</td><td>매니저</td></tr>	
<%-- <c:if test="${empty list}">
	<tr><td colspan="4">조회된 데이터가 없습니다.</td>
</c:if>
 --%>
 <c:if test="${not empty list }">
	<c:forEach items="${list}" var="beans">	
	<tr><td><a href="updateDept?department_id=${beans.getDepartment_id()}">
	${beans.getDepartment_id()}</a></td>
	    <td>${beans.getDepartment_name()}</td>
	    <td>${beans.getLocation_id()}</td>
	    <td>${beans.getManager_id()}</td></tr>	
	</c:forEach>
</c:if>
</table>
<%@include file="../main/footer.jsp" %>
</body>
</html>