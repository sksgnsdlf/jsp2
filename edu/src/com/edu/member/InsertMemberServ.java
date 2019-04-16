package com.edu.member;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.beanutils.BeanUtils;

import com.edu.emp.DeptBeans;
import com.edu.emp.DeptDAO;
import com.edu.emp.MemberDAO;
import com.edu.emp.MemberDTO;

/**
 * Servlet implementation class MemberBean
 */
@WebServlet("/insertMember")
public class InsertMemberServ extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();

	//파라미터를 빈즈에 담고 (<jsp:userBean,,, <jsp:setProperty
		
			MemberDTO beans = new MemberDTO();
		  try {
			BeanUtils.copyProperties(beans, request.getParameterMap());
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} 
		/* 
		 * beans.setDepartment_id(request.getParameter("department_id"));
		 * beans.setDepartment_name(request.getParameter("department_name"));
		 * beans.setManager_id(request.getParameter("manager_id"));
		 * beans.setLocation_id(request.getParameter("location_id"));
		 */
	//DAO클래스의 insert메서드 호출
		MemberDAO.getInstance().insert(beans);
		response.sendRedirect("member/selectMemberList.jsp");
	}
}
