<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="my" uri="/WEB-INF/tlds/myTag.tld" %>
<%@ taglib prefix="my2" uri="http://mytag2.tag" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<my:first color="red"> </my:first>
	<my2:second color="green">커스텀 태그 연습</my2:second>
</body>
</html>