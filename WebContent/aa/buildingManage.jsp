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
function onEdit(vaaa701)
{
	var myform = document.getElementById("myform");
	myform.action = "<%=path%>/aa07FindById.html?aaa701=" + vaaa701;
	myform.submit();
}
function onDel(vaaa701)
{
	var myform = document.getElementById("myform");
	myform.action = "<%=path%>/aa07DelById.html?aaa701=" + vaaa701;
	myform.submit();
}
function onRoom(vaaa701)
{
	var myform = document.getElementById("myform");
	myform.action = "<%=path%>/aa08Query.html?aaa701=" + vaaa701;
	myform.submit();
}
</script>
<body>
	<br>
	<br>
	<form action="<%=path%>/aa/aa07Query.html" id = "myform" method="post">
		<table border="1" align="center" width="95%">
			<caption>
			¥������
			<hr width:"160px">
			</caption>
			<tr>
				<td></td>
				<td>���</td>
				<td>����</td>
				<td>��������</td>
				<td>��������</td>
				<td>¥����</td>
				<td>��Ԫ��</td>
				<td>ÿ�㻧��</td>
				<td>��ע</td>
				<td>�������</td>
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
							<input type="checkbox" onclick="onSelect(this.checked)" name="idlist" value="${ins.aaa701 }" >
							</td>
							<td>${vs.count }</td>
							<td>
							<a href="#" onclick = "onEdit('${ins.aaa701 }')" >${ins.aaa702 }��</a>
							</td>
							<td>${ins.aaa708 }</td>
							<td>${ins.aaa703 }</td>
							<td>${ins.aaa704 }</td>
							<td>${ins.aaa705 }</td>
							<td>${ins.aaa706 }</td>
							<td>${ins.aaa707 }</td>
							<td>
							<a href="#" onClick="onRoom('${ins.aaa701}')">�������</a>
							</td>
							<td>
							<a href="#" onClick="onDel('${ins.aaa701}')">ɾ��</a>
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
						formaction="<%=path %>/aa/buildingAdd.jsp"> 
					<input type="submit" value="ɾ��" name="next" disabled="disabled"
						formaction="<%=path %>/aa/aa07Delete.html" id="del" >
					<input type="submit" value="����" name="next" 
					formaction="<%=path %>/aa/aa06Query.html" formnovalidate="formnovalidate" >
				</td>
			</tr>
		</table>
		
		<input type="hidden" name="aaa601" value="${param.aaa601 }">
		<input type="hidden" name="aaa201" value="1">
		<input type="hidden" name="aaa708" value="${param.aaa602 }">
	</form>

</body>
</html>