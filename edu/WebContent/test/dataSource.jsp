<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="javax.sql.DataSource"%>
<%@page import="javax.naming.InitialContext"%>
<%@page import="javax.naming.Context"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>datasource.jsp</title>
</head>
<body>
<%
Context initContext = new InitialContext();
Context envContext  = (Context)initContext.lookup("java:/comp/env/");
DataSource ds = (DataSource)envContext.lookup("jdbc/oracle");
Connection conn = ds.getConnection();	//커넥션풀에서 할당
String sql = "select * from employees where department_id=? order by employee_id";
PreparedStatement pstmt = conn.prepareStatement(sql);
String dept = request.getParameter("deptno");
pstmt.setString(1, dept);
ResultSet rs = pstmt.executeQuery();
while(rs.next()){
	out.print(rs.getString("employee_id") + " : " + 
    rs.getString("first_name")+ "<br>");
}
conn.close();  //풀에 반납
%>
</body>
</html>