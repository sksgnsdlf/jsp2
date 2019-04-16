<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@include file="../main/header.jsp"%>
<form action="<%=request.getContextPath()%>/insertMember">
<p>아이디  <input type="text" name="userid" size="20" ></p>
<p>pw <input type="password" name="userpw" size="20" ></p>
<p>pw확인  <input type="password" name="username" size="20" ></p>

직업  <select size="1" name="job">
	<optgroup label="">
	<option></option>
	<option>프로그래머</option>
	<option>디자이너</option>
	<option>웹퍼블리셔</option>
	</optgroup>
	</select><br><br>

성별  <input type="radio" name="gender" value="1" id="11" ><label for="11">남</label>
	<input type="radio" name="gender" value="2" id="12"><label for="12">여</label><br><br>

자기소개  <textarea cols="40" name="info" rows="5" spellcheck="true"></textarea><br><br>

취미:	
<input type="checkbox" name="hobby" value="man" id="1" ><label for="1">쇼핑</label>
<input type="checkbox" name="hobby" value="woman" id="2"><label for="2">인터넷</label>
<input type="checkbox" name="hobby" value="woman" id="3"><label for="3">음악감상</label>
<input type="checkbox" name="hobby" value="woman" id="4"><label for="4">독서</label>
<input type="checkbox" name="hobby" value="woman" id="5"><label for="5">스포츠</label><br><br>
<input type="submit" value="전송">
<input type="reset" value="다시선택">

</form>
<%@include file="../main/footer.jsp" %>
</body>
</html>