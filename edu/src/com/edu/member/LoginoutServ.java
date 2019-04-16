package com.edu.member;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.websocket.Session;

import jdk.internal.org.objectweb.asm.tree.analysis.Value;

/**
 * Servlet implementation class LoginoutServ
 */
@WebServlet("/loginoutServ") //경로의 개념이 서블릿에선 edu/ + 로 시작한다
public class LoginoutServ extends HttpServlet {
	private static final long serialVersionUID = 1L;
 
	//로그아웃처리
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		session.invalidate();
		response.sendRedirect("main/main.jsp"); //다시 로그인페이지로 감
	}
	
	//로그인처리
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("userid");
		String pw = request.getParameter("userpw");

		
		boolean result = LoginDAO.getInstance().loginCheck(id, pw);
		if(result == true) { //로그인이 된 경우
			//쿠키(id 저장)
			//idSave 파라미터이 널이 아니고 "y"라면 userid 파라미터를 쿠키에 저장
			String idSave = request.getParameter("idSave");
			if(idSave != null && idSave.equals("y")) {
				Cookie c3 = new Cookie("userid",id);
				c3.setMaxAge(60*60*24*10);  //쿠키만료시간을 현재로부터 10일동안 유지
				c3.setPath("/");
				response.addCookie(c3);
			}			
			HttpSession session = request.getSession();
			session.setAttribute("userid", id);
			response.sendRedirect("main/main.jsp");
		}else {				//로그인 실패했을때
			PrintWriter out = response.getWriter();
			out.print("<script>");
			out.print("alert('login id error');");
			out.print("location='main/main.jsp';");
			out.print("</script>");
		}
		System.out.println("로그인 서블릿 실행");
	}
}
