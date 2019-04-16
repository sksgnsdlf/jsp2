package com.edu.test;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Enumeration;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class NetInfoServlet
 */
@WebServlet("/NetInfoServlet")
public class NetInfoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		//서버정보
		out.println("서버 이름 : " + request.getServerName() +"<br>");
		out.println("서버 address : " + request.getLocalAddr() +"<br>" );//참조하는 상대방 아이피
		out.println("client address : " + request.getRemoteAddr() +"<br>"); //내 아이피
		//요청 url
		out.println("요청 url : " + request.getRequestURL() +"<br>");
		out.println("요청 uri : " + request.getRequestURI() +"<br>");
		out.println("contextPath : " + request.getContextPath() +"<br>");
		
		//실습 과제
		//url로 부터 경로명을 추출 (getContextPath()명 다음에 )
		String strr= request.getRequestURI();
		String strrr = strr.substring(5,19);
		out.println("실습 과제 : " + strrr +"<Br>");
		//헤더 정보
		out.print("User-Agent : " + request.getHeader("User-Agent") +"<br>");
		
		//모든 헤더 정보
		Enumeration<String> headers = request.getHeaderNames();
		while(headers.hasMoreElements()) {
			String headerName = headers.nextElement();
			String headerValue = request.getHeader(headerName);
			out.print("<font color='blue'>" + headerName + ": </font> " + headerValue + "<br>");
		}
		
		//추가정보
		out.print("<hr>");
		out.print("요청방식: " + request.getMethod() + "<br>");
		out.print("컨텍스트 타입/길이 : " + request.getContentType() + "<br>");
		out.print("path info: " + request.getPathInfo() + "<br>");
	}

	private String substring(int indexOf, int i) {
		// TODO Auto-generated method stub
		return null;
	}

	private String substring(String string) {
		// TODO Auto-generated method stub
		return null;
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
