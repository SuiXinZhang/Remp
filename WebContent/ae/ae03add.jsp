<%@ page language="java" pageEncoding="GBK"%>
<%@taglib uri="http://org.wangxg/jsp/extl" prefix="e"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<html>
<head>
<title>������</title>
<%String path=request.getContextPath();%>
</head>
<body>
	<form action="" method="post">
		<br> <br>
		<table border="1" align="center" title="����¼" width="45%">
			<caption>
				����¼
				<hr width="160">
			</caption>
			<tr>
				<td>�ͻ�</td>
				<td><e:text name="aae302" required="true" defval="${ins.aae302 }"/></td>
				<td>��ϵ�绰</td>
				<td><e:text name="aae303"  required="true" defval="${ins.aae303 }"/></td>
			</tr>
			<tr>
			<c:choose>
				<c:when test="${empty param.aae301 }" >
					<td>�����</td>
					<td><e:select name="aaa801" value="${ins.list }" required="true" /></td>
				</c:when>
				<c:otherwise>
					<td>�����</td>
					<td><e:text name="aaa803" readonly="true" value="${ins.aaa803 }" required="true" />
					<e:hidden name="aaa801" value="${ins.aaa801 }"/></td>
				</c:otherwise>
			</c:choose>
				<td>��ͬ���</td>
				<td><e:text name="aae304" required="true" defval="${ins.aae304 }"/></td>
			</tr>
			<tr>
				<td>��������</td>
				<td><e:date name="aae305" required="true" defval="${ins.aae305 }"/></td>
				<td>ҵ��Ա</td>
				<td colspan="3"><e:text name="aae306" required="true" defval="${ins.aae306 }"/></td>
			</tr>
			<tr>
				<td>��ŵ����ʱ��</td>
				<td><e:date name="aae307" required="true" defval="${ins.aae307 }"/></td>
				<td>��ŵ���ʱ��</td>
				<td><e:date name="aae308" required="true" defval="${ins.aae308 }"/></td>
			</tr>
			<tr>
				<td>��ע</td>
				<td colspan="3"><e:textarea  rows="5" cols="45" name="aae311" defval="${ins.aae311 }"/></td>
			</tr>
			<tr>
				<td colspan="4" align="center">
					<input type="submit" value="${empty param.aae301?'���':'�޸�' }"
						formaction="<%=path%>/ae/${empty param.aae301?'ae03Add.html':'ae03Modify.html' }">
					<input type="submit" value="����"
						formaction="<%=path%>/ae/ae03query.jsp" 
						formnovalidate="formnovalidate">
				</td>
			</tr>
		</table>
		<input type="hidden" name="aae301" value="${param.aae301 }"> 
	</form>
	${msg}
</body>
</html>