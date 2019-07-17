<%@ page language="java"    pageEncoding="GBK"%>
<%@ taglib uri="http://org.wangxg/jsp/extl"  prefix="e"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<% String path = request.getContextPath(); %>
<html>
<head>
<title>empManage</title>
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
function onEdit(vaaa401)
{
	var myform = document.getElementById("myform");
	myform.action = "<%=path%>/aa04FindById.html?aaa401=" + vaaa401;
	myform.submit();
}
function onDel(vaaa401)
{
	var myform = document.getElementById("myform");
	myform.action = "<%=path%>/aa04DelById.html?aaa401=" + vaaa401;
	myform.submit();
}

</script>
<body>
	<br>
	<br>
	<form action="<%=path%>/aa/aa04Query.html" id = "myform" method="post">
			<table border="1" width="95%" align="center">
		<caption>
			Ա������
			<hr width:"160px">
		</caption>
	  <tr>
	    <td colspan="4">��ѯ����</td>
	  </tr>
	  <tr>

	    <td>���</td>
	    <td>
	      <e:text name="qaaa402"/>
	    </td>
	  </tr>
	  
	  	  <tr>
	  	<td>����</td>
	    <td>
	      <e:text name="qaaa403"/>
	    </td>
	    <td>�Ա�</td>
	    <td>
	      <e:text name="qaaa407"/>
	    </td>
	  </tr>
	  
	  <tr>

	    <td>��λ</td>
	    <td>
	     <e:text name="qaaa404"/>
	    </td>

	    <td>����</td>
	    <td>
	     <e:text name="qaaa406"/>
	    </td>
	  </tr>
	  

	  
	  <tr>
	    <td>����[B]</td>
	    <td>
	      <e:date name="baaa411"/>
	    </td>

	    <td>����[E]</td>
	    <td>
	      <e:date name="eaaa411"/>
	    </td>
	  </tr>

	</table>
		
		<table border="1" align="center" width="95%">
	
			<tr>
				<td></td>
				<td>���</td>
				<td>����</td>
				<td>Ա�����</td>
				<td>��λ</td>
				<td>��������</td>
				<td>�Ա�</td>
				<td>����</td>
				<td>����</td>
				<td>��ϵ��ʽ</td>
				<td>סַ</td>
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
							<input type="checkbox" onclick="onSelect(this.checked)" name="idlist" value="${ins.aaa401 }" >
							</td>
							<td>${vs.count }</td>
							<td>
							<a href="#" onclick = "onEdit('${ins.aaa401 }')" >${ins.aaa403 }</a>
							</td>
							<td>${ins.aaa402 }</td>
							<td>${ins.aaa404 }</td>
							<td>${ins.aaa405 }</td>
							<td>${ins.aaa407 }</td>
							<td>${ins.aaa406 }</td>
							<td>${ins.aaa411 }</td>
							<td>${ins.aaa408 }</td>
							<td>${ins.aaa409 }</td>
							<td>${ins.aaa410 }</td>
							<td>
							<a href="#" onClick="onDel('${ins.aaa401}')">ɾ��</a>
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
					<input type="submit" value="���" name="next" onclick="onAdd()"
						formaction="<%=path %>/aa/empAdd.jsp"> 		
					<input type="submit" value="ɾ��" name="next" disabled="disabled" 
						formaction="<%=path %>/aa/aa04Delete.html" id="del" >
					<input type="submit" value="����" name="next" 
					formaction="<%=path %>/aa/aa03Query.html" formnovalidate="formnovalidate" >
				</td>
			</tr>
		</table>
		
		<input type="hidden" name="aaa301" value="${param.aaa301 }">
		<input type="hidden" name="aaa201" value="1">
		<input type="hidden" name="aaa405" value="${param.aaa302 }">
	</form>

</body>
</html>