<%@ page language="java"    pageEncoding="GBK"%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
</head>
<body>
<form action="<%=request.getContextPath() %>/UploadHandleServlet" enctype="multipart/form-data" method="post">
     ѡ���ļ��� <input type="file" name="excelfilename"><br>
     <input type="submit" value="�������"/>
</form>
</body>
</html>
