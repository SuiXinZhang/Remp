<%@ page language="java"    pageEncoding="GBK"%>
<%@ taglib uri="http://org.wangxg/jsp/extl"  prefix="e"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<% String path = request.getContextPath(); %>
<html>
<head>
<title>methodManage</title>
</head>
<style type="text/css">
tr 
{
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
function onEdit(vaaa901)
{
	var myform = document.getElementById("myform");
	myform.action = "<%=path%>/aa09FindById.html?aaa901=" + vaaa901;
	myform.submit();
}
function onDel(vaaa901)
{
	var myform = document.getElementById("myform");
	myform.action = "<%=path%>/aa09DelById.html?aaa901=" + vaaa901;
	myform.submit();
}
</script>
<body>
	<br>
	<br>
	<form action="<%=path%>/aa/aa09Query.html" id = "myform" method="post">
		<table border="1" align="center" width="95%">
			<caption>
			��Ŀ����
			<hr width:"160px">
			</caption>
			<tr>
				<td></td>
				<td>���</td>
				<td>���ʽ</td>
				<td>�ۿ�</td>
				<td>��Ч����</td>
				<td>ʧЧ����</td>
				<td>�Ƿ����</td>
				<td>��������</td>
				<td>���Ҿ�ȷ��</td>
				<td>����������</td>
				<td>������ȷ��</td>
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
							<td>
							<input type="checkbox" onclick="onSelect(this.checked)" name="idlist" value="${ins.aaa901 }" >
							</td>
							<td>${vs.count }</td>
							<td>
							<a href="#" onclick = "onEdit('${ins.aaa901 }')" >${ins.aaa902 }</a>
							</td>
							<td>${ins.aaa903 }</td>
							<td>${ins.aaa904 }</td>
							<td>${ins.aaa905 }</td>
							<td>${ins.aaa906 }</td>
							<td>${ins.aaa907 }</td>
							<td>${ins.aaa908 }</td>
							<td>${ins.aaa909 }</td>
							<td>${ins.aaa910 }</td>
							<td>${ins.aaa911 }</td>
							<td>
							<a href="#" onClick="onDel('${ins.aaa901}')">ɾ��</a>
							</td>
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
				<td align="center">
					<input type="submit" value="��ѯ" name="next">
					<input type="submit" value="���" name="next"
						formaction="<%=path %>/aa/methodAdd.jsp"> 
					<input type="submit" value="ɾ��" name="next" disabled="disabled"
						formaction="<%=path %>/aa/aa09Delete.html" id="del" >
				</td>
			</tr>
		</table>
		
		<input type="hidden" name="aaa201" value="1">
	</form>

</body>
</html>