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
				�������
				<hr width="160">
			</caption>
			<tr>
				<td>����״̬</td>
				<td><e:select value="����δ�ſ�:01,�����ѷſ�:02" name="qaae218" defval="01"/></td>
				<td>�ͻ�����</td>
				<td><e:text name="qaae202" /></td>
				<td>��������</td>
				<td><e:text name="qaae204" /><e:submit name="next" value="��ѯ"/></td>
			</tr>
		</table>
		<table border="1" align="center" width="80%">
			<tr>
				<td></td>
				<td>���</td>
				<td>�ͻ�</td>
				<td>����</td>
				<td>��ϵ�绰</td>
				<td>��ŵ����</td>
				<td>��ŵ���</td>
				<td>��ǰ����</td>
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
							<td><a href="#" onclick='modify(${ins.aae201})'>¼�뱸������</a></td>
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
					<input name="next" type="submit" value="���"
						formaction="<%=path %>/ae/ae02add.jsp">
					<input id="mod" type="submit" value="��������" disabled="disabled" 
						formaction="<%=path %>/ae/ae02mod.jsp">
				</td>
			</tr>
		</table>
	</form>
</body>
</html>