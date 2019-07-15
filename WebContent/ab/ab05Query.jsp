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
				营销分析
				<hr width="160">
			</caption>
			<tr>
				<td>起始日期</td>
				<td>
					<e:date name="bdate" required="true"/>
				</td>
				<td>截止日期</td>
				<td>
					<e:date name="edate" required="true"/>
				</td>
			</tr>
			<tr>
				<td colspan="2" align="center">
					<input type="submit" name="next" value="来电来访分析"
					formaction="<%=path %>/ab05QueryToC1.html"/>
				</td>
				<td colspan="2" align="center">
					<input type="submit" name="next" value="销售签约分析"
					formaction="<%=path %>/ab05QueryToC2.html"/>
				</td>
			</tr>
		</table>
	</form>
</body>
</html>