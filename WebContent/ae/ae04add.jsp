<%@ page language="java" pageEncoding="GBK"%>
<%@taglib uri="http://org.wangxg/jsp/extl" prefix="e"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<html>
<head>
<title>��Ȩ����</title>
<%String path=request.getContextPath();%>
<script type="text/javascript">
	function mod(id)
	{
		var vform = document.getElementById("action");
		vform.action = "<%=path %>/ae/ae04mod.html?aae401="+id;
		vform.submit();
	}
</script>
</head>
<body>
	<form action="" method="post">
		<br> <br>
		<table border="1" align="center" title="��Ȩ��¼" width="45%">
			<caption>
				��Ȩ��¼
				<hr width="160">
			</caption>
			<tr>
				<td>�ͻ�</td>
				<td><e:text name="aae402" required="true"
						defval="${ins.aae402 }" /></td>
				<td>��ϵ�绰</td>
				<td><e:text name="aae403" required="true"
						defval="${ins.aae403 }" /></td>
			</tr>
			<tr>
				<c:choose>
					<c:when test="${empty param.aae401 }">
						<td>�����</td>
						<td><e:select name="aaa801" value="${ins.list }"
								required="true" /></td>
					</c:when>
					<c:otherwise>
						<td>�����</td>
						<td><e:text name="aaa803" readonly="true"
								value="${ins.aaa803 }" required="true" /> <e:hidden
								name="aaa801" value="${ins.aaa801 }" /></td>
					</c:otherwise>
				</c:choose>
				<td>��ͬ���</td>
				<td><e:text name="aae405" required="true"
						defval="${ins.aae405 }" /></td>
			</tr>
			<tr>
				<td>�������</td>
				<td><e:number step="0.01" name="aae406" required="true"
						defval="${ins.aae406 }" /></td>
				<td>�������</td>
				<td><e:number step="0.01" name="aae407" required="true"
						defval="${ins.aae407 }" /></td>
			</tr>
			<tr>
				<td>��ŵ����ʱ��</td>
				<td><e:date name="aae409" required="true"
						defval="${ins.aae409 }" /></td>
				<td>��ŵ���ʱ��</td>
				<td><e:date name="aae410" required="true"
						defval="${ins.aae410 }" /></td>
			</tr>
			<tr>
				<td>ҵ��Ա</td>
				<td colspan="3"><e:text name="aae408" required="true"
						defval="${ins.aae408 }" /></td>
			</tr>
			<tr>
				<td>��ע</td>
				<td colspan="3"><e:textarea rows="5" cols="45" name="aae311"
						defval="${ins.aae412 }" /></td>
			</tr>
			<tr>
				<td colspan="4" align="center"><input type="submit"
					value="${empty param.aae401?'���':'�޸�' }"
					formaction="<%=path%>/ae/${empty param.aae401?'ae04Add.html':'ae04Modify.html' }">
					<input type="submit" value="����"
					formaction="<%=path%>/ae/ae04query.jsp"
					formnovalidate="formnovalidate">
				</td>
			</tr>
		</table>
		<c:if test="${!empty param.aae401 }">
			<table border="1" align="center" width="80%">
				<caption>
					���̰���
					<hr width="160">
				</caption>
				<tr>
					<td>���</td>
					<td>�������</td>
					<td>���ʱ��</td>
					<td>������</td>
					<td>��ע</td>
				</tr>
				<tr>
					<td>1</td>
					<td>${ins.snaae411 }</td>
					<td>${ins.aae413 }</td>
					<td>${ins.aae414 }</td>
					<td>${ins.aae415 }</td>
				</tr>
				<tr></tr>
			</table>
		</c:if>
		<input type="hidden" name="aae401" value="${param.aae401 }">
		<input type="hidden" name="aae411" value="${ins.aae411 }">
	</form>
	${msg}
</body>
</html>