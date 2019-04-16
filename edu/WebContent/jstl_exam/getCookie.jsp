<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
value - ${cookie.subject.value}<br>
maxAge - ${cookie.subject.maxAge}<br>
path -${cookie.subject.path}<br>
domain - ${cookie.subject.domain} <br>
<%
Cookie[] list = request.getCookies();
for(int i=0; i<list.length; i++) {
	//out.print(list[i].getName() + ":" + list[i].getValue()+"<br>");;
	//특정쿠키만 찾을때
	if("subject".equals(list[i].getName())) {
		out.print(list[i].getValue()+"<br>");;
	}
}
%>
</body>
</html>