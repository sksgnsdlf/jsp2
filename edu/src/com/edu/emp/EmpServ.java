package com.edu.emp;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/EmpServ")
public class EmpServ extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		
		String employee_id = request.getParameter("employee_id");
		String first_name = request.getParameter("first_name");
		String last_name = request.getParameter("last_name");
		String email = request.getParameter("email");
		String phone_number = request.getParameter("phone_number");
		String hire_date = request.getParameter("hire_date");
		String job_id = request.getParameter("job_id");
		String salary = request.getParameter("salary");
		String commission_pct = request.getParameter("commission_pct");
		String manager_id = request.getParameter("manager_id");
		String department_id = request.getParameter("department_id");
		
		//JDBC - insert
		EmpDAO dao = new EmpDAO();
		EmpDTO dto = new EmpDTO();
		dto.setEmployee_id(employee_id);
		dto.setLast_name(last_name);
		dto.setEmail(email);
		dto.setHire_date(hire_date);
		dto.setJob_id(job_id);
		
		int r = dao.insert(dto);
		if(r == 1) {
			out.print("등록완료<hr>");
		} else {
			out.print("등록실패<hr>");
		}
		
		out.print("employee_id : " + employee_id + "<br>");
		out.print("first_name : " + first_name+ "<br>");
		out.print("last_name : " + last_name+ "<br>");
		out.print("email : " + email+ "<br>");
		out.print("phone_number : " + phone_number+ "<br>");
		out.print("hire_date : " + hire_date+ "<br>");
//		out.print("job_id : " + job_id+ "<br>");
//		out.print("salary : " + salary+ "<br>");
//		out.print("commission_pct : " + commission_pct+ "<br>");
//		out.print("manager_id : " + manager_id+ "<br>");
//		out.print("department_id : " + department_id+ "<br>");
	}

}
