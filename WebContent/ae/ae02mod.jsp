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
	<table border="1" align="center" title="��������" width="45%">
			<caption>
				��ͬ����
				<hr width="160">
			</caption>
			<tr>
				<td>��ǰ����</td>
				<td><e:select name="aae218" value="δ����:01,�Ѱ���:02" defval="01"/></td>
			</tr>
			<tr>
				<td>���ʱ��</td>
				<td><e:date name="aae602" required="true"/></td>
			</tr>
			<tr>
				<td>ҵ��Ա</td>
				<td><e:text name="aae603" required="true"/></td>
			</tr>
			<tr>
				<td>��ͬ����ʱ��</td>
				<td><e:date name="aae604" required="true"/></td>
			</tr>
			<tr>
				<td>��ע</td>
				<td><e:textarea rows="5" cols="45" name="aae605"/></td>
			</tr>
			<tr>
				<td colspan="2" align="center">
					<input type="submit" name="next" value="��������">
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