package com.edu.test;

import java.io.IOException;

import javax.servlet.Filter;  //<--이걸로 import 해야함
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class FlowFilterTwo implements Filter{

	@Override
	public void destroy() {
		// TODO Auto-generated method stub
		
	}
	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {
		System.out.println("do Filter 호출 전...Two");
		//로그인 여부 체크
		if(((HttpServletRequest)request).getSession().getAttribute("userid") == null){
			((HttpServletResponse)response).sendRedirect("/edu/member/login.jsp");
		}else {
			chain.doFilter(request, response); //서블릿
		}
			System.out.println("do Filter 호출 후...Two");
	}
	@Override
	public void init(FilterConfig filterConfig) throws ServletException {
		System.out.println("init 호출...Two");
	}
}
