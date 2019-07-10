<%@ page language="java" pageEncoding="GBK"%>
<%@ taglib uri="http://org.wangxg/jsp/extl" prefix="e"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%String path=request.getContextPath(); %>

<html>
<head>

<title>客户录入</title>
</head>
<body>
<form action="<%=path%>/ad/ad01customerQuery.html" method="post">
<table>
	<tr>
		<td>录入客户姓名</td>
		<td>
		<e:text name="caac403"/>
		</td>
	</tr>
	<tr>
		<td>联系电话</td>
		<td>
		<input type="number" name="caac407">
		</td>
	</tr>
	<tr>
		<td>业务员</td>
		<td>
		<e:text name="caac415" value="业务管理员"/>
		</td>
	</tr>
	<tr>
	<td>
	<input type="submit" name="next" value="下一步">
	</td>
	</tr>
</table>
</form>
</body>
</html>