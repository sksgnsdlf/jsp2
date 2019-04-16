<%@page import="com.edu.emp.EmpDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//empProc2.jsp : 사원등록	
%>

<jsp:useBean id="dto" class="com.edu.emp.EmpDTO"/>
<jsp:setProperty name="dto" property="*"/>
<%
	int r = EmpDAO.getInstance().insert(dto);
	out.print(r + "건이 등록됨"); //번호,이메일 중복이 되면 안됨
%>
