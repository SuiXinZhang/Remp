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
<form action = "<%=path%>/aa/aa04ModifyById.html" method = "post">
${msg}
<table border="1" align="center" width="45%">
<caption>
房间信息修改
<hr width:"160px">
</caption>

<tr>
	<td>房间号</td>
	<td>
	<e:text name="aaa803"  defval="${ins.aaa803 }" readonly="true"/>
	</td>
</tr>
<tr>
	<td>房间编码</td>
	<td>
	<e:text name="aaa802" defval="${ins.aaa802 }"  readonly="true"/>
	</td>
</tr>

<tr>
	<td>地址</td>
	<td>
	<e:text name="aaa804" defval="${ins.aaa804}" readonly="true"/>
	</td>
</tr>

<tr>
	<td>状态</td>
	<td>
	<e:text  name="aaa805"   defval="${ins.cnaaa805 }" readonly="true"/>
	</td>
</tr>

   <tr>
     <td>租售类型</td>
     <td>
       <e:radio value="可租:可租,可售:可售,租售:租售" name="aaa806"  defval="${ins.aaa806}"/>
     </td>
   </tr>

<tr>
	<td>户型</td>
	<td>
	<e:select value="${ins.aaa502 }" name="aaa807" required="true"  defval="${ins.aaa807 }"/>
	</td>
</tr>

<tr>
	<td>建筑单价</td>
	<td>
	<e:text name="aaa808" defval="${ins.aaa808  }"/>
	</td>
</tr>


<tr>
	<td>套内单价</td>
	<td>
	<e:text name="aaa810" defval="${ins.aaa810  }" />
	</td>
</tr>


 <tr>
    <td>备注</td>
    <td>
 		<e:textarea rows="5" cols="45" name="aaa812" defval="${ins.aaa812 }"/>
    </td>
 </tr>
 
 
   <tr>
     <td colspan="2" align="center">
       <input type="submit" name="next" value="修改" 
       		formaction="<%=path %>/aa/aa08ModifyById.html">
       <input type="submit" name="next" value="返回" 
       		formaction="<%=path %>/aa/aa08Query.html" formnovalidate="formnovalidate">
     </td>
   </tr>
</table>


<input type="hidden" name="aaa201" value="1">
<input type="hidden" name="aaa701" value="${param.aaa701 }">
<input type="hidden" name="aaa801" value="${ins.aaa801 }">
<input type="hidden" name="aaa601" value="${param.aaa601 }">
<input type="hidden" name="aaa708" value="${param.aaa602 }">
</form>
</body>
</html>