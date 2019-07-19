<%@ page language="java" pageEncoding="GBK"%>
<%@ taglib uri="http://org.wangxg/jsp/extl" prefix="e"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<% String path = request.getContextPath(); %>
<html>
<head>
<title>projectAdd</title>
</head>
<style type="text/css">
tr {
	width: 60%;
	height: 30px
}
</style>
<body>
	<br>
	<br>
	<form action="<%=path%>/aa/aa02Add.html" method="post">
		${msg}
		<table border="1" align="center" width="45%">
			<caption>
				项目${empty param.aaa201?'添加':'修改' }
				<hr width:"160px">
			</caption>

			<tr>
				<td>项目名称</td>
				<td><e:text name="aaa202" required="true" autofocus="true"
						defval="${ins.aaa202 }" /></td>
			</tr>
			<tr>
				<td>项目地址</td>
				<td><e:text name="aaa203" required="true" autofocus="true"
						defval="${ins.aaa203 }" /></td>
			</tr>

			<tr>
				<td>开工日期</td>
				<td><e:date name="aaa204" required="true" defval="${ins.aaa204 }" /></td>
			</tr>

			<tr>
				<td>竣工日期</td>
				<td><e:date name="aaa205" defval="${ins.aaa205 }" /></td>
			</tr>

			<tr>
				<td>开盘日期</td>
				<td><e:date name="aaa206" required="true" defval="${ins.aaa206 }" /></td>
			</tr>

			<tr>
				<td>封盘日期</td>
				<td><e:date name="aaa207" defval="${ins.aaa207 }" /></td>
			</tr>

			<tr>
				<td>项目负责人</td>
				<td><e:text name="aaa208" required="true" autofocus="true"
						defval="${ins.aaa208 }" /></td>
			</tr>

			<tr>
				<td>项目状态</td>
				<td><e:text name="aaa209" required="true" autofocus="true"
						defval="${ins.aaa209 }" /></td>
			</tr>

			<tr>
				<td>项目描述</td>
				<td><e:text name="aaa210" autofocus="true"
						defval="${ins.aaa210 }" /></td>
			</tr>

			<tr>
				<td>占地面积</td>
				<td><e:number name="aaa211" step="0.01" autofocus="true"
						defval="${ins.aaa211 }" /></td>
			</tr>

			<tr>
				<td>建筑面积</td>
				<td><e:number name="aaa212" step="0.01" autofocus="true"
						defval="${ins.aaa212 }" /></td>
			</tr>

			<tr>
				<td>可售面积</td>
				<td><e:number name="aaa213" step="0.01" autofocus="true"
						defval="${ins.aaa213 }" /></td>
			</tr>

			<tr>
				<td>可售套数</td>
				<td><e:number name="aaa214" step="1" autofocus="true"
						defval="${ins.aaa214 }" /></td>
			</tr>

			<tr>
				<td>可售单价</td>
				<td><e:number name="aaa215" step="0.01" autofocus="true"
						defval="${ins.aaa215 }" /></td>
			</tr>

			<tr>
				<td>项目景观</td>
				<td><e:text name="aaa216" autofocus="true"
						defval="${ins.aaa216 }" /></td>
			</tr>

			<tr>
				<td>备注</td>
				<td><e:textarea rows="5" cols="45" name="aaa217"
						defval="${ins.aaa217 }" /></td>
			</tr>


			<tr>
				<td colspan="2" align="center">
				<input type="submit" name="next" value="${empty ins.aaa201?'添加':'修改'}"
					formaction="<%=path %>/aa/${empty ins.aaa201?'aa02Add.html':'aa02Modify.html' }">
				<input type="submit" name="next" value="返回" formaction="<%=path %>/aa/aa02Query.html" formnovalidate="formnovalidate"></td>
			</tr>
		</table>


		<input type="hidden" name="aaa201" value="${ins.aaa201 }"> 
		<input type="hidden" name="aaa101" value="1">
	</form>
</body>
</html>