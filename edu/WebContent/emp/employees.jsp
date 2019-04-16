<%@page import="com.edu.emp.JobDAO"%>
<%@page import="com.edu.emp.JobDTO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>employees.html</title>
</head>
<body>
<%@ include file="../main/header.jsp" %>

<h3 id="top">사원등록</h3>
<form action="empProc2.jsp" method="post" name="frm">
	employee_id <input type="number"min="300" step="1" name="employee_id"><br>
	first_name <input name="first_name"><br>
	last_name <input name="last_name"><br>
	email <input type="email" name="email"><br>
 	phone_number <input type="text" name="phone_number"><br>
 	hire_date <input type="date" name="hire_date"><br>
 	job_id <select name="job_id">
 	<%
 	List<JobDTO> datas = JobDAO.getInstance().selectAll();
 	for(int i=0; i<datas.size(); i++){
 		JobDTO job = datas.get(i);
 	%>
 			<option value="<%=job.getJob_id() %>"><%= job.getJob_title()%>
 	<% 
 	}
 	%>
 	</select><br>
 	department_id 
 	<input type="radio" name="department_id" value="10">Administration
 	<input type="radio" name="department_id" value="20">Marketing
 	<input type="radio" name="department_id" value="30">Purchasing
 	<input type="radio" name="department_id" value="40">Human Resources <br>
 	
 	manager_id 	
 	<input type="text" name="manager_id">
	<input type="text" name="name">
	<button type="button" onclick="window.open('selectEmp.jsp','emp','width=400,height=400')">사원검색</button><br>	

 	<button type="submit">등록</button>
 	<button type="reset">초기화</button> 	
</form>
<a href="#top">맨위로</a><br><br><br>
<%@ include file="../main/footer.jsp" %>
</body>
</html> 



