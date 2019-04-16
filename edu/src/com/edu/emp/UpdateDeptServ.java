package com.edu.emp;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.beanutils.BeanUtils;

/**
 * Servlet implementation class UpdateDeptServ
 */
@WebServlet("/dept/updateDept")
public class UpdateDeptServ extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String department_id = request.getParameter("department_id");
		DeptBeans beans = DeptDAO.getInstance().getDept(department_id);
		request.setAttribute("beans", beans);
		request.getRequestDispatcher("updateDept.jsp").forward(request,response);
	}

	//수정 처리
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		DeptBeans beans = new DeptBeans();
		try {
			BeanUtils.copyProperties(beans, request.getParameterMap());
		}catch(Exception e) {
			e.printStackTrace();
		}
		DeptDAO.getInstance().deptUpdate(beans);
		response.sendRedirect("selectDept");
	}

}
