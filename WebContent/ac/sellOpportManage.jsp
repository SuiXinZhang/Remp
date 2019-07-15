<%@ page language="java"    pageEncoding="GBK"%>
<%@ taglib uri="http://org.wangxg/jsp/extl"  prefix="e"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<% String path = request.getContextPath(); %>
<html>
<head>
<title>Sell Opportunity Manage</title>
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
function onEdit(vaac201)
{
	var myform = document.getElementById("myform");
	myform.action = "<%=path%>/ac02FindById.html?aac201=" + vaac201;
	myform.submit();
}
function onDel(vaac201)
{
	var myform = document.getElementById("myform");
	myform.action = "<%=path%>/ac02DelById.html?aac201=" + vaac201;
	myform.submit();
}
function onload1()
{
	var showAac203 = document.getElementsByClassName("showAac203");
	for(var i =0 ; i< showAac203.length;i++)
	{
		switch(showAac203[i].getAttribute("value"))
		{
		case "01":showAac203[i].innerHTML = "25%";break;
		case "02":showAac203[i].innerHTML = "50%";break;
		case "03":showAac203[i].innerHTML = "75%";break;
		case "04":showAac203[i].innerHTML = "90%";break;
		case "05":showAac203[i].innerHTML = "100%";break;
		}
	}
	
	var showAac206 = document.getElementsByClassName("showAac206");
	for(var i =0 ; i< showAac206.length;i++)
	{
	switch(showAac206[i].getAttribute("value"))
	{
	case "01":showAac206[i].innerHTML = "差";break;
	case "02":showAac206[i].innerHTML = "中等";break;
	case "03":showAac206[i].innerHTML = "良";break;
	case "04":showAac206[i].innerHTML = "优";break;
	}
	}
	
	var showAac207 = document.getElementsByClassName("showAac207");
	for(var i =0 ; i< showAac207.length;i++)
	{
	switch(showAac207[i].getAttribute("value"))
	{
	case "01":showAac207[i].innerHTML = "两室一厅";break;
	case "02":showAac207[i].innerHTML = "两室两厅";break;
	case "03":showAac207[i].innerHTML = "三室两厅";break;
	}
	}
}

</script>
<body >
	<br>
	<br>
	<form action="<%=path%>/ac/ac02Query.html" id = "myform" method="post">
		<table border="1" align="center" width="95%">
			<caption>
				销售机会管理
				<hr width="180px">
			</caption>
			<tr>
				<td colspan="4">查询条件</td>
			</tr>
			<tr>
				<td>客户名</td>
				<td><e:text name="qaac202" /></td>
				<td>客户编号</td>
				<td><e:text name="qaac402" /></td>
			</tr>

			<tr>
				<td>意向房屋类型</td>
				<td><e:select  value="两室一厅:01,两室两厅:02,三室两厅:03" name="qaac207" header="true"/></td>
				<td>购买可能性</td>
				<td><e:select value="25%:01,50%:02,75%:03,90%:04,100%:05" name="qaac203" header="true" /></td>
			</tr>
			<tr>
				<td>客户潜在跟进价值评估</td>
				<td><e:select value="差:01,中等:02,良:03,优:04" name="qaac206"  header="true"/></td>
				</tr>
			<tr>
				<td>可能购买时间[B]</td>
				<td><e:date name="baac204" /></td>
				<td>可能购买时间[E]</td>
				<td><e:date name="eaac204" /></td>
			</tr>
			<tr>
				<td>意向价格[B]</td>
				<td><e:number name="baac209" step="1000"/></td>
				<td>意向价格[E]</td>
				<td><e:number name="eaac209" step="1000"/></td>
			</tr>
			<tr>
				<td>意向面积[B]</td>
				<td><e:number name="baac208" step="1"/></td>
				<td>意向面积[E]</td>
				<td><e:number name="eaac208" step="1"/></td>
			</tr>
		</table>
		<table border="1" align="center" width="95%">
			<tr>
				<td></td>
				<td>序号</td>
				<td>客户名</td>
				<td>客户编号</td>
				<td>购买可能性</td>
				<td>可能购买时间</td>
				<td>客户潜在跟进价值</td>
				<td>意向房屋类型</td>
				<td>意向面积</td>
				<td>意向价格</td>
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
						<tr >
							<td>
							<input type="checkbox" onclick="onSelect(this.checked)" name="idlist" value="${ins.aac201 }" >
							</td>
							<td>${vs.count }</td>
							<td>
							<a href="#" onclick = "onEdit('${ins.aac201 }')" >${ins.aac202 }</a>
							</td>
							<td>${ins.aac402 }</td>
							<td class="showAac203" value="${ins.aac203 }"></td>
							<td>${ins.aac204 }</td>
							<td class="showAac206" value="${ins.aac206 }"></td>
							<td class="showAac207" value="${ins.aac207 }"></td>
							<td>${ins.aac208 }</td>
							<td>${ins.aac209 }</td>
							<td>
							<a href="#" onClick="onDel('${ins.aac201}')">删除</a>
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
					<input type="submit" value="删除" name="next" disabled="disabled"
					formaction="<%=path %>/ac/ac02Delete.html" id="del" ></td>
			</tr>
		</table>
	</form>

</body>
<script type="text/javascript"> window.onload = onload1();</script>
</html>