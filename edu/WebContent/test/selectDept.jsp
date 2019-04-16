<%@page import="com.edu.dept.DeptDAO"%>
<%@page import="com.edu.dept.DeptDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>selectDept.jsp</title>
</head>
<body>
<%
	DeptDTO dto = new DeptDTO();
	dto.setDepartment_id(request.getParameter("department_id"));
	//dto.setDepartment_name(request.getParameter("department_name"));
	DeptDTO dept = DeptDAO.getInstance().selectOne(dto);
	out.print(dept.getDepartment_id() + " : ");
	out.print(dept.getDepartment_name() + " : ");
%>
</body>
</html>