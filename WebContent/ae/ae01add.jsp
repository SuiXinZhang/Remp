<%@ page language="java" pageEncoding="GBK"%>
<%@taglib uri="http://org.wangxg/jsp/extl" prefix="e"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<html>
<head>
<title>Insert title here</title>
<style type="text/css">
td {
	height: 30px;
}

msg {
	color: #ff0000
}
</style>
<%String path=request.getContextPath();%>
<%String aad701="1";%>
</head>
<body>
	<form action="" method="post">
		<br> <br>
		<table border="1" align="center" title="Ա����" width="45%">
			<caption>
				��ͬ����
				<hr width="160">
			</caption>
			<tr>
				<td colspan="2">
					--------------------------------------------------------��ͬ����--------------------------------------------------------</td>
			</tr>
			<tr>
			<c:if test="${!empty param.aae101 }">
				<td>��ͬ���</td>
				<td>
					<e:text name="aad710" readonly="true" defval="${ins.aad710 }"/>
				</td>
			</c:if>
			</tr>
			<tr>
				<td>��ŵ����ʱ��</td>
				<td><e:date name="aae102" required="true" defval="${ins.aae102 }"/></td>
			</tr>
			<tr>
				<td>��ŵ���ʱ��</td>
				<td><e:date name="aae103" required="true" defval="${ins.aae103 }"/></td>
			</tr>
			<tr>
				<td>����״̬</td>
				<td><e:select name="aae104" value="δ����:0,�Ѱ���:1" defval="${ins.aae104 }"/></td>
			</tr>
			<tr>
				<td>���ʱ��</td>
				<td><e:date name="aae105" required="true" defval="${ins.aae105 }"/></td>
			</tr>
			<tr>
				<td>�������</td>
				<td><e:number name="aae106" step="0.01" required="true"  defval="${ins.aae106 }"/></td>
			</tr>
				<tr>
				<td>ҵ��Ա</td>
				<td><e:text name="aae107" required="true" defval="${ins.aae107 }"/></td>
			</tr>
			<tr>
				<td>��ͬ������</td>
				<td><e:text name="aae108" required="true" defval="${ins.aae108 }"/></td>
			</tr>
			<tr>
				<td>��ͬ����ʱ��</td>
				<td><e:date name="aae109" required="true" defval="${ins.aae109 }"/></td>
			</tr>
			<tr>
				<td>��ע</td>
				<td><e:textarea rows="5" cols="45" name="aae110" defval="${ins.aae110}"/></td>
			</tr>
			<tr>
				<td colspan="2" align="center">
					<input type="submit" value="${empty param.aae101?'���':'�޸�' }"
						formaction="<%=path%>/${empty param.aae101?'ae01Add.html?aad701=1':'ae01Modify.html'}">
					<input type="submit" value="����"
						formaction="<%=path%>/queryEmp.html"
						formnovalidate="formnovalidate" ></td>
			</tr>
		</table>
		<input type="hidden" name="aae101" value="${param.aae101 }">
	</form>
	${msg}
</body>
</html>