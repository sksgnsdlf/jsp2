package com.edu.test;

import java.io.IOException;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;

/*@WebFilter(urlPatterns= {"/member/"}, 
		   servletNames="SelectDeptListServ", 
		   filterName="flow3") */
public class FlowFilterOne implements Filter {

	public FlowFilterOne() {
        // TODO Auto-generated constructor stub
    }

	public void destroy() {
		// TODO Auto-generated method stub
	}

	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		System.out.println("do Filter 호출 전...One");
		chain.doFilter(request, response); //서블릿
		System.out.println("do Filter 호출 후...One");
	}

	public void init(FilterConfig fConfig) throws ServletException {
		System.out.println("init 호출...One");
	}

}
