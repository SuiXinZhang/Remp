<%@ page language="java"  pageEncoding="GBK"%>
<%@ taglib uri="http://org.wangxg/jsp/extl"  prefix="e"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<% String path = request.getContextPath(); %>
<html>
<head>
<title>公司管理</title>
</head>
<style type="text/css">
tr 
{
	height: 25px;
}
</style>
<script type="text/javascript">
var count = 0;
function onEdit(vaaa101)
{
	var myform = document.getElementById("myform");
	myform.action = "<%=path%>/aa01FindById.html?aaa101=" + vaaa101;
	myform.submit();
}
</script>
<body>
	<form action = "" id = "myform" method = "post">

		<a href="#" onclick = "onEdit('1')" >思安</a>
		<input type="submit" value="注册" formaction="<%=path %>/aa/companyAdd.jsp"> 


	</form>
	
</body>
</html>