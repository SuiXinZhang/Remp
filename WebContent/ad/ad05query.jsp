<%@ page language="java" pageEncoding="GBK"%>
<%@ taglib uri="http://org.wangxg/jsp/extl" prefix="e"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%String path=request.getContextPath();%>
<html>
<head>
<title>Insert title here</title>
<style type="text/css">
  td{
      height:30px;
  }
  msg{
     color:#FF0000
  }
</style>
<script type="text/javascript">
function onEdit(vaad501)
{
	 var vform = document.getElementById("myform");
	 vform.action="<%=path%>/ad/ad05findById.html?aad501="+vaad501;
	 vform.submit();
}
function onCancel(vaad501)
{
	 var vform = document.getElementById("myform");
	 vform.action="<%=path%>/ad/ad05cancelReserve.html?aad501="+vaad501;
	 vform.submit();
}
</script>
</head>
<body>
${msg }
<form id="myform" action="<%=path %>/ad/ad05query.html" method="post">
	<table border="1" width="95%" align="center">
	  <caption>
	      	 Ԥ���ͻ���¼
	    <hr width="160">
	  </caption>
	<tr>
	    <td colspan="4">��ѯ����</td>
	  </tr>
	<tr>
	<td>�ͻ���</td>
	<td><e:text name="qaad508"/></td>
	<td>����</td>
	<td><e:text name="qaad502"/></td>
	</tr>
	</table>
	<table border="1" width="95%" align="center">
	  <tr>
	    <td></td>
	  	<td>���</td>
	  	<td>�ͻ�����</td>
	  	<td>����</td>
	  	<td>ǩ������</td>
	  	<td>ʧЧ����</td>
	  	<td>ҵ��Ա</td>
	  	<td>Ԥ��״̬</td>
	  	<td>��ע</td>
	  	<td></td>
	  </tr>
	  <c:choose>
	     <c:when test="${rows!=null }">
	         <!-- ��ʾʵ�ʲ�ѯ�������� -->
		     <c:forEach items="${rows }" var="ins" varStatus="vs">
	    	   	  <tr>
				    <td></td>
				    <td>${vs.count }</td>
				    <td><a href="#" onclick="onEdit('${ins.aad501}')">${ins.aad508 }</a></td>
				    <td>${ins.aad502 }</td>
				    <td>${ins.aad503 }</td>
				    <td>${ins.aad504 }</td>
				    <td>${ins.aad505 }</td>
				    <td>${ins.aad507 }</td>
				    <td>${ins.aad506 }</td>
				    <td><a href="#" onclick="onCancel('${ins.aad501}')">ȡ��Ԥ��</a></td>
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
	           </tr>
	        </c:forEach>
	     </c:otherwise>
	   </c:choose>
	  </table>
	  <table border="1" width="95%" align="center">
	  <tr>
	    <td align="center">
	       <input type="submit" name="next" value="��ѯ">
	    </td>
	  </tr>
	</table>
</form>
</body>
</html>