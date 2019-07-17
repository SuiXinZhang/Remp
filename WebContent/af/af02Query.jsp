<%@ page language="java"    pageEncoding="GBK"  %>
<%@ taglib uri="http://org.wangxg/jsp/extl"  prefix="e"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<% String path = request.getContextPath(); %>
<html>
<head>
<title>Note Detail</title>
</head>
<style type="text/css">
tr 
{
	height: 25px;
}
</style>
<script>
function onReceive(vaaf201,vaac202,vaac203,vaac204,vaac205,vaac206)
{
	onSetValue(vaac202,vaac203,vaac204,vaac205,vaac206);
	var myform = document.getElementById("myform");
	myform.action = "<%=path%>/af/af02ReceiveNote.jsp?aaf201=" + vaaf201 ;
	myform.submit();
}
function onWrite(vaaf201,vaac202,vaac203,vaac204,vaac205,vaac206)
{
	onSetValue(vaac202,vaac203,vaac204,vaac205,vaac206);
	var myform = document.getElementById("myform");
	myform.action = "<%=path%>/af/af02WriteOffNote.jsp?aaf201=" + vaaf201 ;
	myform.submit();
}
function onDiscard(vaaf201,vaac202,vaac203,vaac204,vaac205,vaac206)
{
	onSetValue(vaac202,vaac203,vaac204,vaac205,vaac206);
	var myform = document.getElementById("myform");
	myform.action = "<%=path%>/af/af02ReceiveNote.jsp?aaf201=" + vaaf201 ;
	myform.submit();
}

function onSetValue(vaac202,vaac203,vaac204,vaac205,vaac206)
{
	var aaf202 = document.getElementById("aaf202");
	aac202.value = vaac202;
	var aaf203 = document.getElementById("aaf203");
	aac203.value = vaac203;
	var aaf204 = document.getElementById("aaf204");
	aac204.value = vaac204;
	var aaf205 = document.getElementById("aaf205");
	aac205.value = vaac205;
	var aaf206 = document.getElementById("aaf206");
	aac206.value = vaac206;
}
</script>
<body>
<form action="<%=path%>/af/af02Query.html" id = "myform" method="post">
		
		<table border="1" align="center" width="95%">
			<caption>
				票据明细
				<hr width="180px">
			</caption>
			<tr>
				<td colspan="4">查询条件</td>
			</tr>
			<tr>
				<td>票据状态</td>
				<td><e:select value="未开:1,已领用:2,已核销:3,已废弃:4" name="qaaf207" header="true" /></td>
			</tr>
			
		</table>
		<table border="1" align="center" width="95%">
			<tr>
				<td></td>
				<td>票据前缀</td>
				<td>票据状态</td>
				<td>领用人</td>
				<td>领用日期</td>
				<td>开票金额</td>
				<td>开票人</td>
				<td>开票日期</td>
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
							<td>${vs.count }</td>
							<td>${ins.aaf202 }</td>
							<td>${ins.aaf207 }</td>
							<td>${ins.aaf205 }</td>
							<td>${ins.aaf206 }</td>
							<td>${ins.aac209 }</td>
							<td>${ins.aac210 }</td>
							<td>${ins.aaf211 }</td>
							<td>
							<!-- disabled="${!(ins.aaf207 == 2) }" -->
							<input type="button" value="领用票据" name="next" 
							onclick="onReceive(${ins.aaf201},${ins.aaf202},${ins.aaf203},${ins.aaf204},${ins.aaf205},${ins.aaf206})" 
							formaction="<%=path %>/af/af02receiveNote.html" >
							<input type="button" value="核销票据" name="next2" 
		   				    onclick="onWrite(${ins.aaf201},${ins.aaf202},${ins.aaf203},${ins.aaf204},${ins.aaf205},${ins.aaf206})" 
							formaction="<%=path %>/af/af02writeOffNote.html" >
							<input type="button" value="废弃票据" name="next3" 
							onclick="onDiscard(${ins.aaf201},${ins.aaf202},${ins.aaf203},${ins.aaf204},${ins.aaf205},${ins.aaf206})" 
							formaction="<%=path %>/af/af02discardNote.html" >  
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
						</tr>
					</c:forEach>
				</c:otherwise>
			</c:choose>
		</table>
		<table border="1" align="center" width="95%">
			<tr>
				<td align="center"><input type="submit" value="查询" name="next">
			</tr>
		</table>
		<e:hidden name="aaf202" id="aaf202" value=""/>
		<e:hidden name="aaf203" id="aaf203" value=""/>
		<e:hidden name="aaf204" id="aaf204" value=""/>
		<e:hidden name="aaf205" id="aaf205" value=""/>
		<e:hidden name="aaf206" id="aaf206" value=""/>
</form>
</body>
</html>