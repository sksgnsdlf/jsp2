<%@page import="com.edu.emp.MemberDAO"%>
<%@page import="com.edu.emp.MemberDTO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form>
	id <input type="text"><br>
	pw <input type="text"><br>
	pw확인 <input type="text"><br>
	챙짠�챙�� <select name="job">
		<option></option>
 		 <option value="pro">챠��챘징�챗쨌쨍챘��챘짢쨍</option>
 		 <option value="dija">챘��챙��챙�쨈챘��</option>
 		 <option value="web">챙�쨔챠�쩌챘쨍�챘짝짭챙��</option>
 		</select> 
 		<br>
 	챙�짹챘쨀�<input type="radio" name="haman" value="man" /> 챘�짢챙��
       <input type="radio" name="haman" value="woman"/> 챙�짭챙��
       <br> 
 	<div class="a">
 	<label >챙��챗쨍째챙��챗째� </label><textarea  cols="20"> </textarea>
 	</div>
 	<br>
 	챙쨌짢챘짱쨍 <input type="checkbox" value="book">챘��챙��
 	    <input type="checkbox" value="book">챗짼�챙��
 	   <br>
 	<input type="submit" value="submit"> <input type="reset" value="reset"> 
</form>
<%-- <%
	List<MemberDTO> datas = MemberDAO.getInstance().selectAll();
	//스태틱 필드 참조(싱글톤을 활용한 예시)
	for(int i=0; i<datas.size(); i++){
		MemberDTO member = datas.get(i);
		out.print(member.getUserid() + "<br>");
		out.print(member.getUserpw() + "<br>");
		out.print(member.getUsername() + "<br>");
		out.print(member.getJob() + "<br>");
		out.print(member.getHobby() + "<br>");
		out.print(member.getInfo() + "<br>");
		out.print(member.getGender() + "<br>");
		out.print(member.getRegdate() + "<br>");
%>
<%
}
%> --%>
</body>
</html>