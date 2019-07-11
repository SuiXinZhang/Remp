<%@ page language="java"    pageEncoding="GBK"%>
<%@ taglib uri="http://org.wangxg/jsp/extl"  prefix="e"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<% String path = request.getContextPath(); %>
<html>
<head>
<title>clueManage</title>
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
function onEdit(vaac101)
{
	var myform = document.getElementById("myform");
	myform.action = "<%=path%>/ac01FindById.html?aac101=" + vaac101;
	myform.submit();
}
function onDel(vaac101)
{
	var myform = document.getElementById("myform");
	myform.action = "<%=path%>/ac01DelById.html?aac101=" + vaac101;
	myform.submit();
}
function onOpportunities(vaac101)
{
	var myform = document.getElementById("myform");
	myform.action = "<%=path%>/ac04ChangeOpport.html?tag=1&aac101=" + vaac101;
	myform.submit();
}
</script>
<body>
	<br>
	<br>
	<form action="<%=path%>/ac/ac01Query.html" id = "myform" method="post">
		<table border="1" align="center" width="95%">
			<caption>
				线索管理
				<hr width="180px">
			</caption>
			<tr>
				<td colspan="4">查询条件</td>
			</tr>
			<tr>
				<td>客户名</td>
				<td><e:text name="qaac105" /></td>
				<td>项目名称</td>
				<td><e:text name="qaac104" /></td>
			</tr>

			<tr>
				<td>来访方式</td>
				<td><e:select  value="电话:电话,走访:走访" name="qaac103" header="true"/></td>
				<td>更进级别</td>
				<td><e:select value="1:1,2:2,3:3,4:4,5:5" name="qaac109" header="true" /></td>
			</tr>
			<tr>
				<td>是否已变更为销售机会</td>
				<td><e:select value="是:1,否:2" name="qaac111" defval="2" header="true"/></td>
				</tr>
			<tr>
				<td>来访日期[B]</td>
				<td><e:date name="baac102" /></td>
				<td>来访日期[E]</td>
				<td><e:date name="eaac102" /></td>
			</tr>
		</table>
		<table border="1" align="center" width="95%">
			<tr>
				<td></td>
				<td>序号</td>
				<td>项目名称</td>
				<td>客户名</td>
				<td>客户联系电话</td>
				<td>业务员</td>
				<td>来访方式</td>
				<td>来访日期</td>
				<td>跟进级别</td>
				<td>销售机会状态</td>
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
							<input type="checkbox" onclick="onSelect(this.checked)" name="idlist" value="${ins.aac101 }" >
							</td>
							<td>${vs.count }</td>
							<td>
							<a href="#" onclick = "onEdit('${ins.aac101 }')" >${ins.aac104 }</a>
							</td>
							<td>${ins.aac105 }</td>
							<td>${ins.aac106 }</td>
							<td>${ins.aac107 }</td>
							<td>${ins.aac103 }</td>
							<td>${ins.aac102 }</td>
							<td>${ins.aac109 }</td>
							<td>${ins.aac111 }</td>
							<td>
							<a href="#" onClick="onDel('${ins.aac101}')">删除</a>
							<a href="#" onClick="onOpportunities('${ins.aac101}')">转销售机会</a>
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
				<td align="center"><input type="submit" value="查询" name="next">
					<input type="submit" value="添加" name="next"
					formaction="<%=path %>/ac/clueAdd.jsp"> 
					<input type="submit" value="删除" name="next" disabled="disabled"
					formaction="<%=path %>/ac/ac01Delete.html" id="del" ></td>
			</tr>
		</table>
	</form>

</body>
</html>