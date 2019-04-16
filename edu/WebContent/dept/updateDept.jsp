<%@page import="com.edu.emp.DeptBeans"%>
<%@page import="com.edu.emp.DeptDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>updateDept.jsp</title>
</head>
<body>
<h4>부서수정</h4>
<form action="updateDept" method="post">
	<
	부서번호<input name="department_id" value="${beans.department_id}"><br>
	부서명<input name="department_name" value="${beans.department_name}"><br>
	지역<input name="location_id" value="${beans.location_id}"><br>
	매니저<input name="manager_id" value="${beans.manager_id}"><br>
	<button>수정</button>
	<a href="DeleteDeptServ?department_id=${beans.department_id}">삭제</a>
	<br>
</form>
</body>
</html>