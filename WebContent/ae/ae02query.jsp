<%@ page language="java" pageEncoding="GBK"%>
<%@taglib uri="http://org.wangxg/jsp/extl" prefix="e" %>
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
		vform.action = "<%=path %>/ae/ae02findById.html?aae201="+id;
		vform.submit();
	}
</script>
</head>

<body>

<br>
	<br> ${msg }
	<form id="action" action="<%=path %>/ae/ae02query.html" method="post">
		<table border="1" align="center" width="80%">
			<caption>
				贷款管理
				<hr width="160">
			</caption>
			<tr>
				<td>办理状态</td>
				<td><e:select value="银行未放款:01,银行已放款:02" name="qaae218" defval="01"/></td>
				<td>客户姓名</td>
				<td><e:text name="qaae202" /></td>
				<td>房间名称</td>
				<td><e:text name="qaae204" /><e:submit name="next" value="查询"/></td>
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
				<td>当前进程</td>
				<td></td>
			</tr>
			<c:choose>
				<c:when test="${rows!=null}">
					<c:forEach items="${rows }" var="ins" varStatus="vs">
						<tr>
							<td><input type="checkbox" name="IdList" value="${ins.aae201 }"
									onclick='onSelect(this.checked)'/></td>
							<td>${vs.count}</td>
							<td>${ins.aae202 }</td>
							<td>${ins.aae204 }</td>
							<td>${ins.aae203 }</td>
							<td>${ins.aae214 }</td>
							<td>${ins.aae215 }</td>
							<td>${ins.snaae218 }</td>
							<td><a href="#" onclick='modify(${ins.aae201})'>录入备案日期</a></td>
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
						formaction="<%=path %>/ae/ae02add.jsp">
					<input id="mod" type="submit" value="批量办理" disabled="disabled" 
						formaction="<%=path %>/ae/ae02mod.jsp">
				</td>
			</tr>
		</table>
	</form>
</body>
</html>