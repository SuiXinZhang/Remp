<%@ page language="java" pageEncoding="GBK"%>
<%@ taglib uri="http://org.wangxg/jsp/extl" prefix="e"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<% String path = request.getContextPath(); %>
<html>
<head>
<title>teamManage</title>
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
function onEdit(vaaa301)
{
	var myform = document.getElementById("myform");
	myform.action = "<%=path%>/aa03FindById.html?aaa301=" + vaaa301;
	myform.submit();
}
function onDel(vaaa301)
{
	var myform = document.getElementById("myform");
	myform.action = "<%=path%>/aa03DelById.html?aaa301=" + vaaa301;
	myform.submit();
}

function onEmp(vaaa301,vaaa302)
{
	var aaa302 = document.getElementById("aaa302");
	aaa302.value=vaaa302;
	
	var myform = document.getElementById("myform");
	myform.action = "<%=path%>/aa04Query.html?aaa301=" + vaaa301;
	myform.submit();	
}

</script>
<body>
	<br>
	<br>
	<form action="<%=path%>/aa/aa03Query.html" id="myform" method="post">
		<table border="1" align="center" width="95%">
			<caption>
				���Ź���
				<hr width:"160px">
			</caption>
			<tr>
				<td></td>
				<td>���</td>
				<td>��������</td>
				<td>��������</td>
				<td>Ա������</td>
				<td>ɾ��</td>
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
								name="idlist" value="${ins.aaa301 }"></td>
							<td>${vs.count }</td>
							<td><a href="#" onclick="onEdit('${ins.aaa301 }')">${ins.aaa302 }</a>
							</td>
							<td>${ins.aaa303 }</td>
							<td><a href="#"
								onClick="onEmp('${ins.aaa301}','${ins.aaa302}')">Ա������</a></td>
							<td><a href="#" onClick="onDel('${ins.aaa301}')">ɾ��</a></td>
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
						</tr>
					</c:forEach>
				</c:otherwise>
			</c:choose>
		</table>

		<table border="1" align="center" width="95%">
			<tr>
				<td align="center"><input type="submit" value="��ѯ" name="next">
					<input type="submit" value="���" name="next" formaction="<%=path %>/aa/teamAdd.jsp"> 
					<input type="submit" value="ɾ��" name="next" disabled="disabled" formaction="<%=path %>/aa/aa03Delete.html" id="del">
				</td>
			</tr>
		</table>

		<input type="hidden" name="aaa201" value="1"> 
		<input type="hidden" id="aaa302" name="aaa302" value="">
	</form>

</body>
</html>