<%@ page language="java"    pageEncoding="GBK"%>
<%@ taglib uri="http://org.wangxg/jsp/extl"  prefix="e"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<% String path = request.getContextPath(); %>
<html>
<head>
<title>clientManage</title>
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
	var batchUpdateB = document.getElementById("update");
	var modifyFollow = document.getElementById("modifyFollow");
	modifyFollow.disabled = (count == 0);
	batchUpdateB.disabled= (count ==0);
	delB.disabled = (count == 0);
}
function onEdit(vaac301)
{
	var myform = document.getElementById("myform");
	myform.action = "<%=path%>/ac03FindById.html?aac301=" + vaac301;
	myform.submit();
}
function onDel(vaac301)
{
	var myform = document.getElementById("myform");
	myform.action = "<%=path%>/ac03DelById.html?aac301=" + vaac301;
	myform.submit();
}
function onBatchUpdate()
{
	//formaction="<%=path%>/ac/ac03BatchUpdate.html"
	var myform = document.getElementById("myform");
	myform.action = "<%=path%>/ac/ac03BatchUpdate.html";
	var maac304 = document.getElementById("maac304");
	console.log(maac304);
	if(maac304.value != null)
	{
		myform.submit();
	}
	else 
	{
		alert("��ѡ���޸ĺ�ĸ���״̬����")
	}
}
function onBatchUpdate2()
{
	var myform = document.getElementById("myform");
	myform.action = "<%=path%>/ac/ac03ModifyFollow.html";
	var maac306 = document.getElementById("maac306");
	console.log(maac306);
	var maac307 = document.getElementById("maac307");
	console.log(maac307);
	alert(maac307.value);
	if(maac306.value != null)
	{
		if(maac307.value != null)
		{
			myform.submit();
		}
		else 
		{
			alert("���ҵ��Ա���");
		}
	}
	else 
	{
		alert("���ҵ��Ա����");
	}
	
	
}
</script>
<body>
	<br>
	<br>
	<form action="<%=path%>/ac/ac03Query.html" id = "myform" method="post">
		<table border="1" align="center" width="95%">
			<caption>
				�ͻ���������
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
				<td>����ҵ��Ա</td>
				<td><e:text name="qaac306" /></td>
				<td>����ҵ��Ա���</td>
				<td><e:text name="qaac307" /></td>
			</tr>
			<tr>
				<td>��Ӹ���ҵ��Ա</td>
				<td><e:text name="maac306" id="maac306"/></td>
				<td>����ҵ��Ա���</td>
				<td><e:text name="maac307" id="maac307"/></td>
			</tr>
			<tr>
				<td>����״̬</td>
				<td><e:select value="������:01,�Ѹ���:02,���ٴθ���:03"  name="qaac304" header="true"/></td>
				<td>�޸ĺ�ĸ���״̬</td>
				<td><e:select value="������:01,�Ѹ���:02,���ٴθ���:03" id="maac304" name="maac304" header="true" /></td>
			</tr>
			<tr>
				<td>����ʱ��[B]</td>
				<td><e:date name="baac305" /></td>
				<td>����ʱ��[E]</td>
				<td><e:date name="eaac305" /></td>
			</tr>
		</table>
		<table border="1" align="center" width="95%">
			<tr>
				<td></td>
				<td>���</td>
				<td>�ͻ���</td>
				<td>�ͻ����</td>
				<td>��������</td>
				<td>����״̬</td>
				<td>����ʱ��</td>
				<td>����ҵ��Ա</td>
				<td>����ҵ��Ա���</td>
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
							<input type="checkbox" onclick="onSelect(this.checked)" name="idlist" value="${ins.aac301 }" >
							</td>
							<td>${vs.count }</td>
							<td>
							<a href="#" onclick = "onEdit('${ins.aac301 }')" >${ins.aac403 }</a>
							</td>
							<td>${ins.aac402 }</td>
							<td>${ins.aac303 }</td>
							<td>${ins.cnaac304 }</td>
							<td>${ins.aac305 }</td>
							<td>${ins.aac306 }</td>
							<td>${ins.aac307 }</td>
							<td>
							<a href="#" onClick="onDel('${ins.aac301}')">ɾ��</a>
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
				<td align="center"><input type="submit" value="��ѯ" name="next">
					<input type="submit" value="���" name="next" disabled="disabled"
					formaction="<%=path %>/ac/addFollow.jsp"> 
					<input type="button" value="�����޸�״̬"  disabled="disabled" onclick="onBatchUpdate()"
					  name="next1" id="update" >
					  <input type="button" value="������Ӹ���ҵ��Ա"  disabled="disabled" onclick="onBatchUpdate2()"
					  name="next2" id="modifyFollow" >
					<input type="submit" value="ɾ��" name="next" disabled="disabled"
					formaction="<%=path %>/ac/ac03Delete.html" id="del" ></td>
			</tr>
		</table>
	</form>
</body>
</html>