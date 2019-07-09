<%@page import="com.remp.web.impl.ab.Ab01QueryServlet"%>
<%@ page language="java"  pageEncoding="GBK"%>
<%@ taglib uri="http://org.wangxg/jsp/extl" prefix="e" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%String path=request.getContextPath(); %>
<html>
<head>
<title>��ѯ�ƻ��б�</title>
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
	
	function onEdit(vaab101)
	{
		var vform = docunment.getElementById("myform");
		vform.action="<%=path%>/findByIdPlan.html?aab101="+vaab101;
		vform.submit();
	}
	
	function onDel(vaab101)
    {
  	 var vform = document.getElementById("myform");
  	 vform.action="<%=path%>/delByIdPlan.html?aab101="+vaab101;
  	 vform.submit();
    }

</script>

</head>
<body>
	${msg }
	<form id="myform" action="<%=path%>/ab01Query.html" method="post">
	
	<!------------------ ��ѯ������---------------------->
		<table border="1" align="center" width="95%">
		<caption>
			��ѯ����
			<hr>
		</caption>
			<tr>
				<td>��Ŀ����</td>
				<td>
					<e:text name="qaab102"/>
				</td>
			</tr>
			<tr>
				<td>���</td>
				<td><e:text name="year"/></td>
				<td>�·�</td>
				<td><e:text name="month"/></td>
			</tr>
		</table>
		
		<!-----------------���ݵ����� -------------------->
		<table border="1" width="95%" align="center">
			<tr>
			  <td></td>
			  <td>���</td>
			  <td>��Ŀ����</td>
			  <td>ʱ��</td>
			  <td>�ƻ��������</td>
			  <td>�ƻ���������</td>
			  <td>�ƻ����۽��</td>
			  <td>�ƻ����۾���</td>
			  <td>�ƻ��ؿ���</td>
			  <td></td>
			</tr>
	  
	  <c:choose>
	  	<c:when test="${rows!=null }">
	  		<!-- ��ʾ��ѯ�������� -->
	  		<c:forEach items="${rows }" var="ins" varStatus="vs">
	  			<tr>
	  				<td>
	  					<input type="checkbox" name="idlist" value="${ins.aab101 }"
	  						onclick="onSelect(this.checked)" >
	  				</td>
	  				<td>
	  					${vs.count }
	  				</td>
	  				<td>
	  					<a href="#" onclick="onEdit('${ins.aab101 }')">${ins.aab102 }</a>
	  				</td>
	  				<td>${ins.aab103 }</td>
				    <td>${ins.aab105 }</td>
				    <td>${ins.aab106 }</td>
				    <td>${ins.aab107 }</td>
				    <td>${ins.aab108 }</td>
				    <td>${ins.aab109 }</td>
				    <td>
				    	<a href="#" onclick="onDel('${ins.aab101}')">ɾ��</a>
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
		              formaction="<%=path%>/ab01Add.jsp">
		       <input type="submit" id="del" name="next" value="ɾ��" 
		              formaction="<%=path%>/delEmp.html"  disabled="disabled">
		    </td>
		  </tr>
		</table>
	  
	</form>
</body>
</html>