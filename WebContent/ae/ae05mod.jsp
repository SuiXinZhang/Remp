<%@ page language="java" pageEncoding="GBK"%>
<%@taglib uri="http://org.wangxg/jsp/extl" prefix="e"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<html>
<head>
<title>����������</title>
<%String path=request.getContextPath();%>
</head>
<body>
	<form action="" method="post">
		<br> <br>
		<table border="1" align="center" title="��Ȩ��¼" width="45%">
			<caption>
				���������ϸ
				<hr width="160">
			</caption>
			<tr>
				<td>�ͻ�</td>
				<td><e:text name="aae502" required="true" readonly="true"
						defval="${ins.aae707 }" /></td>
				<td>�����</td>
				<td><e:text name="aaa803" readonly="true"
						value="${ins.aaa803 }" required="true" /> 
					<e:hidden name="aaa801" value="${ins.aaa801 }" /></td>
				
			</tr>
			<tr>
				<td>��ͬ���</td>
				<td>
					<e:number step="0.01" name="aae503" readonly="true" defval="${ins.aae702 }" />
				</td>
				<td>�������</td>
				<td><e:number step="0.01" name="aae407" readonly="true" required="true"
						defval="${ins.aae703 }" /></td>
			</tr>
			<tr>
				<td>�β���</td>
				<td><e:number step="0.01"  name="aae409" required="true"
						defval="${ins.aae504 }" /></td>
				<td>ʵ�ʲ����</td>
				<td><e:number step="0.01"  name="aae410" required="true"
						defval="${ins.aae505 }" /></td>
			</tr>
			<tr>
				<td colspan="4" align="center"><input type="submit"
					value="�޸�"
					formaction="<%=path%>/ae/ae05Modify.html">
					<input type="submit" value="����"
					formaction="<%=path%>/ae/ae05query.jsp"
					formnovalidate="formnovalidate">
				</td>
			</tr>
		</table>
		<input type="hidden" name="aae501" value="${param.aae501 }">
	</form>
	${msg}
</body>
</html>