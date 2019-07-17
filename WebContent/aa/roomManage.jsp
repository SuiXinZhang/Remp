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
	
	var modifyB = document.getElementById("modify");
	modifyB.disabled = (count == 0);
}
function onEdit(vaaa801)
{
	var myform = document.getElementById("myform");
	myform.action = "<%=path%>/aa08FindById.html?aaa801=" + vaaa801;
	myform.submit();
}
function onDel(vaaa801)
{
	var myform = document.getElementById("myform");
	myform.action = "<%=path%>/aa08DelById.html?aaa801=" + vaaa801;
	myform.submit();
}

</script>
<body>
	<br>
	<br>
	<form action="<%=path%>/aa/aa08Query.html" id = "myform" method="post">
	<!-- ��ѯ������ -->
	<table border="1" width="95%" align="center">
	<caption>
	�������
	<hr width:"160px">
	</caption>
	  <tr>
	    <td colspan="4">��ѯ����</td>
	  </tr>
	  <tr>
	    <td>�������</td>
	    <td>
	      <e:text name="qaaa802"/>
	    </td>
	    <td>�����</td>
	    <td>
	      <e:text name="qaaa803"/>
	    </td>
	  </tr>
	  
	  <tr>
	    <td>״̬</td>
	    <td>
	      <e:select value="�ȴ�:01,ǩԼ:02,����:03" header="true" name="qaaa805"/>
	    </td>

	    <td>��������</td>
	    <td>
	      <e:select value="����:����,����:����,����:����" header="true"  name="qaaa806"  />
	    </td>
	  </tr>
	  
	  <tr>
	    <td>���ͱ���</td>
	    <td>
	      <e:text name="qaaa807"/>
	    </td>
	  </tr>
	  
	  <tr>
	    <td>��������[B]</td>
	    <td>
	      <e:number name="baaa808" step="0.1"/>
	    </td>

	    <td>��������[E]</td>
	    <td>
	      <e:number name="eaaa808" step="0.1"/>
	    </td>
	  </tr>
	  
	  <tr>
	    <td>�����ܼ�[B]</td>
	    <td>
	      <e:number name="baaa809" step="0.1"/>
	    </td>

	    <td>�����ܼ�[E]</td>
	    <td>
	      <e:number name="eaaa809" step="0.1"/>
	    </td>
	  </tr>
	  
	  <tr>
	    <td>���ڵ���[B]</td>
	    <td>
	      <e:number name="baaa810" step="0.1"/>
	    </td>

	    <td>���ڵ���[E]</td>
	    <td>
	      <e:number name="eaaa810" step="0.1"/>
	    </td>
	  </tr>
	  
	  	  <tr>
	    <td>�����ܼ�[B]</td>
	    <td>
	      <e:number name="baaa811" step="0.1"/>
	    </td>

	    <td>�����ܼ�[E]</td>
	    <td>
	      <e:number name="eaaa811" step="0.1"/>
	    </td>
	  </tr>

	</table>
	
	
	<!-- ���ݵ��� -->
		<table border="1" align="center" width="95%">

			<tr>
				<td></td>
				<td>���</td>
				<td>�����</td>
				<td>�������</td>
				<td>��ַ</td>
				<td>״̬</td>
				<td>��������</td>
				<td>����</td>
				<td>��������</td>
				<td>�����ܼ�</td>
				<td>���ڵ���</td>
				<td>�����ܼ�</td>
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
							<input type="checkbox" onclick="onSelect(this.checked)" name="idlist" value="${ins.aaa801 }" >
							</td>
							<td>${vs.count }</td>
							<td>
							<a href="#" onclick = "onEdit('${ins.aaa801 }')" >${ins.aaa803 }</a>
							</td>
							<td>${ins.aaa802 }</td>
							<td>${ins.aaa804 }</td>
							<td>${ins.cnaaa805  }</td>
							<td>${ins.aaa806 }</td>
							<td>${empty ins.aaa807?'��δ����':ins.aaa807 }</td>
							<td>${empty ins.aaa808?'��δ����':ins.aaa808  }</td>
							<td>${empty ins.aaa809?'��δ����':ins.aaa809  }</td>
							<td>${empty ins.aaa810?'��δ����':ins.aaa810  }</td>
							<td>${empty ins.aaa811?'��δ����':ins.aaa811  }</td>
							<td>${ins.aaa812 }</td>
							<td>
							<a href="#" onClick="onDel('${ins.aaa801}')">ɾ��</a>
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
					<input type="submit" value="�޸�" name="next" disabled="disabled" 
						formaction="<%=path %>/aa/roomsModify.jsp" id="modify" >
					<input type="submit" value="ɾ��" name="next" disabled="disabled" 
						formaction="<%=path %>/aa/aa08Delete.html" id="del" >
					<input type="submit" value="����" name="next" 
					formaction="<%=path %>/aa/aa07Query.html" formnovalidate="formnovalidate" >
				</td>
			</tr>
		</table>
		
		<input type="hidden" name="aaa201" value="1">
		<input type="hidden" name="aaa701" value="${param.aaa701 }">
		<input type="hidden" name="aaa601" value="${param.aaa601 }">
		<input type="hidden" name="aaa602" value="${param.aaa708 }">
	</form>

</body>
</html>