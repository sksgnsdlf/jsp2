package com.edu.customTag;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.tagext.TagSupport;

public class MyCustomTag extends TagSupport{

	
	private String color;
	
	public String getColor() {
		return color;
	}

	public void setColor(String color) {
		this.color = color;
	}

	@Override
	public int doEndTag() throws JspException {
		System.out.println("종료 태그를 만났습니다.");
		System.out.println("color 속성 : " + color);
		return super.doEndTag();
	}

	@Override
	public int doStartTag() throws JspException {
		System.out.println("시작 태그를 만났습니다.");
		return super.doStartTag();
	}
}
