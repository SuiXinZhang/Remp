<%@ page language="java" pageEncoding="GBK"%>
<%@ taglib uri="http://org.wangxg/jsp/extl" prefix="e"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<% String path = request.getContextPath(); %>
<html>
<head>
<title>empAdd</title>
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
	<form action="<%=path%>/aa/aa04ModifyById.html" method="post">
		${msg}
		<table border="1" align="center" width="45%">
			<caption>
				������Ϣ�����޸�
				<hr width:"160px">
			</caption>

			<tr>
				<td>״̬</td>
				<td><e:select value="�ȴ�:01,ǩԼ:02,����:03" name="aaa805"
						defval="01" /></td>
			</tr>

			<tr>
				<td>��������</td>
				<td><e:radio value="����:����,����:����,����:����" defval="����"
						name="aaa806" /></td>
			</tr>

			<tr>
				<td>����</td>
				<td><e:text value="${ins.aaa502 }" name="aaa807" /></td>
			</tr>

			<tr>
				<td>��������</td>
				<td><e:text name="aaa808" /></td>
			</tr>


			<tr>
				<td>���ڵ���</td>
				<td><e:text name="aaa810" /></td>
			</tr>


			<tr>
				<td>��ע</td>
				<td><e:textarea rows="5" cols="45" name="aaa812" /></td>
			</tr>


			<tr>
				<td colspan="2" align="center"><input type="submit" name="next"
					value="�޸�" formaction="<%=path %>/aa/aa08Modify.html"> <input
					type="submit" name="next" value="����"
					formaction="<%=path %>/aa/aa08Query.html"
					formnovalidate="formnovalidate"></td>
			</tr>
		</table>

		<c:forEach items='<%= request.getParameterValues("idlist") %>'
			var="ins" varStatus="vs">
			<input type="checkbox" name="List" style="display: none"
				value="${ins }" checked="checked">
		</c:forEach>


		<e:hidden name="qaaa802" />
		<e:hidden name="qaaa803" />
		<e:hidden name="qaaa804" />
		<e:hidden name="qaaa805" />
		<e:hidden name="qaaa806" />
		<e:hidden name="qaaa807" />
		<e:hidden name="baaa808" />
		<e:hidden name="eaaa808" />
		<e:hidden name="baaa809" />
		<e:hidden name="eaaa809" />
		<e:hidden name="baaa810" />
		<e:hidden name="eaaa810" />
		<e:hidden name="baaa811" />
		<e:hidden name="eaaa811" />

		<input type="hidden" name="aaa201" value="1"> 
		<input type="hidden" name="aaa701" value="${param.aaa701 }"> 
		<input type="hidden" name="aaa801" value="${ins.aaa801 }"> 
		<input type="hidden" name="aaa601" value="${param.aaa601 }"> 
		<input type="hidden" name="aaa708" value="${param.aaa602 }">
	</form>
</body>
</html>