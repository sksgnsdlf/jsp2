package com.edu.test;

import javax.servlet.ServletContextAttributeEvent;
import javax.servlet.ServletContextAttributeListener;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;

//application = ServletContext == 컨테이너
@WebListener
public class TestServletContextListener implements ServletContextListener, ServletContextAttributeListener{

	@Override
	public void attributeAdded(ServletContextAttributeEvent event) {
		// application.setAttibute()
		System.out.println("속성 추가");
	}

	@Override
	public void attributeRemoved(ServletContextAttributeEvent event) {
		// application.removeAttibute()
		System.out.println("속성 삭제");
	}

	@Override
	public void attributeReplaced(ServletContextAttributeEvent event) {
		// application.setAttibute()
		System.out.println("속성 변경");
	}

	@Override
	public void contextDestroyed(ServletContextEvent sce) {
		//톰캣 서버(웹 어플리케이션)를 stop하면 실행됨
		System.out.println("어플리케이션 중지");
	}

	@Override
	public void contextInitialized(ServletContextEvent sce) {
		//톰캣 서버(웹 어플리케이션)를 start하면 실행됨
		System.out.println("어플리케이션 시작");
	}
}
