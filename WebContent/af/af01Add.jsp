<%@ page language="java"  pageEncoding="GBK"%>
<%@ taglib uri="http://org.wangxg/jsp/extl"  prefix="e"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<% String path = request.getContextPath(); %>
<html>
<head>
<title>Add Note</title>
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
<form action = "#" method = "post">
${msg}
<table border="1" align="center" width="45%">
<caption>
	登记票据
<hr width:"160px">
</caption>

<tr>
	<td>票据类型</td>
	<td>
	<e:radio name="aaf103" required="true" value="发票:1,收据:2" defval="${param.aaf103 }" />
	</td>
	<td>票据前缀</td>
	<td>
	<e:text name="aaf104" required="true" defval="${param.aaf104 }" />
	</td>
</tr>

<tr>
	<td>起始编号</td>
	<td>
	<e:number name="aaf106" required="true" step="1" defval="${param.aaf106 }" />
	</td>
	<td>截止编号</td>
	<td>
	<e:number name="aaf107" required="true" step="50" defval="${param.aaf107 }" />
	</td>
</tr>

<tr>
	<td>票据位数</td>
	<td>
	<e:number name="aaf112"  required="true" step="1" defval="${param.aaf112 }" />
	</td>
	<td>票据批次号</td>
	<td>
	<e:text name="aaf105" required="true" defval="${param.aaf105 }" />
	</td>
</tr>

<tr>
	<td>所属项目名</td>
	<td>
	<e:text name="aaf102" required="true" defval="思安东软项目"/>
	</td>
	<td>印制单位</td>
	<td>
	<e:text name="aaf110" required="true" defval="${param.aaf110 }" />
	</td>
</tr>

<tr>
	<td>登记人</td>
	<td>
	<e:text name="aaf108" required="true" defval="${param.aaf108 }" />
	</td>
	<td>登记日期</td>
	<td>
	<e:date name="aaf109" required="true" defval="${param.aaf109 }" />
	</td>
</tr>
<tr>
  <td>备注</td>
  <td>
	<e:textarea rows="5" cols="45" name="aaf111" defval="${param.aaf111 }" />
  </td>
</tr>

   <tr>
     <td colspan="2" align="center">
     <c:choose>
		<c:when test="${empty aaf101}">
			<input type="submit" name="next" value="添加"
				formaction="<%=path%>/af/af01Add.html">
		</c:when>

		<c:otherwise>
			<input type="submit" name="next" value="返回"
				formaction="<%=path%>/af/af01Add.jsp">
		</c:otherwise>
	 </c:choose>
     </td>
   </tr>
</table>
</form>
</body>
</html>