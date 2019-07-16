<%@ page language="java"    pageEncoding="GBK"%>
<%@ taglib uri="http://org.wangxg/jsp/extl"  prefix="e"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<% String path = request.getContextPath(); %>
<html>
<head>
<title>Care Manage</title>
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
function onEdit(vaac501)
{
	var myform = document.getElementById("myform");
	myform.action = "<%=path%>/ac05FindById.html?aac501=" + vaac501;
	myform.submit();
}
function onDel(vaac601)
{
	var myform = document.getElementById("myform");
	myform.action = "<%=path%>/ac05DelById.html?aac601=" + vaac601;
	myform.submit();
}
</script>
<body>
<br>
	<br>
	<form action="<%=path%>/ac/ac05Query.html" id = "myform" method="post">
		<table border="1" align="center" width="95%">
			<caption>
				�ͻ��ػ�����
				<hr width="180px">
			</caption>
			<tr>
				<td colspan="4">��ѯ����</td>
			</tr>
			<tr>
				<td>�ͻ���</td>
				<td><e:text name="qaac403" /></td>
				<td>�ͻ����</td>
				<td><e:text name="qaac402" /></td>
			</tr>
			<tr>
				<td>�ƶ�ҵ��Ա</td>
				<td><e:text name="qaac507" /></td>
				<td>�ƶ�ҵ��Ա���</td>
				<td><e:text name="qaac503" /></td>
			</tr>
			<tr>
				<td>ִ��״̬</td>
				<td><e:select name="qaac504" value="δִ��:01,��ִ��:02,�ѷ���:03" header="true" /></td>
				<td>��������</td>
				<td><e:radio name="qaac509" value="�绰:1,����:2" defval="2"   /></td>
			</tr>
			
			<tr>
				<td>�ƶ�ʱ��[B]</td>
				<td><input name="baac508" type="datetime-local" ></td>
				<td>�ƶ�ʱ��[E]</td>
				<td><input name="eaac508" type="datetime-local" ></td>
			</tr>
		</table>
		<table border="1" align="center" width="95%">
			<tr>
				<td></td>
				<td>���</td>
				<td>�ͻ���</td>
				<td>�ͻ����</td>
				<td>��Ϣ����</td>
				<td>��Ϣ����</td>
				<td>ִ��״̬</td>
				<td>��������</td>
				<td>����ʱ��</td>
				<td>�ƶ�ʱ��</td>
				<td>�ƶ�ҵ��Ա</td>
				<td>�ƶ�ҵ��Ա���</td>
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
							<input type="checkbox" onclick="onSelect(this.checked)" name="idlist" value="${ins.aac601 }" >
							</td>
							<td>${vs.count }</td>
							<td>
							<a href="#" onclick = "onEdit('${ins.aac501 }')" >${ins.aac403 }</a>
							</td>
							<td>${ins.aac402 }</td>
							<td>${ins.aac502 }</td>
							<td>${ins.aac506 }</td>
							<td>${ins.cnaac504 }</td>
							<td>${ins.cnaac509 }</td>
							<td>${ins.aac505 }</td>
							<td>${ins.aac508 }</td>
							<td>${ins.aac507 }</td>
							<td>${ins.aac503 }</td>
							<td>
							<a href="#" onClick="onDel('${ins.aac601}')">ɾ��</a>
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
					<input type="submit" value="���" name="next" disabled="disabled"
					formaction="<%=path %>/ac/clientCare.jsp"> 
					<input type="submit" value="ɾ��" name="next" disabled="disabled"
					formaction="<%=path %>/ac/ac05Delete.html" id="del" ></td>
			</tr>
		</table>
	</form>
</body>
</html>