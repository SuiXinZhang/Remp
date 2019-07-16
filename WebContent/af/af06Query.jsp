<%@ page language="java"  pageEncoding="GBK"%>
<%@ taglib uri="http://org.wangxg/jsp/extl" prefix="e" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%String path=request.getContextPath(); %>
<html>
<head>
<title>���зſ��б�</title>
<style type="text/css">
	tr
	{
		height: 25px;
	}
</style>

<script type="text/javascript">

	var count=0;
	function onSelect(vstate)
	{
		vstate?count++:count--;
		var vdel=document.getElementById("del");
		vdel.disabled=(count==0);
	}
	
	function onEdit(vaaf601)
	{
		var vform = document.getElementById("myform");
	  	 vform.action="<%=path%>/af06FindById.html?aaf601="+vaaf601;
	  	 vform.submit();
	}
	
	function onDel(vaaf601)
    {
  	 var vform = document.getElementById("myform");
  	 vform.action="<%=path%>/af06DelById.html?aaf601="+vaaf601;
  	 vform.submit();
    }

</script>

</head>
<body>
	${msg }
	<form id="myform" action="<%=path%>/af/af06Query.html" method="post">
	
	<!------------------ ��ѯ������---------------------->
		<table border="1" align="center" width="95%">
		<caption>
			��ѯ����
			<hr>
		</caption>
			<tr>
				<td>��Ŀ����</td>
				<td>
					<e:text name="qaaf612"/>
				</td>
				<td>��������</td>
				<td>
					<e:text name="qaaf602"/>
				</td>
			</tr>
			<tr>
				<td>��ʼ����</td>
				<td>
					<e:date name="bdate"/>
				</td>
				<td>��������</td>
				<td>
					<e:date name="edate"/>
				</td>
			</tr>
			<tr>
				<td>�ſ��</td>
				<td><e:text name="qaaf604"/></td>
			</tr>
		</table>
		
		<!-----------------���ݵ����� -------------------->
		<table border="1" width="95%" align="center">
			<tr>
			  <td></td>
			  <td>���</td>
			  <td>��Ŀ����</td>
			  <td>�ſ�����</td>
			  <td>�ſ��</td>
			  <td>�ſ�����</td>
			  <td>�Ǽ���</td>
			  <td>������</td>
			  <td></td>
			  <td></td>
			</tr>
	  
	  <c:choose>
	  	<c:when test="${rows!=null }">
	  		<!-- ��ʾ��ѯ�������� -->
	  		<c:forEach items="${rows }" var="ins" varStatus="vs">
	  			<tr>
	  				<td>
	  					<input type="checkbox" name="idlist" value="${ins.aaf601 }"
	  						onclick="onSelect(this.checked)" >
	  				</td>
	  				<td>
	  					${vs.count }
	  				</td>
	  				<td>
	  					<a href="#" onclick="onEdit('${ins.aaf601}')">${ins.aaf612 }</a>
	  				</td>
	  				<td>${ins.aaf602 }</td>
	  				<td>${ins.aaf604 }</td>
				    <td>${ins.aaf605 }</td>
				    <td>${ins.aaf603 }</td>
				    <td>${ins.aaf606 }</td>
				    <td></td>
				    <td>
				    	<a href="#" onclick="onDel('${ins.aaf601}')">ɾ��</a>
				    </td>
	  			</tr>
	  		</c:forEach>
	  		
	  		<!-- ������� -->
	  		<c:forEach begin="${fn:length(rows)+1 }" step="1" end="15">
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
	        <c:forEach begin="1" step="1" end="15">
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
	  
	  	<!-- ���ܰ�ť�� -->
		<table border="1" width="95%" align="center">
		  <tr>
		    <td align="center">
		       <input type="submit" name="next" value="��ѯ">
		       <input type="submit" name="next" value="���" 
		              formaction="<%=path%>/af/af06Add.jsp">
		       <input type="submit" id="del" name="next" value="ɾ��" 
		              formaction="<%=path%>/af06DelPlan.html"  disabled="disabled">
		    </td>
		  </tr>
		</table>
	  <input type="hidden" name="aaf601" value="${param.aab101 }">
	</form>
</body>
</html>