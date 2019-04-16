<%@ page contentType="text/html; charset=euc-kr" %>
<%@ page import="java.util.Iterator"%>
<%@ page import="java.util.List"%>
<%@ page import="java.io.*"%>
<%@ page import="org.apache.commons.fileupload.FileItem"%>
<%@ page import="org.apache.commons.fileupload.disk.DiskFileItemFactory"%>
<%@ page import="org.apache.commons.fileupload.servlet.ServletFileUpload"%>
<html>  
<head><title>���ε� ����</title></head>
<body>
<%
	String up_dir = request.getParameter("up_dir")!=null?request.getParameter("up_dir") :"/upload";    // �⺻ ���ε� ����
	String temp_dir = request.getParameter("temp_dir")!=null?request.getParameter("temp_dir") :"c:/Temp";  // �ӽ� ���ε� ����
	String save_dir = "";
	String fileName = "";

	// 1. multipart/form-data ���� Ȯ��
	boolean isMultipart = ServletFileUpload.isMultipartContent(request);
	if (isMultipart) {
		// 2. �޸𸮳� ���Ϸ� ���ε� �����͸� �����ϴ� FileItem�� Factory ����
		DiskFileItemFactory factory = new DiskFileItemFactory();
		factory.setSizeThreshold(1024*10);
		factory.setRepository(new File(temp_dir));

		// 3. ���ε� ��û�� ó���ϴ� ServletFileUpload ����
		ServletFileUpload upload = new ServletFileUpload(factory);
		
		// 4. ���ε� ��û �Ľ��ؼ� FileItem ��� ����
		List<FileItem> items = upload.parseRequest(request);
		
		Iterator<FileItem> iter = items.iterator();
		while (iter.hasNext()) {
			FileItem item = iter.next();
			// 5. FileItem�� �� �Է� �׸����� ���ο� ���� �˸��� ó��
			if (!item.isFormField()) {
				//String name = item.getFieldName();
				fileName = item.getName();
				long sizeInBytes = item.getSize();
				int pos = fileName.lastIndexOf("\\");
				if ( pos >=0 )
					fileName = fileName.substring(pos+1);
				//6. ���� ���� : ���ϸ� �ߺ����� üũ�ؾ���.
				//save_dir = application.getRealPath(up_dir) + "/" + fileName ; 				
				save_dir =  "d:/upload/" + fileName ;
				item.write(new File(save_dir));		
			}
		}
	} 

	out.print("<script>alert('���ε�Ϸ�'); opener.document.forms[0].attachFile.value = '"+fileName+"'; window.close();</script>");		
%>
</body>
</html>