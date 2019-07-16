<%@ page language="java"    pageEncoding="GBK"%>
<%@ taglib uri="http://org.wangxg/jsp/extl"  prefix="e"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<% String path = request.getContextPath(); %>
<html>
<head>
<title>Care Manage</title>
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
function onEdit(vaac501)
{
	var myform = document.getElementById("myform");
	myform.action = "<%=path%>/ac05FindById.html?aac501=" + vaac501;
	myform.submit();
}
function onDel(vaac601)
{
	var myform = document.getElementById("myform");
	myform.action = "<%=path%>/ac05DelById.html?aac601=" + vaac601;
	myform.submit();
}
</script>
<body>
<br>
	<br>
	<form action="<%=path%>/ac/ac05Query.html" id = "myform" method="post">
		<table border="1" align="center" width="95%">
			<caption>
				客户关怀管理
				<hr width="180px">
			</caption>
			<tr>
				<td colspan="4">查询条件</td>
			</tr>
			<tr>
				<td>客户名</td>
				<td><e:text name="qaac403" /></td>
				<td>客户编号</td>
				<td><e:text name="qaac402" /></td>
			</tr>
			<tr>
				<td>制定业务员</td>
				<td><e:text name="qaac507" /></td>
				<td>制定业务员编号</td>
				<td><e:text name="qaac503" /></td>
			</tr>
			<tr>
				<td>执行状态</td>
				<td><e:select name="qaac504" value="未执行:01,已执行:02,已废弃:03" header="true" /></td>
				<td>发送类型</td>
				<td><e:radio name="qaac509" value="电话:1,邮箱:2" defval="2"   /></td>
			</tr>
			
			<tr>
				<td>制定时间[B]</td>
				<td><input name="baac508" type="datetime-local" ></td>
				<td>制定时间[E]</td>
				<td><input name="eaac508" type="datetime-local" ></td>
			</tr>
		</table>
		<table border="1" align="center" width="95%">
			<tr>
				<td></td>
				<td>序号</td>
				<td>客户名</td>
				<td>客户编号</td>
				<td>消息主题</td>
				<td>消息内容</td>
				<td>执行状态</td>
				<td>发送类型</td>
				<td>发送时间</td>
				<td>制定时间</td>
				<td>制定业务员</td>
				<td>制定业务员编号</td>
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
							<input type="checkbox" onclick="onSelect(this.checked)" name="idlist" value="${ins.aac601 }" >
							</td>
							<td>${vs.count }</td>
							<td>
							<a href="#" onclick = "onEdit('${ins.aac501 }')" >${ins.aac403 }</a>
							</td>
							<td>${ins.aac402 }</td>
							<td>${ins.aac502 }</td>
							<td>${ins.aac506 }</td>
							<td>${ins.cnaac504 }</td>
							<td>${ins.cnaac509 }</td>
							<td>${ins.aac505 }</td>
							<td>${ins.aac508 }</td>
							<td>${ins.aac507 }</td>
							<td>${ins.aac503 }</td>
							<td>
							<a href="#" onClick="onDel('${ins.aac601}')">删除</a>
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
				<td align="center">
					<input type="submit" value="查询" name="next">
					<input type="submit" value="添加" name="next" disabled="disabled"
					formaction="<%=path %>/ac/clientCare.jsp"> 
					<input type="submit" value="删除" name="next" disabled="disabled"
					formaction="<%=path %>/ac/ac05Delete.html" id="del" ></td>
			</tr>
		</table>
	</form>
</body>
</html>