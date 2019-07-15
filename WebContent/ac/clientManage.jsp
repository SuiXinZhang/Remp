<%@ page language="java"    pageEncoding="GBK"  %>
<%@ taglib uri="http://org.wangxg/jsp/extl"  prefix="e"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<% String path = request.getContextPath(); %>
<html>
<head>
<title>clientManage</title>
</head>
<style type="text/css">
tr 
{
	height: 25px;
}
</style>

<script type="text/javascript">
var count = 0;
function onSelect2(vstate)
{
	vstate?count++:count--;
	var delB = document.getElementById("del");
	delB.disabled = (count == 0);
}
function onEdit(vaac401)
{
	var myform = document.getElementById("myform");
	myform.action = "<%=path%>/ac04FindById.html?aac401=" + vaac401;
	myform.submit();
}
function onDel(vaac401)
{
	var myform = document.getElementById("myform");
	myform.action = "<%=path%>/ac04DelById.html?aac401=" + vaac401;
	myform.submit();
}
function onFollow(vaac401,vaac402,vaac403)
{
	var aac403 = document.getElementById("vaac403");
	aac403.value = vaac403;
	console.log(aac403);
	var myform = document.getElementById("myform");
	myform.action = "<%=path%>/ac/addFollow.jsp?aac401=" + vaac401+ "&aac402=" + vaac402 ;
	myform.submit();
}
</script>
<body>
	<br>
	<br>
	<form action="<%=path%>/ac/ac04Query.html" id = "myform" method="post">
		<table border="1" align="center" width="95%">
			<caption>
				客户台账管理
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
				<td>邮箱</td>
				<td><e:email  name="qaac405" /></td>
				<td>联系电话</td>
				<td><e:text  name="qaac407" /></td>
			</tr>
			
		</table>
		<table border="1" align="center" width="95%">
			<tr>
				<td></td>
				<td>序号</td>
				<td>客户名</td>
				<td>客户编号</td>
				<td>联系电话</td>
				<td>性别</td>
				<td>民族</td>
				<td>职业</td>
				<td>经济状况</td>
				<td>邮箱</td>
				<td></td>
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
							<input type="checkbox" onclick="onSelect2(this.checked)" class="idlist"  name="idlist" value="${ins.aac401 }">
							</td>
							<td>${vs.count }</td>
							<td>
							<a href="#" onclick = "onEdit('${ins.aac401}')" >${ins.aac403 }</a>
							</td>
							<td>${ins.aac402 }</td>
							<td>${ins.aac407 }</td>
							<td>${ins.aac404 }</td>
							<td>${ins.aac406 }</td>
							<td>${ins.aac413 }</td>
							<td>${ins.aac410 }</td>
							<td>${ins.aac408 }</td>
							<td>
							<a href="#" onClick="onDel('${ins.aac401}')">删除</a>
							</td>
							<td>
							<a href="#" onClick="onFollow('${ins.aac401}','${ins.aac402 }','${ins.aac403 }')">添加跟进</a>
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
					formaction="<%=path %>/ac/addClient.jsp"> 
					<input type="submit" value="删除" name="next" disabled="disabled"
					formaction="<%=path %>/ac/ac04Delete.html" id="del" ></td>
			</tr>
		</table>
		<input type="hidden" name="aac403"  id="vaac403" value = "">
	</form>

</body>
<script src="https://cdn.staticfile.org/jquery/1.10.2/jquery.min.js"></script>
</html>