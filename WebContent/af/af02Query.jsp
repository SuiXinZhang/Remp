<%@ page language="java"    pageEncoding="GBK"  %>
<%@ taglib uri="http://org.wangxg/jsp/extl"  prefix="e"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<% String path = request.getContextPath(); %>
<html>
<head>
<title>Note Detail</title>
</head>
<style type="text/css">
tr 
{
	height: 25px;
}
</style>
<script>
function onReceive(vaaf201,vaac202,vaac203,vaac204,vaac205,vaac206)
{
	onSetValue(vaac202,vaac203,vaac204,vaac205,vaac206);
	var myform = document.getElementById("myform");
	myform.action = "<%=path%>/af/af02ReceiveNote.jsp?aaf201=" + vaaf201 ;
	myform.submit();
}
function onWrite(vaaf201,vaac202,vaac203,vaac204,vaac205,vaac206)
{
	onSetValue(vaac202,vaac203,vaac204,vaac205,vaac206);
	var myform = document.getElementById("myform");
	myform.action = "<%=path%>/af/af02WriteOffNote.jsp?aaf201=" + vaaf201 ;
	myform.submit();
}
function onDiscard(vaaf201,vaac202,vaac203,vaac204,vaac205,vaac206)
{
	onSetValue(vaac202,vaac203,vaac204,vaac205,vaac206);
	var myform = document.getElementById("myform");
	myform.action = "<%=path%>/af/af02ReceiveNote.jsp?aaf201=" + vaaf201 ;
	myform.submit();
}

function onSetValue(vaac202,vaac203,vaac204,vaac205,vaac206)
{
	var aaf202 = document.getElementById("aaf202");
	aac202.value = vaac202;
	var aaf203 = document.getElementById("aaf203");
	aac203.value = vaac203;
	var aaf204 = document.getElementById("aaf204");
	aac204.value = vaac204;
	var aaf205 = document.getElementById("aaf205");
	aac205.value = vaac205;
	var aaf206 = document.getElementById("aaf206");
	aac206.value = vaac206;
}
</script>
<body>
<form action="<%=path%>/af/af02Query.html" id = "myform" method="post">
		
		<table border="1" align="center" width="95%">
			<caption>
				Ʊ����ϸ
				<hr width="180px">
			</caption>
			<tr>
				<td colspan="4">��ѯ����</td>
			</tr>
			<tr>
				<td>Ʊ��״̬</td>
				<td><e:select value="δ��:1,������:2,�Ѻ���:3,�ѷ���:4" name="qaaf207" header="true" /></td>
			</tr>
			
		</table>
		<table border="1" align="center" width="95%">
			<tr>
				<td></td>
				<td>Ʊ��ǰ׺</td>
				<td>Ʊ��״̬</td>
				<td>������</td>
				<td>��������</td>
				<td>��Ʊ���</td>
				<td>��Ʊ��</td>
				<td>��Ʊ����</td>
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
							<td>${vs.count }</td>
							<td>${ins.aaf202 }</td>
							<td>${ins.aaf207 }</td>
							<td>${ins.aaf205 }</td>
							<td>${ins.aaf206 }</td>
							<td>${ins.aac209 }</td>
							<td>${ins.aac210 }</td>
							<td>${ins.aaf211 }</td>
							<td>
							<!-- disabled="${!(ins.aaf207 == 2) }" -->
							<input type="button" value="����Ʊ��" name="next" 
							onclick="onReceive(${ins.aaf201},${ins.aaf202},${ins.aaf203},${ins.aaf204},${ins.aaf205},${ins.aaf206})" 
							formaction="<%=path %>/af/af02receiveNote.html" >
							<input type="button" value="����Ʊ��" name="next2" 
		   				    onclick="onWrite(${ins.aaf201},${ins.aaf202},${ins.aaf203},${ins.aaf204},${ins.aaf205},${ins.aaf206})" 
							formaction="<%=path %>/af/af02writeOffNote.html" >
							<input type="button" value="����Ʊ��" name="next3" 
							onclick="onDiscard(${ins.aaf201},${ins.aaf202},${ins.aaf203},${ins.aaf204},${ins.aaf205},${ins.aaf206})" 
							formaction="<%=path %>/af/af02discardNote.html" >  
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
						</tr>
					</c:forEach>
				</c:otherwise>
			</c:choose>
		</table>
		<table border="1" align="center" width="95%">
			<tr>
				<td align="center"><input type="submit" value="��ѯ" name="next">
			</tr>
		</table>
		<e:hidden name="aaf202" id="aaf202" value=""/>
		<e:hidden name="aaf203" id="aaf203" value=""/>
		<e:hidden name="aaf204" id="aaf204" value=""/>
		<e:hidden name="aaf205" id="aaf205" value=""/>
		<e:hidden name="aaf206" id="aaf206" value=""/>
</form>
</body>
</html>