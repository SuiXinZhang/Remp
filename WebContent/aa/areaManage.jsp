<%@ page language="java"    pageEncoding="GBK"%>
<%@ taglib uri="http://org.wangxg/jsp/extl"  prefix="e"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<% String path = request.getContextPath(); %>
<html>
<head>
<title>areaManage</title>
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
function onEdit(vaaa601)
{
	var myform = document.getElementById("myform");
	myform.action = "<%=path%>/aa06FindById.html?aaa601=" + vaaa601;
	myform.submit();
}
function onDel(vaaa601)
{
	var myform = document.getElementById("myform");
	myform.action = "<%=path%>/aa06DelById.html?aaa601=" + vaaa601;
	myform.submit();
}
function onBuilding(vaaa601,vaaa602)
{
	var aaa602 = document.getElementById("aaa602");
	aaa602.value=vaaa602;
	
	var myform = document.getElementById("myform");
	myform.action = "<%=path%>/aa07Query.html?aaa601=" + vaaa601;
	myform.submit();
}
</script>
<body>
	<br>
	<br>
	<form action="<%=path%>/aa/aa06Query.html" id = "myform" method="post">
		<table border="1" align="center" width="95%">
			<caption>
			�������
			<hr width:"160px">
			</caption>
			<tr>
				<td></td>
				<td>���</td>
				<td>����</td>
				<td>��ַ</td>
				<td>���</td>
				<td>��ע</td>
				<td>¥������</td>
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
							<input type="checkbox" onclick="onSelect(this.checked)" name="idlist" value="${ins.aaa601 }" >
							</td>
							<td>${vs.count }</td>
							<td>
							<a href="#" onclick = "onEdit('${ins.aaa601 }')" >${ins.aaa602 }</a>
							</td>
							<td>${ins.aaa603 }</td>
							<td>${ins.aaa604 }</td>
							<td>${ins.aaa605 }</td>
							<td>
							<a href="#" onClick="onBuilding('${ins.aaa601}','${ins.aaa602}')">¥������</a>
							</td>
							<td>
							<a href="#" onClick="onDel('${ins.aaa601}')">ɾ��</a>
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
						formaction="<%=path %>/aa/areaAdd.jsp"> 
					<input type="submit" value="ɾ��" name="next" disabled="disabled"
						formaction="<%=path %>/aa/aa06Delete.html" id="del" >
					<input type="submit" value="����" name="next" 
					formaction="<%=path %>/aa/aa02Query.html" formnovalidate="formnovalidate" >
				</td>
			</tr>
		</table>
		
		<input type="hidden" name="aaa201" value="1">
		<input type="hidden" id="aaa602" name="aaa602" value="">
	</form>

</body>
</html>