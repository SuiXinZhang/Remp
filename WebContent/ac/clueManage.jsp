<%@ page language="java"    pageEncoding="GBK"%>
<%@ taglib uri="http://org.wangxg/jsp/extl"  prefix="e"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<% String path = request.getContextPath(); %>
<html>
<head>
<title>clueManage</title>
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
function onEdit(vaac101)
{
	var myform = document.getElementById("myform");
	myform.action = "<%=path%>/ac01FindById.html?aac101=" + vaac101;
	myform.submit();
}
function onDel(vaac101)
{
	var myform = document.getElementById("myform");
	myform.action = "<%=path%>/ac01DelById.html?aac101=" + vaac101;
	myform.submit();
}
function onOpportunities(vaac101)
{
	var myform = document.getElementById("myform");
	myform.action = "<%=path%>/ac04ChangeOpport.html?tag=1&aac101=" + vaac101;
	myform.submit();
}
</script>
<body>
	<br>
	<br>
	<form action="<%=path%>/ac/ac01Query.html" id = "myform" method="post">
		<table border="1" align="center" width="95%">
			<caption>
				��������
				<hr width="180px">
			</caption>
			<tr>
				<td colspan="4">��ѯ����</td>
			</tr>
			<tr>
				<td>�ͻ���</td>
				<td><e:text name="qaac105" /></td>
				<td>��Ŀ����</td>
				<td><e:text name="qaac104" /></td>
			</tr>

			<tr>
				<td>���÷�ʽ</td>
				<td><e:select  value="�绰:�绰,�߷�:�߷�" name="qaac103" header="true"/></td>
				<td>��������</td>
				<td><e:select value="1:1,2:2,3:3,4:4,5:5" name="qaac109" header="true" /></td>
			</tr>
			<tr>
				<td>�Ƿ��ѱ��Ϊ���ۻ���</td>
				<td><e:select value="��:1,��:2" name="qaac111" defval="2" header="true"/></td>
				</tr>
			<tr>
				<td>��������[B]</td>
				<td><e:date name="baac102" /></td>
				<td>��������[E]</td>
				<td><e:date name="eaac102" /></td>
			</tr>
		</table>
		<table border="1" align="center" width="95%">
			<tr>
				<td></td>
				<td>���</td>
				<td>��Ŀ����</td>
				<td>�ͻ���</td>
				<td>�ͻ���ϵ�绰</td>
				<td>ҵ��Ա</td>
				<td>���÷�ʽ</td>
				<td>��������</td>
				<td>��������</td>
				<td>���ۻ���״̬</td>
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
							<input type="checkbox" onclick="onSelect(this.checked)" name="idlist" value="${ins.aac101 }" >
							</td>
							<td>${vs.count }</td>
							<td>
							<a href="#" onclick = "onEdit('${ins.aac101 }')" >${ins.aac104 }</a>
							</td>
							<td>${ins.aac105 }</td>
							<td>${ins.aac106 }</td>
							<td>${ins.aac107 }</td>
							<td>${ins.aac103 }</td>
							<td>${ins.aac102 }</td>
							<td>${ins.aac109 }</td>
							<td>${ins.aac111 }</td>
							<td>
							<a href="#" onClick="onDel('${ins.aac101}')">ɾ��</a>
							<a href="#" onClick="onOpportunities('${ins.aac101}')">ת���ۻ���</a>
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
				<td align="center"><input type="submit" value="��ѯ" name="next">
					<input type="submit" value="���" name="next"
					formaction="<%=path %>/ac/clueAdd.jsp"> 
					<input type="submit" value="ɾ��" name="next" disabled="disabled"
					formaction="<%=path %>/ac/ac01Delete.html" id="del" ></td>
			</tr>
		</table>
	</form>

</body>
</html>