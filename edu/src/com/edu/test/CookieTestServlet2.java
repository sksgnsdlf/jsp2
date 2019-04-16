package com.edu.test;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.edu.common.CookieBox;


@WebServlet("/CookieTestServlet2")
public class CookieTestServlet2 extends HttpServlet {
	private static final long serialVersionUID = 1L;
 
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html; charset=utf-8");
		PrintWriter out = response.getWriter();
		Cookie[] list = request.getCookies();
		for(int i=0; i<list.length; i++) {
			//out.print(list[i].getName() + ":" + list[i].getValue()+"<br>");;
			//특정쿠키만 찾을때
			if("code".equals(list[i].getName())) {
				out.print(list[i].getValue()+"<br>");;
			}
		}
		
		CookieBox cb = new CookieBox(request);
		out.print("time" + " : " +cb.getValue("time"));
		out.close();
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
