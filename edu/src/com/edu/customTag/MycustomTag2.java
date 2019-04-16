package com.edu.customTag;

import java.io.IOException;
import java.io.StringWriter;

import javax.servlet.jsp.JspContext;
import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.SimpleTagSupport;

public class MycustomTag2 extends SimpleTagSupport{

	private String color;
	
	public String getColor() {
		return color;
	}


	public void setColor(String color) {
		this.color = color;
	}


	@Override
	public void doTag() throws JspException, IOException {
		JspContext context = this.getJspContext();
		JspWriter out = context.getOut();
		StringWriter sw = new StringWriter();
		this.getJspBody().invoke(sw);
		String body = sw.toString();
		
		out.print("<table border='1'><tr><td bgcolor='"+color+"'>" + body);
		out.print("</tr></td></table>");
	}

}
