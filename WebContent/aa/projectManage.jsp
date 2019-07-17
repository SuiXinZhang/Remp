<%@ page language="java" pageEncoding="GBK"%>
<%@ taglib uri="http://org.wangxg/jsp/extl" prefix="e"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<% String path = request.getContextPath(); %>
<html>
<head>
<title>projectManage</title>
</head>
<style type="text/css">
tr {
	height: 25px;
}
</style>
<script type="text/javascript">
var count = 0;
function onSelect(vstate)
{
	vstate?count++:count--;
	var delB = document.getElementById("del");
	delB.disabled = (count == 0);
}
function onEdit(vaaa201)
{
	var myform = document.getElementById("myform");
	myform.action = "<%=path%>/aa02FindById.html?aaa201=" + vaaa201;
	myform.submit();
}
function onDel(vaaa201)
{
	var myform = document.getElementById("myform");
	myform.action = "<%=path%>/aa02DelById.html?aaa201=" + vaaa201;
	myform.submit();
}
</script>
<body>
	<br>
	<br>
	<form action="<%=path%>/aa/aa02Query.html" id="myform" method="post">
		<table border="1" align="center" width="95%">
			<caption>
				项目管理
				<hr width:"160px">
			</caption>
			<tr>
				<td></td>
				<td>序号</td>
				<td>项目名称</td>
				<td>项目地址</td>
				<td>开工日期</td>
				<td>开盘日期</td>
				<td>项目负责人</td>
				<td>项目状态</td>
				<td>占地面积</td>
				<td>建筑面积</td>
				<td>可售面积</td>
				<td>可售套数</td>
				<td></td>
			</tr>
			<!--
				         注意事项
				    1.$及大括号的结束标记 }与双引号之间,不允许出现空格
				    	即    }"   写在一起
				    2.所有的属性之间至少要有一个空格,否则报错
				    3.var 属性,相当于在页面定义变量名称,因此  ins不允许再用$ {  }
				   -->
			<c:choose>
				<c:when test="${rows!= null }">
					<c:forEach items="${rows }" var="ins" varStatus="vs">
						<tr>
							<td><input type="checkbox" onclick="onSelect(this.checked)"
								name="idlist" value="${ins.aaa201 }"></td>
							<td>${vs.count }</td>
							<td><a href="#" onclick="onEdit('${ins.aaa201 }')">${ins.aaa202 }</a>
							</td>
							<td>${ins.aaa203 }</td>
							<td>${ins.aaa204 }</td>
							<td>${ins.aaa206 }</td>
							<td>${ins.aaa208 }</td>
							<td>${ins.aaa209 }</td>
							<td>${ins.aaa211 }</td>
							<td>${ins.aaa212 }</td>
							<td>${ins.aaa213 }</td>
							<td>${ins.aaa214 }</td>
							<td><a href="#" onClick="onDel('${ins.aaa201}')">删除</a></td>
						</tr>
					</c:forEach>
					<c:forEach begin="${fn:length(rows)+1 }" end="15" step="1">
						<tr>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
						</tr>
					</c:forEach>
				</c:when>
				<c:otherwise>
					<c:forEach begin="1" end="15" step="1">
						<tr>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
						</tr>
					</c:forEach>
				</c:otherwise>
			</c:choose>
		</table>

		<table border="1" align="center" width="95%">
			<tr>
				<td align="center"><input type="submit" value="查询" name="next">
					<input type="submit" value="添加" name="next" formaction="<%=path %>/aa/projectAdd.jsp"> 
					<input type="submit" value="删除" name="next" disabled="disabled" formaction="<%=path %>/aa/aa02DelById.html" id="del">
				</td>
			</tr>
		</table>

		<input type="hidden" name="aaa101" value="1">
	</form>

</body>
</html>