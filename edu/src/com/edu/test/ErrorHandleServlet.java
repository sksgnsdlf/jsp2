package com.edu.test;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/ErrorHandleServlet")
public class ErrorHandleServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
 
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		Integer code = (Integer)request.getAttribute("javax.servlet.error.status_code");
		String message = (String)request.getAttribute("javax.servlet.error.message");
		Object type = request.getAttribute("javax.servlet.error.exception_type");
		Throwable exception = (Throwable)request.getAttribute("javax.servlet.error.exception");
		String uri = (String)request.getAttribute("javax.servlet.error.request_uri");
		
		out.print("code" + code + "<br>");
		out.print("message" + message + "<br>");
		out.print("type" + type + "<br>");
		out.print("exception" + exception + "<br>");
		out.print("uri" + uri + "<br>");
		out.close();
		}
}
