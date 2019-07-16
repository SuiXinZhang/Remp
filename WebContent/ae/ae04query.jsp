<%@ page language="java" pageEncoding="GBK"%>
<%@taglib uri="http://org.wangxg/jsp/extl" prefix="e"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<html>
<head>
<title>��Ȩ����</title>
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
				��Ȩ����
				<hr width="160">
			</caption>
			<tr>
				<td>�ͻ�����</td>
				<td><e:text name="qaae402" /></td>
				<td>��������</td>
				<td><e:text name="qaaa803" />
					<e:submit name="next" value="��ѯ" /></td>
			</tr>
		</table>
		<table border="1" align="center" width="80%">
			<tr>
				<td>���</td>
				<td>�ͻ�</td>
				<td>����</td>
				<td>��ϵ�绰</td>
				<td>��ŵ����</td>
				<td>��ŵ���</td>
				<td>�������</td>
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
							<td><a href="#" onclick='findById(${ins.aae401})'>�鿴��ϸ</a></td>
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
				<td><input name="next" type="submit" value="�����Ȩ"
					formaction="<%=path %>/ae/ae04addpage.html"></td>
			</tr>
		</table>
	</form>
</body>
</html>