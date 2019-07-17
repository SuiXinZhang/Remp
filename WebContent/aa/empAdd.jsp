<%@ page language="java"  pageEncoding="GBK"%>
<%@ taglib uri="http://org.wangxg/jsp/extl"  prefix="e"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<% String path = request.getContextPath(); %>
<html>
<head>
<title>empAdd</title>
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
<form action = "<%=path%>/aa/aa04Add.html" method = "post">
${msg}
<table border="1" align="center" width="45%">
<caption>
员工${empty param.aaa401?'添加':'修改' }
<hr width:"160px">
</caption>

<tr>
	<td>姓名</td>
	<td>
	<e:text name="aaa403" required="true" autofocus="true" defval="${ins.aaa403 }"/>
	</td>
</tr>
<tr>
	<td>岗位</td>
	<td>
	<e:text name="aaa404" required="true" defval="${ins.aaa404 }"/>
	</td>
</tr>

<tr>
	<td>所属部门</td>
	<td>
	<e:text name="aaa405" required="true"  defval="${empty ins.aaa401?ins.aaa302:param.aaa405}" readonly="true"/>
	</td>
</tr>

<tr>
	<td>民族</td>
	<td>
	<e:text name="aaa406" required="true"  defval="${ins.aaa406 }"/>
	</td>
</tr>

   <tr>
     <td>性别</td>
     <td>
        <e:radio name="aaa407" value="男:男,女:女,不确定:不确定" required="true" defval="${empty param.aaa401?'男':ins.aaa407}"/>
     </td>
   </tr>

<tr>
	<td>联系方式</td>
	<td>
	<e:text name="aaa408" defval="${ins.aaa408 }"/>
	</td>
</tr>

<tr>
	<td>住址</td>
	<td>
	<e:text name="aaa409" defval="${ins.aaa409 }"/>
	</td>
</tr>


 <tr>
    <td>备注</td>
    <td>
 		<e:textarea rows="5" cols="45" name="aaa410" defval="${ins.aaa410 }"/>
    </td>
 </tr>
 
 
   <tr>
     <td colspan="2" align="center">
       <input type="submit" name="next" value="${empty ins.aaa401?'添加':'修改'}" 
       		formaction="<%=path %>/aa/${empty ins.aaa401?'aa04Add.html':'aa04Modify.html' }">
       <input type="submit" name="next" value="返回" 
       		formaction="<%=path %>/aa/aa04Query.html" formnovalidate="formnovalidate">
     </td>
   </tr>
</table>


<input type="hidden" name="aaa201" value="1">
<input type="hidden" name="aaa301" value="${param.aaa301 }">
<input type="hidden" name="aaa401" value="${ins.aaa401 }">
<input type="hidden" name="aaa302" value="${param.aaa405 }">
</form>
</body>
</html>