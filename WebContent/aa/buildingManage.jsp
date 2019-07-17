<%@ page language="java"    pageEncoding="GBK"%>
<%@ taglib uri="http://org.wangxg/jsp/extl"  prefix="e"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<% String path = request.getContextPath(); %>
<html>
<head>
<title>areaManage</title>
</head>
<style type="text/css">
tr 
{
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
function onEdit(vaaa701)
{
	var myform = document.getElementById("myform");
	myform.action = "<%=path%>/aa07FindById.html?aaa701=" + vaaa701;
	myform.submit();
}
function onDel(vaaa701)
{
	var myform = document.getElementById("myform");
	myform.action = "<%=path%>/aa07DelById.html?aaa701=" + vaaa701;
	myform.submit();
}
function onRoom(vaaa701)
{
	var myform = document.getElementById("myform");
	myform.action = "<%=path%>/aa08Query.html?aaa701=" + vaaa701;
	myform.submit();
}
</script>
<body>
	<br>
	<br>
	<form action="<%=path%>/aa/aa07Query.html" id = "myform" method="post">
		<table border="1" align="center" width="95%">
			<caption>
			楼栋管理
			<hr width:"160px">
			</caption>
			<tr>
				<td></td>
				<td>序号</td>
				<td>名称</td>
				<td>所属区域</td>
				<td>建筑性质</td>
				<td>楼层数</td>
				<td>单元数</td>
				<td>每层户数</td>
				<td>备注</td>
				<td>房间管理</td>
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
							<td>
							<input type="checkbox" onclick="onSelect(this.checked)" name="idlist" value="${ins.aaa701 }" >
							</td>
							<td>${vs.count }</td>
							<td>
							<a href="#" onclick = "onEdit('${ins.aaa701 }')" >${ins.aaa702 }栋</a>
							</td>
							<td>${ins.aaa708 }</td>
							<td>${ins.aaa703 }</td>
							<td>${ins.aaa704 }</td>
							<td>${ins.aaa705 }</td>
							<td>${ins.aaa706 }</td>
							<td>${ins.aaa707 }</td>
							<td>
							<a href="#" onClick="onRoom('${ins.aaa701}')">房间管理</a>
							</td>
							<td>
							<a href="#" onClick="onDel('${ins.aaa701}')">删除</a>
							</td>
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
						</tr>
					</c:forEach>
				</c:otherwise>
			</c:choose>
		</table>

		<table border="1" align="center" width="95%">
			<tr>
				<td align="center">
					<input type="submit" value="查询" name="next">
					<input type="submit" value="添加" name="next"
						formaction="<%=path %>/aa/buildingAdd.jsp"> 
					<input type="submit" value="删除" name="next" disabled="disabled"
						formaction="<%=path %>/aa/aa07Delete.html" id="del" >
					<input type="submit" value="返回" name="next" 
					formaction="<%=path %>/aa/aa06Query.html" formnovalidate="formnovalidate" >
				</td>
			</tr>
		</table>
		
		<input type="hidden" name="aaa601" value="${param.aaa601 }">
		<input type="hidden" name="aaa201" value="1">
		<input type="hidden" name="aaa708" value="${param.aaa602 }">
	</form>

</body>
</html>