<%@ page language="java" pageEncoding="GBK"%>
<%@ taglib uri="http://org.wangxg/jsp/extl" prefix="e"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%String path=request.getContextPath(); %>
<html>
<head>
<title>�����������</title>
	<style type="text/css">
	tr 
	{
		height: 25px;
	}
    </style>
    <script type="text/javascript">
    function onSelect(vaad601)
    {
  	 var vform = document.getElementById("myform");
  	 vform.action="<%=path%>/ad/ad06findByIdApply.html?aad601="+vaad601;
  	 vform.submit();
    }
    </script>
</head>
<body>
<form id="myform" action="<%=path %>/ad/ad06queryApply.html" method="post">
	<table border="1" width="95%" align="center">
	  <caption>
	      	 ��������ѯ
	    <hr width="160">
	  </caption>
	  <tr>
	    <td colspan="4">��ѯ����</td>
	  </tr>
	  <tr>
	    <td>��������</td>
	    <td>
	      <e:select name="qaad602" value="����:01,�˷�:02"/>
	    </td>
	    <td>������</td>
	    <td>
	      <e:text name="qaad605"/>
	    </td>
	  </tr>
	</table>
	<table border="1" width="95%" align="center">
	  <tr>
	    <td></td>
	    <td>���</td>
	    <td>����״̬</td>
	    <td>�ͻ�����</td>
	    <td>�����</td>
	    <td>��������</td>
	    <td>ԭ�����</td>
	    <td>������</td>
	    <td>��������</td>
	    <td></td>
	  </tr>
	  <c:choose>
	     <c:when test="${rows!=null }">
	         <!-- ��ʾʵ�ʲ�ѯ�������� -->
		     <c:forEach items="${rows }" var="ins" varStatus="vs">
	    	   	  <tr>
				    <td></td>
				    <td>${vs.count }</td>
				    <td>${ins.aad603}</td>
				    <td>${ins.aad611 }</td>
				    <td>${ins.aad610 }</td>
				    <td>${ins.baad602 }</td>
				    <td>${ins.caad604 }</td>
				    <td>${ins.aad605 }</td>
				    <td>${ins.aad606 }</td>
				    <td><a href="#" onclick="onSelect('${ins.aad601}')">����</a></td>
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