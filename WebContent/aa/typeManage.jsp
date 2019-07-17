<%@ page language="java" pageEncoding="GBK"%>
<%@ taglib uri="http://org.wangxg/jsp/extl" prefix="e"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<% String path = request.getContextPath(); %>
<html>
<head>
<title>typeManage</title>
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
function onEdit(vaaa501)
{
	var myform = document.getElementById("myform");
	myform.action = "<%=path%>/aa05FindById.html?aaa501=" + vaaa501;
	myform.submit();
}
function onDel(vaaa501)
{
	var myform = document.getElementById("myform");
	myform.action = "<%=path%>/aa05DelById.html?aaa501=" + vaaa501;
	myform.submit();
}
</script>
<body>
	<br>
	<br>
	<form action="<%=path%>/aa/aa05Query.html" id="myform" method="post">
		<table border="1" align="center" width="95%">
			<caption>
				项目管理
				<hr width:"160px">
			</caption>
			<tr>
				<td></td>
				<td>序号</td>
				<td>户型编号</td>
				<td>产品类型</td>
				<td>房间结构</td>
				<td>建筑面积</td>
				<td>套内面积</td>
				<td>户型平面图</td>
				<td>备注</td>
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
								name="idlist" value="${ins.aaa501 }"></td>
							<td>${vs.count }</td>
							<td><a href="#" onclick="onEdit('${ins.aaa501 }')">${ins.aaa502 }</a>
							</td>
							<td>${ins.aaa503 }</td>
							<td>${ins.aaa504 }</td>
							<td>${ins.aaa505 }</td>
							<td>${ins.aaa506 }</td>
							<td>${ins.aaa507 }</td>
							<td>${ins.aaa508 }</td>
							<td><a href="#" onClick="onDel('${ins.aaa501}')">删除</a></td>
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
						</tr>
					</c:forEach>
				</c:otherwise>
			</c:choose>
		</table>

		<table border="1" align="center" width="95%">
			<tr>
				<td align="center">
				<input type="submit" value="查询" name="next">
				<input type="submit" value="添加" name="next" formaction="<%=path %>/aa/typeAdd.jsp"> 
				<input type="submit" value="删除" name="next" disabled="disabled" formaction="<%=path %>/aa/aa05Delete.html" id="del">
				</td>
			</tr>
		</table>

		<input type="hidden" name="aaa201" value="1">
	</form>

</body>
</html>