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
		vform.action = "<%=path %>/ae/ae01findById.html?aae101="+id;
		vform.submit();
	}
</script>
</head>

<body>

<br>
	<br> ${msg }
	<form id="action" action="<%=path %>/ae01/ae01query.html" method="post">
		<table border="1" align="center" width="80%">
			<caption>
				��ͬ����
				<hr width="160">
			</caption>
			<tr>
				<td>����״̬</td>
				<td><e:select value="δ����:0,�Ѱ���:1" name="qaae104" defval="0"/></td>
			</tr>
			<tr>
				<td>�ͻ�����</td>
				<td><e:text name="qaad702" /></td>
				<td>��������</td>
				<td><e:text name="qaaa803" /><e:submit name="next" value="��ѯ"/></td>
			</tr>
		</table>
		<table border="1" align="center" width="80%">
			<tr>
				<td><input type="checkbox" name="modList" value="${ins.aab101 }"
									onclick='onSelect(this.checked)'/></td>
				<td>���</td>
				<td>�ͻ�</td>
				<td>����</td>
				<td>��ϵ�绰</td>
				<td>��ŵ����</td>
				<td>��ŵ���</td>
				<td>��ǰ����</td>
				<td>���ʱ��</td>
				<td></td>
			</tr>
			<c:choose>
				<c:when test="${rows!=null}">
					<c:forEach items="${rows }" var="ins" varStatus="vs">
						<tr>
							<td><input type="checkbox" name="IdList" value="${ins.aae101 }"
									onclick='onSelect(this.checked)'/></td>
							<td>${vs.count}</td>
							<td>${ins.aad702 }</td>
							<td>${ins.aaa804 }</td>
							<td>${ins.aac407 }</td>
							<td>${ins.aae102 }</td>
							<td>${ins.aae103 }</td>
							<td>${ins.snaae104 }</td>
							<td>${ins.aae105 }</td>
							<td><a href="#" onclick='modify(${ins.aae101})'>¼�뱸������</a></td>
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
							<td></td>
						</tr>
					</c:forEach>
				</c:otherwise>
			</c:choose>
		</table>
		<table border="1" align="center" width="80%">
			<tr colspan="2" align="center">
				<td>
					<input id="mod" type="submit" value="�����޸�" disabled="disabled" 
						formaction="<%=path %>/ae/ae01mod.jsp">
				</td>
			</tr>
		</table>
	</form>
</body>
</html>