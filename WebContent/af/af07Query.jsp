<%@ page language="java"  pageEncoding="GBK"%>
<%@ taglib uri="http://org.wangxg/jsp/extl" prefix="e" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%String path=request.getContextPath(); %>
<html>
<head>
<title>Ƿ���û��б�</title>
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
	
	function onEdit(vaaf701)
	{
		var vform = document.getElementById("myform");
	  	 vform.action="<%=path%>/af/af07FindById.html?aaf701="+vaaf701;
	  	 vform.submit();
	}
	
	function onDel(vaaf701)
    {
  	 var vform = document.getElementById("myform");
  	 vform.action="<%=path%>/af/af07DelById.html?aaf701="+vaaf701;
  	 vform.submit();
    }

</script>

</head>
<body>
	${msg }
	<form id="myform" action="<%=path%>/af/af07Query.html" method="post">
	
	<!------------------ ��ѯ������---------------------->
		<table border="1" align="center" width="95%">
		<caption>
			��ѯ����
			<hr>
		</caption>
			<tr>
				<td>�ͻ�����</td>
				<td>
					<e:text name="qaaf703"/>
				</td>
				<td>������</td>
				<td>
					<e:text name="qaaf702"/>
				</td>
			</tr>
			<tr>
				<td>��ʼ����</td>
				<td>
					<e:date name="bdate"/>
				</td>
				<td>��ֹ����</td>
				<td>
					<e:date name="edate"/>
				</td>
			</tr>
		</table>
		
		<!-----------------���ݵ����� -------------------->
		<table border="1" width="95%" align="center">
			<tr>
			  <td></td>
			  <td>���</td>
			  <td>������</td>
			  <td>�ͻ�����</td>
			  <td>�ͻ�����</td>
			  <td>ǩ������</td>
			  <td>ǩ����</td>
			  <td>������</td>
			  <td></td>
			</tr>
	  
	  <c:choose>
	  	<c:when test="${rows!=null }">
	  		<!-- ��ʾ��ѯ�������� -->
	  		<c:forEach items="${rows }" var="ins" varStatus="vs">
	  			<tr>
	  				<td>
	  					<input type="checkbox" name="emailList" value="${ins.aaf704 }"
	  						onclick="onSelect(this.checked)" >
	  				</td>
	  				<td>
	  					${vs.count }
	  				</td>
	  				<td>${ins.aaf702 }</td>
	  				<td>${ins.aaf703 }</td>
	  				<td>${ins.aaf704 }</td>
	  				<td>${ins.aaf705 }</td>
				    <td>${ins.aaf706 }</td>
				    <td>${ins.aaf709 }</td>
				    <td>
				    	<a href="#" onclick="onEdit('${ins.aaf701}')">�ѽɷ�</a>
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
		              formaction="<%=path%>/af/af07Add.jsp">

		       <input type="submit" id="del" name="next" value="�ʼ��߿�" 
		              formaction="<%=path%>/af/af07Mail.html" disabled="disabled">
		    </td>
		  </tr>
		</table>
	</form>
</body>
</html>