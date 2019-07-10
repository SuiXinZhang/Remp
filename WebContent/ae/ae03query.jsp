<%@ page language="java" pageEncoding="GBK"%>
<%@taglib uri="http://org.wangxg/jsp/extl" prefix="e" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<html>
<head>
<title>入伙服务</title>
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
		vform.action = "<%=path %>/ae/ae03findById.html?aae301="+id;
		vform.submit();
	}
</script>
</head>

<body>

<br>
	<br> ${msg }
	<form id="action" action="<%=path %>/ae/ae03query.html" method="post">
		<table border="1" align="center" width="80%">
			<caption>
				入伙服务
				<hr width="160">
			</caption>
			<tr>
				<td>客户姓名</td>
				<td><e:text name="qaae302" /></td>
				<td>房间名称</td>
				<td><e:text name="qaaa804" /><e:submit name="next" value="查询"/></td>
			</tr>
		</table>
		<table border="1" align="center" width="80%">
			<tr>
				<td></td>
				<td>序号</td>
				<td>客户</td>
				<td>房间</td>
				<td>联系电话</td>
				<td>承诺办理</td>
				<td>承诺完成</td>
				<td>交房日期</td>
				<td></td>
			</tr>
			<c:choose>
				<c:when test="${rows!=null}">
					<c:forEach items="${rows }" var="ins" varStatus="vs">
						<tr>
							<td><input type="checkbox" name="IdList" value="${ins.aae301 }"
									onclick='onSelect(this.checked)'/></td>
							<td>${vs.count}</td>
							<td>${ins.aae302 }</td>
							<td>${ins.aaa804 }</td>
							<td>${ins.aae303 }</td>
							<td>${ins.aae307 }</td>
							<td>${ins.aae308 }</td>
							<td>${ins.aae305 }</td>
							<td><a href="#" onclick='findById(${ins.aae301})'>查看明细</a></td>
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
				<td>
					<input name="next" type="submit" value="添加"
						formaction="<%=path %>/ae/ae03addpage.html">
				</td>
			</tr>
		</table>
	</form>
</body>
</html>