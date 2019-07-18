<%@ page language="java" pageEncoding="GBK"%>
<%@ taglib uri="http://org.wangxg/jsp/extl" prefix="e"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<% String path = request.getContextPath(); %>
<html>
<head>
<title>buildingAdd</title>
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
	<form action="<%=path%>/aa/aa07Add.html" method="post">
		${msg}
		<table border="1" align="center" width="45%">
			<caption>
				¥��${empty param.aaa401?'���':'�޸�' }
				<hr width:"160px">
			</caption>

			<tr>
				<td>����</td>
				<td><e:text name="aaa702" required="true" autofocus="true"
						defval="${ins.aaa702 }" /></td>
			</tr>
			<tr>
				<td>��������</td>
				<td><e:text name="aaa703" required="true"
						defval="${ins.aaa703 }" /></td>
			</tr>

			<tr>
				<td>��������</td>
				<td><e:text name="aaa708" required="true"
						defval="${empty ins.aaa701?ins.aaa602:param.aaa708}"
						readonly="true" /></td>
			</tr>

			<tr>
				<td>¥����</td>
				<td><e:number name="aaa704" required="true" step="1"
						defval="${ins.aaa704 }" readonly="${!empty ins.aaa701}" /></td>
			</tr>



			<tr>
				<td>��Ԫ��</td>
				<td><e:number name="aaa705" required="true" step="1"
						defval="${ins.aaa705 }" readonly="${!empty ins.aaa701}" /></td>
			</tr>

			<tr>
				<td>ÿ�㻧��</td>
				<td><e:number name="aaa706" required="true" step="1"
						defval="${ins.aaa706 }" readonly="${!empty ins.aaa701}" /></td>
			</tr>

			<tr>
				<td>��ע</td>
				<td><e:textarea rows="5" cols="45" name="aaa707"
						defval="${ins.aaa707 }" /></td>
			</tr>


			<tr>
				<td colspan="2" align="center">
				<input type="submit" name="next" value="${empty ins.aaa701?'���':'�޸�'}" formaction="<%=path %>/aa/${empty ins.aaa701?'aa07Add.html':'aa07Modify.html' }">
				<input type="submit" name="next" value="����" formaction="<%=path %>/aa/aa07Query.html" formnovalidate="formnovalidate">
				</td>
			</tr>
		</table>


		<input type="hidden" name="aaa201" value="1"> 
		<input type="hidden" name="aaa601" value="${param.aaa601 }"> 
		<input type="hidden" name="aaa701" value="${ins.aaa701 }"> 
		<input type="hidden" name="aaa602" value="${param.aaa708 }">
	</form>
</body>
</html>