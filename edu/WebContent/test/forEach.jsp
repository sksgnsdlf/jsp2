<%@page import="java.util.ArrayList"%>
<%@page import="com.edu.emp.EmpDTO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>   
		<%-- prefix는 이름 --%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>forEach.jsp</title>
</head>
<body>
<%
	List<EmpDTO> list = new ArrayList<EmpDTO>();
	list.add(new EmpDTO("100","홍길동","2000"));
	list.add(new EmpDTO("101","김길동","1000"));
	list.add(new EmpDTO("102","박길동","3000"));
	request.setAttribute("list",list);
%>
<%-- for(int i=0; i<list.size(); i++){} 이거를 대신할 방법--%>
<table>
<c:forEach items="${list}" var="bean" varStatus="s" begin="0" end="5"> 
	<%-- items은 setAtt값 / var는 변수이름  / varStatus는 상태용 변수 
										begin은 index시작점 / end는 index끝점--%>
	<tr><td>${s.index} ${s.count} </td>
		<td>${bean.employee_id}</td>
		<td>${bean.first_name}</td>
		<td><font color="${bean.salary>2000?"blue":"red"}">${bean.salary}
		
		</font></td>
	</tr>
</c:forEach>
</table>

<c:forEach var="i" begin="0" end="9" step="2">
	  <%--var(변수)는 i 시작은 0 끝은 9 단위는 2 --%>
	${i}	
</c:forEach>

</body>
</html>