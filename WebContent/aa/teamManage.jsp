<%@ page language="java" pageEncoding="GBK"%>
<%@ taglib uri="http://org.wangxg/jsp/extl" prefix="e"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<% String path = request.getContextPath(); %>
<html>
<head>
<title>teamManage</title>
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
function onEdit(vaaa301)
{
	var myform = document.getElementById("myform");
	myform.action = "<%=path%>/aa03FindById.html?aaa301=" + vaaa301;
	myform.submit();
}
function onDel(vaaa301)
{
	var myform = document.getElementById("myform");
	myform.action = "<%=path%>/aa03DelById.html?aaa301=" + vaaa301;
	myform.submit();
}

function onEmp(vaaa301,vaaa302)
{
	var aaa302 = document.getElementById("aaa302");
	aaa302.value=vaaa302;
	
	var myform = document.getElementById("myform");
	myform.action = "<%=path%>/aa04Query.html?aaa301=" + vaaa301;
	myform.submit();	
}

</script>
<body>
	<br>
	<br>
	<form action="<%=path%>/aa/aa03Query.html" id="myform" method="post">
		<table border="1" align="center" width="95%">
			<caption>
				部门管理
				<hr width:"160px">
			</caption>
			<tr>
				<td></td>
				<td>序号</td>
				<td>部门名称</td>
				<td>部门描述</td>
				<td>员工管理</td>
				<td>删除</td>
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
								name="idlist" value="${ins.aaa301 }"></td>
							<td>${vs.count }</td>
							<td><a href="#" onclick="onEdit('${ins.aaa301 }')">${ins.aaa302 }</a>
							</td>
							<td>${ins.aaa303 }</td>
							<td><a href="#"
								onClick="onEmp('${ins.aaa301}','${ins.aaa302}')">员工管理</a></td>
							<td><a href="#" onClick="onDel('${ins.aaa301}')">删除</a></td>
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
						</tr>
					</c:forEach>
				</c:otherwise>
			</c:choose>
		</table>

		<table border="1" align="center" width="95%">
			<tr>
				<td align="center"><input type="submit" value="查询" name="next">
					<input type="submit" value="添加" name="next" formaction="<%=path %>/aa/teamAdd.jsp"> 
					<input type="submit" value="删除" name="next" disabled="disabled" formaction="<%=path %>/aa/aa03Delete.html" id="del">
				</td>
			</tr>
		</table>

		<input type="hidden" name="aaa201" value="1"> 
		<input type="hidden" id="aaa302" name="aaa302" value="">
	</form>

</body>
</html>