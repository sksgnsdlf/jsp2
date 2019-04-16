package com.edu.test;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Enumeration;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/LoginServ")
public class LoginServ extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
    public LoginServ() {
        super();
        // TODO Auto-generated constructor stub
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	
		response.setContentType("text/html; charset=UTF-8");
    	PrintWriter out = response.getWriter();
    	
    	//쿼리문자열 읽기
    	out.print("query String = " + request.getQueryString() +"<hr>");
    	//파라미터
    	out.print("userid : + " + request.getParameter("userid")+"<hr>");
    	
    	Enumeration<String> params = request.getParameterNames();
    	out.print("<hr>");
    	while(params.hasMoreElements()) {
    		String param_name = params.nextElement();
    		String param_value = request.getParameter(param_name);
    		out.print(param_name + " : " + param_value + "<br>");
    	}
    	
		if(request.getParameter("userid").contentEquals("admin")) {
			out.print("login success");
			//response.sendRedirect("index.jsp");
		} else {
			out.print("login fail");
			//로그인이 안된 경우 로그인 페이지 이동
			//response.sendRedirect("login.jsp");
		}
	}

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("post 로그인 완료");
		System.out.println(request.getParameter("userid"));
	}

}
