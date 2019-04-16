<%@page import="com.edu.emp.EmpDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//empProc.jsp : 사원등록 처리 페이지
	request.setCharacterEncoding("utf-8");
%>

<jsp:useBean id="dto" class="com.edu.emp.EmpDTO" scope="page"/>
<jsp:setProperty name="dto" property="*"/>
<jsp:setProperty name="dto" property="email" value="a@b.c"/>

<%
	EmpDTO dto2;
	if(pageContext.getAttribute("dto2") != null){
		dto = (EmpDTO)pageContext.getAttribute("dto2");//지정된 영역에서 객체를 추출하거나
	}
	dto2 = new EmpDTO();								//생성을 함
	pageContext.setAttribute("dto2", dto2);
	dto2.setFirst_name(request.getParameter("first_name"));
	dto2.setLast_name(request.getParameter("last_name"));
	dto2.setEmail("a@b.c");
%>

<%=dto.getFirst_name()%>
<hr>
<jsp:getProperty name="dto" property="first_name" />