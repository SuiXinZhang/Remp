<%@ page language="java" pageEncoding="GBK"%>
<%@ taglib uri="http://org.wangxg/jsp/extl" prefix="e" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<% String path = request.getContextPath(); %>
<html>
<head>
<title>Insert title here</title>
</head>
<body>
${msg }
	<form action="<%=path %>/ab05Add.html" method="post">
		<table border="1" align="center" width="90%">
			<caption>
				Ӫ������
				<hr width="160">
			</caption>
			<tr>
				<td>��ʼ����</td>
				<td>
					<e:date name="bdate" required="true"/>
				</td>
				<td>��ֹ����</td>
				<td>
					<e:date name="edate" required="true"/>
				</td>
			</tr>
			<tr>
				<td colspan="2" align="center">
					<input type="submit" name="next" value="�������÷���"
					formaction="<%=path %>/ab05QueryToC1.html"/>
				</td>
				<td colspan="2" align="center">
					<input type="submit" name="next" value="����ǩԼ����"
					formaction="<%=path %>/ab05QueryToC2.html"/>
				</td>
			</tr>
		</table>
	</form>
</body>
</html>