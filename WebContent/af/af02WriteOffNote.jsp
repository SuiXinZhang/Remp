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
<form action = "<%=path%>/ac/af02WriteOffNote.html" method = "post">
${msg}
<table border="1" align="center" width="45%">
<caption>
	票据核销
<hr width:"160px">
</caption>

<tr>
	<td>票据批次号</td>
	<td>
	<e:text name="aaf202" required="true" defval="${param.aaf202 }" readonly="true"/>
	</td>
</tr>

<tr>
	<td>起始编号</td>
	<td>
	<e:text name="aaf203" required="true" defval="${param.aaf203 }" />
	</td>
	<td>截止编号</td>
	<td>
	<e:text name="aaf204" required="true" defval="${param.aaf204 }" />
	</td>
</tr>
<tr>
	<td>领用人</td>
	<td>
	<e:text name="aaf205"  required="true" defval="${param.aaf205 }" readonly="true"/>
	</td>
	<td>领用日期</td>
	<td>
	<e:text name="aaf206" required="true" defval="${param.aaf206 }" readonly="true"/>
	</td>
</tr>
<tr>
	<td>开票金额</td>
	<td>
	<e:text name="aaf209"  required="true" />
	</td>
	<td>开票人</td>
	<td>
	<e:text name="aaf210" required="true" />
	</td>
	<td>开票日期</td>
	<td>
	<e:date name="aaf211" required="true" />
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
       <input type="submit" name="next" value="确定核销">
     </td>
     <td align="center">
       <input type="submit" name="next" value="返回" 
       formaction="af02Query.html" formnovalidate="formnovalidate">
     </td>
   </tr>
</table>
<e:hidden name="aaf201" value="${param.aaf201 }"/>
<input type="hidden" name="qaaf207" value="3"/>
</form>
</body>
</html>