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
����${empty param.aaa501?'���':'�޸�' }
<hr width:"160px">
</caption>

<tr>
	<td>���ͱ��</td>
	<td>
	<e:text name="aaa502" required="true" autofocus="true" defval="${ins.aaa502 }"/>
	</td>
</tr>
<tr>
	<td>��Ʒ����</td>
	<td>
	<e:text name="aaa503" required="true" autofocus="true" defval="${ins.aaa503 }"/>
	</td>
</tr>

<tr>
	<td>����ṹ</td>
	<td>
	<e:text name="aaa504" required="true"  defval="${ins.aaa504 }"/>
	</td>
</tr>

<tr>
	<td>�������</td>
	<td>
	<e:number name="aaa505" required="true" step="1" defval="${ins.aaa505 }"/>
	</td>
</tr>

<tr>
	<td>�������</td>
	<td>
	<e:number name="aaa506" required="true"  step="1" defval="${ins.aaa506 }"/>
	</td>
</tr>

<tr>
	<td>����ƽ��ͼ</td>
	<td>
	<e:text name="aaa507" defval="${ins.aaa507 }"/>
	</td>
</tr>


 <tr>
    <td>��ע</td>
    <td>
 		<e:textarea rows="5" cols="45" name="aaa508" defval="${ins.aaa508 }"/>
    </td>
 </tr>
 
 
   <tr>
     <td colspan="2" align="center">
       <input type="submit" name="next" value="${empty ins.aaa501?'���':'�޸�'}" 
       		formaction="<%=path %>/aa/${empty ins.aaa501?'aa05Add.html':'aa05Modify.html' }">
       <input type="submit" name="next" value="����" 
       		formaction="<%=path %>/aa/aa05Query.html" formnovalidate="formnovalidate">
     </td>
   </tr>
</table>


<input type="hidden" name="aaa201" value="1">
<input type="hidden" name="aaa501" value="${ins.aaa501 }">
</form>
</body>
</html>