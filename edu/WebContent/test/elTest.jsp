<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="com.edu.emp.EmpDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>elTest.jsp</title>
</head>
<body>
<h4>파라미터</h4>
id : <%=request.getParameter("id") %> == ${param.id} == ${param["id"]}

<h4>헤더</h4>
header : <%=request.getHeader("User-Agent") %> == 
header :<font color="red">${header["User-Agent"]}</font>
${header}

<h4>속성읽기</h4>
request : <%=request.getAttribute("reqUsername") %> 	  == ${requestScope.reqUsername}<br>
											 <%--________Scope는 생략가능 --%>
session : <%=session.getAttribute("sessionUsername") %> == ${sessionUsername}<br>
application : <%=application.getAttribute("appUsername") %> == ${appUsername}<br>
beans : <%=((EmpDTO)session.getAttribute("emp")).getFirst_name()%> == ${emp.first_name}

<h4>EL 연산자</h4>
<% ArrayList list1 = null;
   ArrayList list2 = new ArrayList<String>();
   list2.add("바나나");
   String name ="<font color='blue'>홍길동</font>";
   
   request.setAttribute("list1", list1);
   request.setAttribute("list2", list2);
   request.setAttribute("name", name);
%>
null : ${ list1 == null } == ${list1 eq null } <br> <%-- ==와 eq는 똑같음 --%>
empty : ${ empty list2 } == <%= list2 == null || list2.size()==0 %> <br>
empty : ${ empty name }  ==	<%= name == null || name.length()==0 %>
<hr>
<H4>out tag</H4>
${name} <Br> 
<c:out value="${name}" escapeXml="false">
	<font color="red">이름없음</font>
</c:out>
</body>
</html>