<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="my" tagdir="/WEB-INF/tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>tagTest.jsp</title>
</head>
<body>
	<my:selectDept></my:selectDept><br>
	<my:selectobs></my:selectobs><br>
	<my:time>오늘 현재 날짜는 </my:time><br>
	<my:sum num1="10" num2="20"></my:sum>
	<my:chart color="red" title="서  점" w="300">
	소설<br>
	역사<br>	
	</my:chart>
	<my:chart color="blue" title="운  동">
	하키<br>
	농구<br>	
	</my:chart>
	지역 :<my:select location="area" seoul="서울" daejun="대전" busan="부산"/>
	취미 :<my:select location="hobby" seoul="스키" daejun="독서" busan="여행"/>
</body>
</html>