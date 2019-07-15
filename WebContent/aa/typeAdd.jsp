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
<form action = "<%=path%>/aa/aa05Add.html" method = "post">
${msg}
<table border="1" align="center" width="45%">
<caption>
户型${empty param.aaa501?'添加':'修改' }
<hr width:"160px">
</caption>

<tr>
	<td>户型编号</td>
	<td>
	<e:text name="aaa502" required="true" autofocus="true" defval="${ins.aaa502 }"/>
	</td>
</tr>
<tr>
	<td>产品类型</td>
	<td>
	<e:text name="aaa503" required="true" autofocus="true" defval="${ins.aaa503 }"/>
	</td>
</tr>

<tr>
	<td>房间结构</td>
	<td>
	<e:text name="aaa504" required="true"  defval="${ins.aaa504 }"/>
	</td>
</tr>

<tr>
	<td>建筑面积</td>
	<td>
	<e:number name="aaa505" required="true" step="1" defval="${ins.aaa505 }"/>
	</td>
</tr>

<tr>
	<td>套内面积</td>
	<td>
	<e:number name="aaa506" required="true"  step="1" defval="${ins.aaa506 }"/>
	</td>
</tr>

<tr>
	<td>户型平面图</td>
	<td>
	<e:text name="aaa507" defval="${ins.aaa507 }"/>
	</td>
</tr>


 <tr>
    <td>备注</td>
    <td>
 		<e:textarea rows="5" cols="45" name="aaa508" defval="${ins.aaa508 }"/>
    </td>
 </tr>
 
 
   <tr>
     <td colspan="2" align="center">
       <input type="submit" name="next" value="${empty ins.aaa501?'添加':'修改'}" 
       		formaction="<%=path %>/aa/${empty ins.aaa501?'aa05Add.html':'aa05Modify.html' }">
       <input type="submit" name="next" value="返回" 
       		formaction="<%=path %>/aa/aa05Query.html" formnovalidate="formnovalidate">
     </td>
   </tr>
</table>


<input type="hidden" name="aaa201" value="1">
<input type="hidden" name="aaa501" value="${ins.aaa501 }">
</form>
</body>
</html>