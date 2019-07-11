<%@ page language="java"  pageEncoding="GBK"%>
<%@ taglib uri="http://org.wangxg/jsp/extl"  prefix="e"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<% String path = request.getContextPath(); %>
<html>
<head>
<title>Add Sell Opportunity</title>
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
<form action = "<%=path%>/ac/ac04ChangeOpport.html" method = "post">
${msg}
<table border="1" align="center" width="45%">
<caption>

客户意向${empty param.aac201?'添加':'修改' }

<hr width:"160px">
</caption>

<tr>
	<td>客户名</td>
	<td>
	<e:text name="aac202" required="true" autofocus="true" defval="${ins.aac403 }"/>
	</td>
</tr>

<tr>
	<td>客户编号</td>
	<td>
	<e:text name="aac402" required="true" readonly="true" defval="${ins.aac402 }"/>
	</td>
</tr>

<tr>
	<td>意向房屋类型</td>
	<td>
	<e:select name="aac207" value="两室一厅:01,两室两厅:02,三室两厅:03" required="true" defval="${ins.aac207 }"/>
	</td>
</tr>

<tr>
	<td>意向面积</td>
	<td>
	<e:text name="aac208" defval="${ins.aac208 }"/>
	</td>
</tr>

<tr>
	<td>意向价格</td>
	<td>
	<e:text name="aac209" required="true" defval="${ins.aac209 }"/>
	</td>
</tr>

<tr>
	<td>购买可能性</td>
	<td>
	<e:select name="aac203" required="true" value="25%:01,50%:02,75%:03,90%:04,100%:05" defval="${ins.aac203 }"/>
	</td>
</tr>

<tr>
	<td>可能购买时间</td>
	<td>
	<e:date name="aac204" defval="${ins.aac204 }"/>
	</td>
</tr>
<tr>
	<td>客户潜在跟进价值评估</td>
	<td>
	<e:select name="aac206" required="true" value="差:01,中等:02,良:03,优:04" defval="${ins.aac206 }"/>
	</td>
</tr>

   <tr>
     <td>备注</td>
     <td>
	 <e:textarea rows="5" cols="45" name="aac205" defval="${ins.aac205 }"/>
     </td>
   </tr>
   <tr>
     <td colspan="2" align="center">
       <input type="submit" name="next" value="${empty param.aac201?'添加':'修改'}"
        formaction="<%=path %>/ac/${empty param.aac201?'ac02Add.html':'ac02Modify.html'}">
       <input type="submit" name="next" value="返回" 
       formaction="<%=path %>/ac/ac01Query.html" formnovalidate="formnovalidate">
     </td>
   </tr>
</table>
<e:hidden name="aac401" value="${ins.aac401 }"/>
<e:hidden name="aac201" value="${param.aac201 }"/>

<input type="hidden" name="aac101" value="${param.aac101 }">

</form>
</body>
</html>