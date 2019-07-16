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
	function modify(id)
	{
		var vform = document.getElementById("action");
		vform.action = "<%=path %>/ae/ae05findById.html?aae501="+id;
		vform.submit();
	}
</script>
</head>

<body>

	<br>
	<br> ${msg }
	<form id="action" action="<%=path %>/ae/ae05query.html" method="post">
		<table border="1" align="center" width="80%">
			<caption>
				面积补差
				<hr width="160">
			</caption>
			<tr>
				<td>客户姓名</td>
				<td><e:text name="qaae707" /></td>
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
				<td>房间补差款</td>
				<td>附属房间补差款</td>
				<td>参差补差款</td>
				<td>实际补差款</td>
				<td></td>
			</tr>
			<c:choose>
				<c:when test="${rows!=null}">
					<c:forEach items="${rows }" var="ins" varStatus="vs">
						<tr>
							<td>${vs.count}</td>
							<td>${ins.aae707 }</td>
							<td>${ins.aaa803 }</td>
							<td>${ins.aae502 }</td>
							<td>${ins.aae503 }</td>
							<td>${ins.aae504 }</td>
							<td>${ins.aae505 }</td>
							<td><a href="#" onclick='modify(${ins.aae501})'>查看明细</a></td>
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
						</tr>
					</c:forEach>
				</c:otherwise>
			</c:choose>
		</table>
	</form>
</body>
</html>