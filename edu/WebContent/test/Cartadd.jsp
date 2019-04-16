<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//cartadd.jsp
	//application
	List<String> cartlist;
	if(session.getAttribute("cart") ==null){
		cartlist = new ArrayList<String>();
	} else{
		cartlist = (List<String>)session.getAttribute("cart");
	}
	String goodno = request.getParameter("goodno");
	cartlist.add(goodno); //장바구니에 담고
	session.setAttribute("cart",cartlist);
	response.sendRedirect("Goodlist.jsp");
%>