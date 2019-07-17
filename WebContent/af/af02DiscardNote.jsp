<%@ page language="java"    pageEncoding="GBK"  %>
<%@ taglib uri="http://org.wangxg/jsp/extl"  prefix="e"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<% String path = request.getContextPath(); %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
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
<form action = "<%=path%>/ac/af02discardNote.html" method = "post">
${msg}
<table border="1" align="center" width="45%">
<caption>
	Æ±¾Ý·ÏÆú
<hr width:"160px">
</caption>

<tr>
	<td>Æ±¾ÝÇ°×º</td>
	<td>
	<e:text name="aaf202" required="true" defval="${param.aaf202 }" readonly="true"/>
	</td>
</tr>

<tr>
	<td>ÆðÊ¼±àºÅ</td>
	<td>
	<e:text name="aaf203" required="true" defval="${param.aaf203 }" readonly="true"/>
	</td>
	<td>½ØÖ¹±àºÅ</td>
	<td>
	<e:text name="aaf204" required="true" defval="${param.aaf204 }" readonly="true"/>
	</td>
</tr>

<tr>
	<td>ÁìÓÃÈË</td>
	<td>
	<e:text name="aaf205"  required="true" defval="${param.aaf205 }" readonly="true"/>
	</td>
	<td>ÁìÓÃÈÕÆÚ</td>
	<td>
	<e:text name="aaf206" required="true" defval="${param.aaf206 }" readonly="true"/>
	</td>
</tr>
<tr>
	<td>×÷·ÏÔ­Òò</td>
	<td>
	<e:radio value="¿ª´í:1,È¡ÏûÊ¹ÓÃ:2,¶ªÊ§:3,ÆäËû:4" name="aaf208"  required="true" />
	</td>
	<td>ÏêÏ¸Ô­Òò</td>
	<td>
	<e:text name="aaf212" required="true" />
	</td>
</tr>
   <tr>
     <td align="center">
       <input type="submit" name="next" value="È·¶¨">
     </td>
     <td align="center">
       <input type="submit" name="next" value="·µ»Ø">
     </td>
   </tr>
</table>
</form>
</body>
</html>