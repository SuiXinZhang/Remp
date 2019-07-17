<%@ page language="java" pageEncoding="GBK"%>
<%@taglib uri="http://org.wangxg/jsp/extl" prefix="e"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<html>
<head>
<title>Insert title here</title>
<style type="text/css">
tr {
	height: 25px
}
</style>
<%String path = request.getContextPath(); %>
<script type="text/javascript">
	var count = 0;
	function onSelect(value)
	{
		value?count++:count--;
		document.getElementById("mod").disabled=(count==0);
	}
	function execute(id)
	{
		var vform = document.getElementById("action");
		vform.action = "<%=path %>/ae/ae07execute.html?aae701="+id;
		vform.submit();
	}
</script>
</head>

<body>

	<br>
	<br> ${msg }
	<form id="action" action="<%=path %>/ae/ae07query.html" method="post">
		<table border="1" align="center" width="80%">
			<caption>
				面积补差
				<hr width="160">
			</caption>
			<tr>
				<td>客户姓名</td>
				<td><e:text name="qaae502" /></td>
				<td>房间名称</td>
				<td><e:text name="qaaa803" />
					<e:submit name="next" value="查询" /></td>
			</tr>
		</table>
		<table border="1" align="center" width="80%">
			<tr>
				<td></td>
				<td>序号</td>
				<td>客户</td>
				<td>房间</td>
				<td>合同面积</td>
				<td>实际面积</td>
				<td>办理状态</td>
				<td></td>
			</tr>
			<c:choose>
				<c:when test="${rows!=null}">
					<c:forEach items="${rows }" var="ins" varStatus="vs">
						<tr>
							<td><input type="checkbox" name="IdList"
								value="${ins.aae701 }" onclick='onSelect(this.checked)' /></td>
							<td>${vs.count}</td>
							<td>${ins.aae707 }</td>
							<td>${ins.aaa803 }</td>
							<td>${ins.aae702 }</td>
							<td>${ins.aae703 }</td>
							<td>${ins.snaae704 }</td>
							<td><a href="#" onclick='execute(${ins.aae701})'>执行补差</a></td>
						</tr>
					</c:forEach>
					<c:forEach begin="${fn:length(rows)+1}" end="25">
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
					<c:forEach begin="1" end="25">
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
		<table border="1" align="center" width="80%">
			<tr colspan="2" align="center">
				<td><input name="next" type="submit" value="添加"
					formaction="<%=path %>/ae/ae07addpage.html"> <input id="mod"
					type="submit" value="批量办理" disabled="disabled"
					formaction="<%=path %>/ae/ae07mod.html"></td>
			</tr>
		</table>
	</form>
</body>
</html>