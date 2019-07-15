<%@ page language="java"  pageEncoding="GBK"%>
<%@ taglib uri="http://org.wangxg/jsp/extl"  prefix="e"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<% String path = request.getContextPath(); %>
<html>
<head>
<title>teamAdd</title>
</head>
<style type="text/css">
tr
{
width: 60%;
height: 30px
}
</style>
<body>
<br>
<br>
<form action = "<%=path%>/aa/aa03Add.html" method = "post">
${msg}
<table border="1" align="center" width="45%">
<caption>
部门${empty param.aaa301?'添加':'修改' }
<hr width:"160px">
</caption>
<tr>
	<td>部门名称</td>
	<td>
	<e:text name="aaa302" required="true" autofocus="true" defval="${ins.aaa302 }"/>
	</td>
</tr>
<tr>
	<td>部门描述</td>
	<td>
	<e:textarea name="aaa303" rows="5" cols="45" required="true"  defval="${ins.aaa303 }"/>
	</td>
</tr>
 
 
   <tr>
     <td colspan="2" align="center">
       <input type="submit" name="next" value="${empty ins.aaa301?'添加':'修改'}" 
       		formaction="<%=path %>/aa/${empty ins.aaa301?'aa03Add.html':'aa03Modify.html' }">
       <input type="submit" name="next" value="返回" 
       		formaction="<%=path %>/aa/aa03Query.html" formnovalidate="formnovalidate">
     </td>
   </tr>
</table>


<input type="hidden" name="aaa201" value="1">
<input type="hidden" name="aaa301" value="${ins.aaa301 }">
</form>
</body>
</html>