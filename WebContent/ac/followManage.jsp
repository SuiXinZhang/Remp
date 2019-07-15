<%@ page language="java"    pageEncoding="GBK"%>
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
function onSelect(vstate)
{
	vstate?count++:count--;
	var delB = document.getElementById("del");
	var batchUpdateB = document.getElementById("update");
	var modifyFollow = document.getElementById("modifyFollow");
	modifyFollow.disabled = (count == 0);
	batchUpdateB.disabled= (count ==0);
	delB.disabled = (count == 0);
}
function onEdit(vaac301)
{
	var myform = document.getElementById("myform");
	myform.action = "<%=path%>/ac03FindById.html?aac301=" + vaac301;
	myform.submit();
}
function onDel(vaac301)
{
	var myform = document.getElementById("myform");
	myform.action = "<%=path%>/ac03DelById.html?aac301=" + vaac301;
	myform.submit();
}
function onBatchUpdate()
{
	//formaction="<%=path%>/ac/ac03BatchUpdate.html"
	var myform = document.getElementById("myform");
	myform.action = "<%=path%>/ac/ac03BatchUpdate.html";
	var maac304 = document.getElementById("maac304");
	console.log(maac304);
	if(maac304.value != null)
	{
		myform.submit();
	}
	else 
	{
		alert("请选择修改后的跟进状态类型")
	}
}
function onBatchUpdate2()
{
	var myform = document.getElementById("myform");
	myform.action = "<%=path%>/ac/ac03ModifyFollow.html";
	var maac306 = document.getElementById("maac306");
	console.log(maac306);
	var maac307 = document.getElementById("maac307");
	console.log(maac307);
	alert(maac307.value);
	if(maac306.value != null)
	{
		if(maac307.value != null)
		{
			myform.submit();
		}
		else 
		{
			alert("添加业务员编号");
		}
	}
	else 
	{
		alert("添加业务员名称");
	}
	
	
}
</script>
<body>
	<br>
	<br>
	<form action="<%=path%>/ac/ac03Query.html" id = "myform" method="post">
		<table border="1" align="center" width="95%">
			<caption>
				客户跟进管理
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
				<td>跟进业务员</td>
				<td><e:text name="qaac306" /></td>
				<td>跟进业务员编号</td>
				<td><e:text name="qaac307" /></td>
			</tr>
			<tr>
				<td>添加跟进业务员</td>
				<td><e:text name="maac306" id="maac306"/></td>
				<td>跟进业务员编号</td>
				<td><e:text name="maac307" id="maac307"/></td>
			</tr>
			<tr>
				<td>跟进状态</td>
				<td><e:select value="待跟进:01,已跟进:02,待再次跟进:03"  name="qaac304" header="true"/></td>
				<td>修改后的跟进状态</td>
				<td><e:select value="待跟进:01,已跟进:02,待再次跟进:03" id="maac304" name="maac304" header="true" /></td>
			</tr>
			<tr>
				<td>跟进时间[B]</td>
				<td><e:date name="baac305" /></td>
				<td>跟进时间[E]</td>
				<td><e:date name="eaac305" /></td>
			</tr>
		</table>
		<table border="1" align="center" width="95%">
			<tr>
				<td></td>
				<td>序号</td>
				<td>客户名</td>
				<td>客户编号</td>
				<td>跟进内容</td>
				<td>跟进状态</td>
				<td>跟进时间</td>
				<td>跟进业务员</td>
				<td>跟进业务员编号</td>
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
							<input type="checkbox" onclick="onSelect(this.checked)" name="idlist" value="${ins.aac301 }" >
							</td>
							<td>${vs.count }</td>
							<td>
							<a href="#" onclick = "onEdit('${ins.aac301 }')" >${ins.aac403 }</a>
							</td>
							<td>${ins.aac402 }</td>
							<td>${ins.aac303 }</td>
							<td>${ins.cnaac304 }</td>
							<td>${ins.aac305 }</td>
							<td>${ins.aac306 }</td>
							<td>${ins.aac307 }</td>
							<td>
							<a href="#" onClick="onDel('${ins.aac301}')">删除</a>
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
				<td align="center"><input type="submit" value="查询" name="next">
					<input type="submit" value="添加" name="next" disabled="disabled"
					formaction="<%=path %>/ac/addFollow.jsp"> 
					<input type="button" value="批量修改状态"  disabled="disabled" onclick="onBatchUpdate()"
					  name="next1" id="update" >
					  <input type="button" value="批量添加跟进业务员"  disabled="disabled" onclick="onBatchUpdate2()"
					  name="next2" id="modifyFollow" >
					<input type="submit" value="删除" name="next" disabled="disabled"
					formaction="<%=path %>/ac/ac03Delete.html" id="del" ></td>
			</tr>
		</table>
	</form>
</body>
</html>