<%@ page language="java" pageEncoding="GBK"%>
<%@ taglib uri="http://org.wangxg/jsp/extl" prefix="e" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%String path=request.getContextPath(); %>
<html>
<head>
<title>Insert title here</title>
</head>
<body>
${msg }
<form id="layer" action="<%=path%>/ab02Query.html" method="post" >
		<table border="1" align="center" width="90%">
			<caption>
				���ۼƻ���ϸ��
				<hr>
			</caption>
			<tr>
				<td>���</td>
				<td>��Ʒ����</td>
				<td>�ƻ���������</td>
				<td>�ƻ��������</td>
				<td>�ƻ����۽��</td>
				<td>�ƻ����۾���</td>
				<td>�ƻ��ؿ���</td>
			</tr>

			<c:choose>
				<c:when test="${rows!=null }">
					<c:forEach items="${rows }" var="ins" varStatus="vs">
						<tr>
							<td>${vs.count }</td>
							<td><input type="text" name="aab202List" value="${ins.cnaab202 }" readonly="true"></td>
							<td><input type="text" name="aab203List" value="${ins.aab203 }"></td>
							<td><input type="text" name="aab204List" value="${ins.aab204 }"></td>
							<td><input type="text" name="aab205List" value="${ins.aab205 }"></td>
							<td><input type="text" name="aab206List" value="${ins.aab206 }"></td>
							<td><input type="text" name="aab207List" value="${ins.aab207 }"></td>
						</tr>
					</c:forEach>
					<tr>
						<td colspan="7" align="center">
							<input type="submit" name="next" value="�����޸�" formaction="<%=path %>/ab02Update.html?aab101=${param.aab101}">
							<input type="submit" name="next" value="����" formaction="<%=path %>/ab01FindById.html?aab101=${param.aab101}">
						</td>
					</tr>
				</c:when>			
			</c:choose>
		</table>
	</form>
</body>
</html>