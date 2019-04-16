<%@page import="java.util.List"%>
<%@page import="com.edu.emp.MemberDAO"%>
<%@page import="com.edu.emp.MemberDTO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@include file="../main/header.jsp" %>
<table>
	<tr><td>아이디</td><td>비번</td><td>이름</td><td>직업숫자</td><td>취미</td><td>정보</td><td>성별</td><td>등록일자</td></tr>	
<%
	List<MemberDTO> list = MemberDAO.getInstance().selectAll();
	for(int i=0; i<list.size(); i++){
		MemberDTO beans = list.get(i);
%>		
	<%-- <tr><td><a href="updateDept.jsp?department_id=<%=beans.getDepartment_id()%>"> <%=beans.getDepartment_id()%> </a> </td> --%>
	    <tr>
	    <td><%=beans.getUserid()%></td>
	    <td><%=beans.getUserpw() %></td>
	    <td><%=beans.getUsername() %></td>
	    <td><%=beans.getJob() %></td>
	    <td><%=beans.getHobby() %></td>
	    <td><%=beans.getInfo() %></td>
	    <td><%=beans.getGender() %></td>
	    <td><%=beans.getRegdate() %></td>
	    </tr>	
<%} %>
</table>
<%@include file="../main/footer.jsp" %>
</body>
</html>