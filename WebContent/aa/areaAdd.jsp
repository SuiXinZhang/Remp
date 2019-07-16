<%@ page language="java"  pageEncoding="GBK"%>
<%@ taglib uri="http://org.wangxg/jsp/extl"  prefix="e"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<% String path = request.getContextPath(); %>
<html>
<head>
<title>projectAdd</title>
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
<form action = "<%=path%>/aa/aa06Add.html" method = "post">
${msg}
<table border="1" align="center" width="45%">
<caption>
区域${empty param.aaa601?'添加':'修改' }
<hr width:"160px">
</caption>

<tr>
	<td>名称</td>
	<td>
	<e:text name="aaa602" required="true" defval="${ins.aaa602 }"/>
	</td>
</tr>


<tr>
	<td>地址</td>
	<td>
	<e:text name="aaa603" required="true"  defval="${ins.aaa603 }"/>
	</td>
</tr>

<tr>
	<td>面积</td>
	<td>
	<e:number name="aaa604" required="true" step="1" defval="${ins.aaa604 }"/>
	</td>
</tr>


 <tr>
    <td>备注</td>
    <td>
 		<e:textarea rows="5" cols="45" name="aaa605" defval="${ins.aaa605 }"/>
    </td>
 </tr>
 
 
   <tr>
     <td colspan="2" align="center">
       <input type="submit" name="next" value="${empty ins.aaa601?'添加':'修改'}" 
       		formaction="<%=path %>/aa/${empty ins.aaa601?'aa06Add.html':'aa06Modify.html' }">
       <input type="submit" name="next" value="返回" 
       		formaction="<%=path %>/aa/aa06Query.html" formnovalidate="formnovalidate">
     </td>
   </tr>
</table>


<input type="hidden" name="aaa201" value="1">
<input type="hidden" name="aaa601" value="${ins.aaa601 }">
</form>
</body>
</html>