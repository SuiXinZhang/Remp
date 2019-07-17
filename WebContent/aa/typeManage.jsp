<%@ page language="java" pageEncoding="GBK"%>
<%@ taglib uri="http://org.wangxg/jsp/extl" prefix="e"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<% String path = request.getContextPath(); %>
<html>
<head>
<title>typeManage</title>
</head>
<style type="text/css">
tr {
	height: 25px;
}
</style>
<script type="text/javascript">
var count = 0;
function onSelect(vstate)
{
	vstate?count++:count--;
	var delB = document.getElementById("del");
	delB.disabled = (count == 0);
}
function onEdit(vaaa501)
{
	var myform = document.getElementById("myform");
	myform.action = "<%=path%>/aa05FindById.html?aaa501=" + vaaa501;
	myform.submit();
}
function onDel(vaaa501)
{
	var myform = document.getElementById("myform");
	myform.action = "<%=path%>/aa05DelById.html?aaa501=" + vaaa501;
	myform.submit();
}
</script>
<body>
	<br>
	<br>
	<form action="<%=path%>/aa/aa05Query.html" id="myform" method="post">
		<table border="1" align="center" width="95%">
			<caption>
				��Ŀ����
				<hr width:"160px">
			</caption>
			<tr>
				<td></td>
				<td>���</td>
				<td>���ͱ��</td>
				<td>��Ʒ����</td>
				<td>����ṹ</td>
				<td>�������</td>
				<td>�������</td>
				<td>����ƽ��ͼ</td>
				<td>��ע</td>
				<td></td>
			</tr>
			<!--
				         ע������
				    1.$�������ŵĽ������ }��˫����֮��,��������ֿո�
				    	��    }"   д��һ��
				    2.���е�����֮������Ҫ��һ���ո�,���򱨴�
				    3.var ����,�൱����ҳ�涨���������,���  ins����������$ {  }
				   -->
			<c:choose>
				<c:when test="${rows!= null }">
					<c:forEach items="${rows }" var="ins" varStatus="vs">
						<tr>
							<td><input type="checkbox" onclick="onSelect(this.checked)"
								name="idlist" value="${ins.aaa501 }"></td>
							<td>${vs.count }</td>
							<td><a href="#" onclick="onEdit('${ins.aaa501 }')">${ins.aaa502 }</a>
							</td>
							<td>${ins.aaa503 }</td>
							<td>${ins.aaa504 }</td>
							<td>${ins.aaa505 }</td>
							<td>${ins.aaa506 }</td>
							<td>${ins.aaa507 }</td>
							<td>${ins.aaa508 }</td>
							<td><a href="#" onClick="onDel('${ins.aaa501}')">ɾ��</a></td>
						</tr>
					</c:forEach>
					<c:forEach begin="${fn:length(rows)+1 }" end="15" step="1">
						<tr>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
						</tr>
					</c:forEach>
				</c:when>
				<c:otherwise>
					<c:forEach begin="1" end="15" step="1">
						<tr>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
						</tr>
					</c:forEach>
				</c:otherwise>
			</c:choose>
		</table>

		<table border="1" align="center" width="95%">
			<tr>
				<td align="center">
				<input type="submit" value="��ѯ" name="next">
				<input type="submit" value="���" name="next" formaction="<%=path %>/aa/typeAdd.jsp"> 
				<input type="submit" value="ɾ��" name="next" disabled="disabled" formaction="<%=path %>/aa/aa05Delete.html" id="del">
				</td>
			</tr>
		</table>

		<input type="hidden" name="aaa201" value="1">
	</form>

</body>
</html>