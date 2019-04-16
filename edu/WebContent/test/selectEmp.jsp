<%@page import="java.util.List"%>
<%@page import="com.edu.emp.EmpDTO"%>
<%@page import="com.edu.emp.EmpDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>selectEmp.jsp</title>
<script>
function empSelelct(id, name){
	opener.document.frm.manager_id.value = id;
	opener.document.frm.name.value = name;
	window.close();
}
</script>
</head>
<body>
<%
	//EmpDAO dao = new EmpDAO(); //싱글톤때문에 삭제
	//단건조회코드
 /* 	DeptDTO dto = new DeptDTO();
	dto.setEmployee_id(request.getParameter("employee_id"));
	EmpDTO emp = dao.selectOne(dto);
	out.print(emp.getEmployee_id()+ "<br>");
	out.print(emp.getFirst_name()+ "<br>");
	out.print(emp.getLast_name()+ "<br>");
	out.print(emp.getEmail()+ "<br>");	  
	 */
	//전체조회
	List<EmpDTO> datas = EmpDAO.getInstance().selectAll();
	//스태틱 필드 참조(싱글톤을 활용한 예시)
	for(int i=0; i<datas.size(); i++){
		EmpDTO emp = datas.get(i);
		out.print(emp.getEmployee_id() + ",");
		out.print(emp.getFirst_name() + ",");
		out.print(emp.getLast_name() + ",");
		out.print(emp.getEmail() + "<br>");
%>
<a href="#" onclick="empSelelct('<%=emp.getEmployee_id()%>','<%=emp.getFirst_name()%> <%=emp.getLast_name()%>')">선택</a><br>
<%
	}
%>

</body>
</html>