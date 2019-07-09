<%@ page language="java"    pageEncoding="GBK"%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
</head>
<body>
<form action="<%=request.getContextPath() %>/UploadHandleServlet" enctype="multipart/form-data" method="post">
     选择文件： <input type="file" name="excelfilename"><br>
     <input type="submit" value="数据入库"/>
</form>
</body>
</html>
