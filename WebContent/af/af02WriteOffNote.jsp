<%@ page language="java"    pageEncoding="GBK"  %>
<%@ taglib uri="http://org.wangxg/jsp/extl"  prefix="e"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<% String path = request.getContextPath(); %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Write Off Note</title>
</head>
<style type="text/css">
tr 
{
	height: 25px;
}
</style>
<body>
<br>
<br>
<form action = "<%=path%>/ac/af02writeOffNote.html" method = "post">
${msg}
<table border="1" align="center" width="45%">
<caption>
	票据核销
<hr width:"160px">
</caption>

<tr>
	<td>票据前缀</td>
	<td>
	<e:text name="aaf202" required="true" defval="${param.aaf202 }" readonly="true"/>
	</td>
</tr>

<tr>
	<td>起始编号</td>
	<td>
	<e:text name="aaf203" required="true" defval="${param.aaf203 }" readonly="true"/>
	</td>
	<td>截止编号</td>
	<td>
	<e:text name="aaf204" required="true" defval="${param.aaf204 }" readonly="true"/>
	</td>
</tr>

<tr>
	<td>核销人</td>
	<td>
	<e:text name="aaf213"  required="true" />
	</td>
	<td>核销日期</td>
	<td>
	<e:date name="aaf214" required="true" />
	</td>
</tr>
   <tr>
     <td align="center">
       <input type="submit" name="next" value="确定">
     </td>
     <td align="center">
       <input type="submit" name="next" value="返回">
     </td>
   </tr>
</table>
</form>
</form>
</body>
</html>