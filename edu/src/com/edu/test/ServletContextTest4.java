package com.edu.test;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.edu.emp.DeptBeans;

@WebServlet("/context4")
public class ServletContextTest4 extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 속성을 추출
		response.setContentType("text/html; charset=UTF-8");
    	PrintWriter out = response.getWriter();
    	ServletContext sc = this.getServletContext();
    	String date2 = (String) sc.getAttribute("date2");
    	DeptBeans beans = (DeptBeans) sc.getAttribute("공유부서");
    	out.print(date2 + "<br>" );
    	out.print(beans + "<br>" );
	}
}
