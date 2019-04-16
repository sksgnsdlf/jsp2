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

@WebServlet("/CookieTestServlet")
public class CookieTestServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html; charset=utf-8");
		PrintWriter out = response.getWriter();
		
		//쿠기저장
		Cookie c1 = new Cookie("id","guest");
		c1.setPath("/");  //쿠키이어주는 연결고리
		response.addCookie(c1);
		
		Cookie c2 = new Cookie("code","0001");
		c2.setMaxAge(60*60*24);  //쿠키만료시간을 현재로부터 1일동안 유지
		c2.setPath("/");
		response.addCookie(c2);
		
		Cookie c3 = new Cookie("subject","java");
		c3.setMaxAge(60*60*24*10);  //쿠키만료시간을 현재로부터 10일동안 유지
		c3.setPath("/");
		response.addCookie(c3);
		
		Cookie c4 = CookieBox.createCookie("time", "월4", "/", 60*60);
		response.addCookie(c4);
		
		out.print("쿠기전송완료");
		out.close();
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
