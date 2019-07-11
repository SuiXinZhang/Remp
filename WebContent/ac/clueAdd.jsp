<%@ page language="java"  pageEncoding="GBK"%>
<%@ taglib uri="http://org.wangxg/jsp/extl"  prefix="e"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<% String path = request.getContextPath(); %>
<html>
<head>
<title>ClueAdd</title>
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
<form action = "<%=path%>/ac/ac01Add.html" method = "post">
${msg}
<table border="1" align="center" width="45%">
<caption>
<!-- {empty param. } ========> 'request.getAttribute("aac101") ' -->
<!-- param 中的aac101 是从连接后面获得的 -->
客户线索${empty param.aac101?'添加':'修改' }

<hr width:"160px">
</caption>

<tr>
	<td>客户名</td>
	<td>
	<e:text name="aac105" required="true" autofocus="true" defval="${ins.aac105 }"/>
	</td>
</tr>

<tr>
	<td>联系电话</td>
	<td>
	<e:text name="aac106" required="true" defval="${ins.aac106 }"/>
	</td>
</tr>

<tr>
	<td>来访方式</td>
	<td>
	<e:radio name="aac103" value="电话:电话,走访:走访" required="true" defval="${empty param.aac101?'电话':ins.aac103 }"/>
	</td>
</tr>

<tr>
	<td>来访时间</td>
	<td>
	<e:date name="aac102" defval="${ins.aac102 }"/>
	</td>
</tr>

<tr>
	<td>项目名称</td>
	<td>
	<e:text name="aac104" required="true" defval="${ins.aac104 }"/>
	</td>
</tr>

<tr>
	<td>跟进级别</td>
	<td>
	<e:select name="aac109" required="true" value="1:1,2:2,3:3,4:4,5:5" defval="${ins.aac109 }"/>
	</td>
</tr>

<tr>
	<td>分配业务员</td>
	<td>
	<e:text name="aac107" defval="${ins.aac107 }"/>
	</td>
</tr>

<tr>
	<td>记录人</td>
	<td>
	<e:text  name="aac108" required="true" defval="${ins.aac108 }"/>
	</td>
</tr>
<c:if test="${!empty param.aac101 }">
<tr>
	<td>记录人编号</td>
	<td>
	<e:text name="aaa402" readonly="true" defval="${ins.aaa402 }"/>
	</td>
</tr>
</c:if>

   <tr>
     <td>备注</td>
     <td>
	 <e:textarea rows="5" cols="45" name="aac110" defval="${ins.aac110 }"/>
     </td>
   </tr>
   <tr>
     <td colspan="2" align="center">
       <input type="submit" name="next" value="${empty param.aac101?'添加':'修改'}"
        formaction="<%=path %>/ac/${empty param.aac101?'ac01Add.html':'ac01Modify.html' }">
       <input type="submit" name="next" value="返回" 
       formaction="<%=path %>/ac/ac01Query.html" formnovalidate="formnovalidate">
     </td>
   </tr>
</table>

<!-- 保存默认项目名,后期从session中得到 -->
<input name="aaa201" value="1" type="hidden"/>


<input type="hidden" name="aac101" value="${param.aac101 }">
<!--<input type="hidden" name="qaac102" value="{param. }">  -->
<e:hidden name="qaac111"/>
<e:hidden name="qaac109"/>
<e:hidden name="qaac103"/>
<e:hidden name="qaac105"/>
<e:hidden name="qaac104"/>
<e:hidden name="baac102"/>
<e:hidden name="eaac102"/>
</form>
</body>
</html>