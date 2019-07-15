<%@ page language="java" pageEncoding="GBK"%>
<%@ taglib uri="http://org.wangxg/jsp/extl" prefix="e" %>
<% String path = request.getContextPath(); %>
<html>
<head>
<title>Insert title here</title>
</head>
<body>
${msg }
	<form action="<%=path %>/ab03Summary.html" method="post">
		<table  border="1" align="center" width="90%">
		<tr>
			<td>
				<e:textarea rows="15" cols="100" name="aab309" defval="${ins.aab309 }" required="true"/>
			</td>
		</tr>
		<tr align="center">
			<td>
				<input type="submit" name="next" value="Íê³É">
				<input type="submit" name="next" value="·µ»Ø"
				formaction="ab03Query.html"
				formnovalidate="formnovalidate">
			</td>
		</tr>
		</table>
		<input type="hidden" name="aab301" value="${param.aab301 }">
	</form>

</body>
</html>