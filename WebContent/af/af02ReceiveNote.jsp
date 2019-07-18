<%@ page language="java"    pageEncoding="GBK"  %>
<%@ taglib uri="http://org.wangxg/jsp/extl"  prefix="e"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<% String path = request.getContextPath(); %>
<html>
<head>
<title>Insert title here</title>
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
<form action = "<%=path%>/ac/af02ReceiveNote.html" method = "post">
${msg}
<table border="1" align="center" width="45%">
<caption>
	领用票据
<hr width:"160px">
</caption>

<tr>
	<td>票据批次号</td>
	<td>
	<e:text name="aaf202" required="true" defval="${param.aaf202 }" readonly="true" />
	</td>
</tr>

<tr>
	<td>起始编号</td>
	<td>
	<e:text name="aaf203" required="true" defval="${param.aaf203 }"/>
	</td>
	<td>截止编号</td>
	<td>
	<e:text name="aaf204" required="true" defval="${param.aaf204 }"/>
	</td>
</tr>

<tr>
	<td>领用人</td>
	<td>
	<e:text name="aaf205"  required="true" />
	</td>
	<td>领用日期</td>
	<td>
	<e:date name="aaf206" required="true" />
	</td>
</tr>
   <tr>
     <td align="center">
       <input type="submit" name="next" value="领用">
     </td>
     <td align="center">
       <input type="submit" name="next" value="返回" 
       formaction="af02Query.html" formnovalidate="formnovalidate">
     </td>
   </tr>
</table>
<e:hidden name="aaf201" value="${param.aaf201 }"/>
<input type="hidden" name="qaaf207" value="2" />
</form>
</body>
</html>