<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="../ckeditor/ckeditor.js"></script>
</head>
<body>
<form>
	<input type="text" name="title" /><br>
	<textarea rows="3" cols="40" id="contents" name="contents"></textarea><br>
	<script>
		CKEDITOR.replace('contents',{ 
			language: 'ko',
			uiColor: '#9AB8F3',
			toolbar : [{ name: 'insert', items:['Image','Table']}],
			filebrowserUploadUrl:'<%=request.getContextPath()%>/ckeditor/fileUpload.jsp'
		});
	</script>
	<input type="text" name="attachFile" /> <%-- 이거만 바꿔쓰면 된다고함(?) --%>
	<input type="button" onclick="window.open('fileUploadForm.jsp','file', 'width=200,height=200')" value="파일업로드"/><br>
	<input type="submit" value="저장" />
</form>
</body>
</html>