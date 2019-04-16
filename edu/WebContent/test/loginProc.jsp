<%@page import="com.edu.member.LoginDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
//로그인 처리 // 로그아웃 처리
	String method = request.getMethod();
	if(method.equals("POST")){ //로그인처리 / login.jsp에 있는 mothod="post"를 말함
	String userid = request.getParameter("userid");
	String userpw = request.getParameter("userpw");
	if(LoginDAO.getInstance().loginCheck(userid, userpw)) {
		//세션에 로그인 정보 저장
		session.setAttribute("userid",userid);
		//response.sendRedirect("login2.jsp");
		RequestDispatcher rd = request.getRequestDispatcher("login2.jsp");
		rd.forward(request, response); //페이지 이동(request 전달)
	}else{
		//response.sendRedirect("login.jsp"); //페이지이동
		request.setAttribute("msg", "아디 오류");
		RequestDispatcher rd = request.getRequestDispatcher("login.jsp");
		rd.forward(request, response);
		}
	} else { //로그아웃 처리 / 첫번째if의 }를 적어줘야함
		session.invalidate(); //세션 무효화
		out.print("<script>");
		out.print("alert('로그아웃 작업이 완료되었습니다.');");
		out.print("location='login.jsp'"); //자바스크립트에서 페이지 이동
		out.print("</script>");
	}
%>
