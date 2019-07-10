<%@page import="java.util.Map"%>
<%@ page language="java" pageEncoding="GBK"%>
<%@taglib uri="http://org.wangxg/jsp/extl" prefix="e"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<html>
<head>
<title>Insert title here</title>
</head>
<body>
	<form action="<%=request.getContextPath()%>/ae/ae02modifyList.html" method="post">
	<table border="1" align="center" title="批量备案" width="45%">
			<caption>
				合同备案
				<hr width="160">
			</caption>
			<tr>
				<td>当前进程</td>
				<td><e:select name="aae218" value="未办理:01,已办理:02" defval="01"/></td>
			</tr>
			<tr>
				<td>完成时间</td>
				<td><e:date name="aae602" required="true"/></td>
			</tr>
			<tr>
				<td>业务员</td>
				<td><e:text name="aae603" required="true"/></td>
			</tr>
			<tr>
				<td>合同备案时间</td>
				<td><e:date name="aae604" required="true"/></td>
			</tr>
			<tr>
				<td>备注</td>
				<td><e:textarea rows="5" cols="45" name="aae605"/></td>
			</tr>
			<tr>
				<td colspan="2" align="center">
					<input type="submit" name="next" value="批量备案">
			</tr>
		</table>
		<%Map<String,String[]> map = request.getParameterMap();
		String[] idList = map.get("IdList");%>
		<c:forEach items="<%=idList %>" var="ins" >
			<input type="hidden" name="IdList" value="${ins }">
		</c:forEach>
	</form>
	${msg }
</body>
</html>