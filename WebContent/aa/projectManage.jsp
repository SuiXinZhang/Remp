<%@ page language="java" pageEncoding="GBK"%>
<%@ taglib uri="http://org.wangxg/jsp/extl" prefix="e"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<% String path = request.getContextPath(); %>
<html>
<head>
<title>projectManage</title>
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
function onEdit(vaaa201)
{
	var myform = document.getElementById("myform");
	myform.action = "<%=path%>/aa02FindById.html?aaa201=" + vaaa201;
	myform.submit();
}
function onDel(vaaa201)
{
	var myform = document.getElementById("myform");
	myform.action = "<%=path%>/aa02DelById.html?aaa201=" + vaaa201;
	myform.submit();
}
</script>
<body>
	<br>
	<br>
	<form action="<%=path%>/aa/aa02Query.html" id="myform" method="post">
		<table border="1" align="center" width="95%">
			<caption>
				��Ŀ����
				<hr width:"160px">
			</caption>
			<tr>
				<td></td>
				<td>���</td>
				<td>��Ŀ����</td>
				<td>��Ŀ��ַ</td>
				<td>��������</td>
				<td>��������</td>
				<td>��Ŀ������</td>
				<td>��Ŀ״̬</td>
				<td>ռ�����</td>
				<td>�������</td>
				<td>�������</td>
				<td>��������</td>
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
								name="idlist" value="${ins.aaa201 }"></td>
							<td>${vs.count }</td>
							<td><a href="#" onclick="onEdit('${ins.aaa201 }')">${ins.aaa202 }</a>
							</td>
							<td>${ins.aaa203 }</td>
							<td>${ins.aaa204 }</td>
							<td>${ins.aaa206 }</td>
							<td>${ins.aaa208 }</td>
							<td>${ins.aaa209 }</td>
							<td>${ins.aaa211 }</td>
							<td>${ins.aaa212 }</td>
							<td>${ins.aaa213 }</td>
							<td>${ins.aaa214 }</td>
							<td><a href="#" onClick="onDel('${ins.aaa201}')">ɾ��</a></td>
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
				<td align="center"><input type="submit" value="��ѯ" name="next">
					<input type="submit" value="���" name="next" formaction="<%=path %>/aa/projectAdd.jsp"> 
					<input type="submit" value="ɾ��" name="next" disabled="disabled" formaction="<%=path %>/aa/aa02DelById.html" id="del">
				</td>
			</tr>
		</table>

		<input type="hidden" name="aaa101" value="1">
	</form>

</body>
</html>