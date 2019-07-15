<%@ page language="java" pageEncoding="GBK"%>
<%@ taglib uri="http://org.wangxg/jsp/extl" prefix="e"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<% String path = request.getContextPath();%>
<html>
<head>
<title>Client Add</title>
</head>
<style type="text/css">
tr {
	width: 60%;
	height: 30px
}
</style>
<body>
	<br>
	<br>
	<form action="<%=path%>/ac/ac04Add.html" method="post">
		${msg}
		<table border="1" align="center" width="45%">
			<caption>
				�ͻ�̨��${empty param.aac401?'���':'�޸�' }
				<hr width:"160px">
			</caption>

			<tr>
				<td>�ͻ���</td>
				<td><e:text name="aac403" required="true" autofocus="true"
						defval="${ins.aac403 }" /></td>
			</tr>
			<c:if test="${!empty param.aac401 }">
			<tr>
				<td>�ͻ����</td>
				<td><e:text name="aac402" required="true" readonly="true" defval="${ins.aac402 }" /></td>
			</tr>
			</c:if>
			<tr>
				<td>�Ա�</td>
				<td><e:radio name="aac404" value="��:1,Ů:2,��ȷ��:3" required="true"
						defval="${empty param.aac401?'1':ins.aac404 }" /></td>
			</tr>

			<tr>
				<td>����</td>
				<td><e:text name="aac405" defval="${ins.aac405 }" /></td>
			</tr>

			<tr>
				<td>����</td>
				<td><e:select name="aac406" required="true" value="����:1,�ɹ���:2,����:3,����:4"
						defval="${ins.aac406 }" /></td>
			</tr>

			<tr>
				<td>ְҵ</td>
				<td><e:text name="aac413" defval="${ins.aac413 }" /></td>
			</tr>
			<tr>
				<td>��ν</td>
				<td><e:radio name="aac414" required="true" value="����:1,Ůʿ:2" defval="${ins.aac414 }" /></td>
			</tr>
			<tr>
				<td>��ϵ�绰</td>
				<td><e:text name="aac407" required="true"
						 defval="${ins.aac407 }" /></td>
			</tr>

			<tr>
				<td>����</td>
				<td><e:email name="aac408" defval="${ins.aac408 }" /></td>
			</tr>

			<tr>
				<td>���α���</td>
				<td><e:text name="aac409" required="true"
						defval="${ins.aac409 }" /></td>
			</tr>
			<tr>
				<td>����״��</td>
				<td><e:text name="aaa410"
						defval="${ins.aaa410 }" /></td>
			</tr>

			<tr>
				<td>������Ϣ</td>
				<td><e:text name="aac411"
						defval="${ins.aac411 }" /></td>
			</tr>
			<tr>
				<td>�ʽ�״��</td>
				<td><e:text name="aac412"
						defval="${ins.aac412 }" /></td>
			</tr>
			<tr>
				<td>��¼ҵ��Ա</td>
				<td><e:text name="aac415" required="true"
						defval="${ins.aac415 }" /></td>
			</tr>
			<c:if test="${!empty param.aac401 }">
				<tr>
					<td>Ա�����</td>
					<td><e:text name="aac416" required="true" readonly="true"
							defval="${ins.aac416 }" /></td>
				</tr>
			</c:if>
			<tr>
				<td colspan="2" align="center"><input type="submit" name="next"
					value="${empty param.aac401?'���':'�޸�'}"
					formaction="<%=path %>/ac/${empty param.aac401?'ac04Add.html':'ac04Modify.html' }">
					<input type="submit" name="next" value="����"
					formaction="<%=path%>/ac/ac04Query.html"
					formnovalidate="formnovalidate"></td>
			</tr>
		</table>
		<e:hidden name="qaac401" />
		<e:hidden name="qaac407" />
		<e:hidden name="qaac405" />
		<e:hidden name="qaac403" />
		<e:hidden name="qaac402" />
	</form>
</body>
</html>