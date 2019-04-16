package com.edu.test;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet({"/first","/second"}) //servlet2.5부터 지정
public class FirstServiet extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html; charset=UTF-8"); //문자인코딩인데 1번째로써야함
		PrintWriter out = response.getWriter(); //클라이언트로 전송되서 넘어감
		out.print("<html>");
		out.append("<head><title>응답테스트</title></head>")
		   .append("<body>테스트</body>");
		out.println("</html>");
		out.flush();// 비운다. 클라이언트로 결과 전송
		out.close(); //자원해제
		out.print("추가"); //close해서 이건 안나옴
	}

	@Override // 메모리로 로딩될 때 최초 한번만 실행(초기화)
	public void init(ServletConfig config) throws ServletException {
		System.out.println("init 실행");
	}	
}
