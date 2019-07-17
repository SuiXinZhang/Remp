<%@ page language="java" pageEncoding="GBK"%>
<%@taglib uri="http://org.wangxg/jsp/extl" prefix="e"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<html>
<head>
<title>产权服务</title>
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
	function findById(id)
	{
		var vform = document.getElementById("action");
		vform.action = "<%=path %>/ae/ae04findById.html?aae401="+id;
		vform.submit();
	}
</script>
</head>

<body>

	<br>
	<br> ${msg }
	<form id="action" action="<%=path %>/ae/ae04query.html" method="post">
		<table border="1" align="center" width="80%">
			<caption>
				产权服务
				<hr width="160">
			</caption>
			<tr>
				<td>客户姓名</td>
				<td><e:text name="qaae402" /></td>
				<td>房间名称</td>
				<td><e:text name="qaaa803" />
					<e:submit name="next" value="查询" /></td>
			</tr>
		</table>
		<table border="1" align="center" width="80%">
			<tr>
				<td>序号</td>
				<td>客户</td>
				<td>房间</td>
				<td>联系电话</td>
				<td>承诺办理</td>
				<td>承诺完成</td>
				<td>办理进程</td>
				<td></td>
			</tr>
			<c:choose>
				<c:when test="${rows!=null}">
					<c:forEach items="${rows }" var="ins" varStatus="vs">
						<tr>
							<td>${vs.count}</td>
							<td>${ins.aae402 }</td>
							<td>${ins.aaa804 }</td>
							<td>${ins.aae403 }</td>
							<td>${ins.aae409 }</td>
							<td>${ins.aae410 }</td>
							<td>${ins.snaae411 }</td>
							<td><a href="#" onclick='findById(${ins.aae401})'>查看明细</a></td>
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
				<td><input name="next" type="submit" value="办理产权"
					formaction="<%=path %>/ae/ae04addpage.html"></td>
			</tr>
		</table>
	</form>
</body>
</html>