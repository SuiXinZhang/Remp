<%@ page language="java" pageEncoding="GBK"%>
<%@ taglib uri="http://org.wangxg/jsp/extl" prefix="e"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%String path=request.getContextPath(); %>

<html>
<head>

<title>�ͻ�¼��</title>
</head>
<body>
<form action="<%=path%>/ad/ad01customerQuery.html" method="post">
<table>
	<tr>
		<td>¼��ͻ�����</td>
		<td>
		<e:text name="caac403"/>
		</td>
	</tr>
	<tr>
		<td>��ϵ�绰</td>
		<td>
		<input type="number" name="caac407">
		</td>
	</tr>
	<tr>
		<td>ҵ��Ա</td>
		<td>
		<e:text name="caac415" value="ҵ�����Ա"/>
		</td>
	</tr>
	<tr>
	<td>
	<input type="submit" name="next" value="��һ��">
	</td>
	</tr>
</table>
</form>
</body>
</html>