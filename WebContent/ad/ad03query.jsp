<%@ page language="java" pageEncoding="GBK"%>
<%@ taglib uri="http://org.wangxg/jsp/extl" prefix="e"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%String path=request.getContextPath(); %>
<html>
<head>
<title>������ѯ</title>
	<style type="text/css">
	tr 
	{
		height: 25px;
	}
	</style>
	<script type="text/javascript">
	function onCancel(vaaa801)
    {
  	 var vform = document.getElementById("myform");
  	 vform.action="<%=path%>/ad/ad03cancel.html?aaa801="+vaaa801;
  	 vform.submit();
    }
	function onSmallOrder()
	{}
	function onSubscribe(vaaa801)
	{
		var vform = document.getElementById("myform");
	  	vform.action="<%=path%>/ad/ad04addPurchase.html?aaa801="+vaaa801;
	  	vform.submit();
	}
	function onSigning()
	{}
	</script>
</head>
<body>
${msg } 
<form id="myform" action="<%=path %>/ad/ad03query.html" method="post">
	<table border="1" width="95%" align="center">
	  <caption>
	      	 ������¼
	    <hr width="160">
	  </caption>
	  <tr>
	    <td></td>
	  	<td>���</td>
	  	<td>�����</td>
	  	<td>����״̬</td>
	  	<td>ѡ������</td>
	  	<td>��Ŀ�ź�</td>
	  	<td>�ͻ�����</td>
	  	<td>������</td>
	  	<td>ѡ��ʱ��</td>
	  	<td></td>
	  </tr>
	   <c:choose>
	     <c:when test="${rows!=null }">
	         <!-- ��ʾʵ�ʲ�ѯ�������� -->
		     <c:forEach items="${rows }" var="ins" varStatus="vs">
	    	   	  <tr>
				    <td></td>
				    <td>${vs.count }</td>
				    <td>${ins.aad302 }</td>
				    <td>${ins.caaa805 }</td>
				    <td>${ins.aad303 }</td>
				    <td>${ins.aad304 }</td>
				    <td>${ins.aad305 }</td>
				    <td>${ins.aad306 }</td>
				    <td>${ins.aad307 }</td>
				    <td><a href="#" onclick="onCancel('${ins.aaa801}')">ȡ��ѡ��</a></td>
				    <td><a href="#" onclick="onSmallOrder('${ins.aaa801}')">תС��</a></td>
				    <td><a href="#" onclick="onSubscribe('${ins.aaa801}')">ת�Ϲ�</a></td>
				    <td><a href="#" onclick="onSigning('${ins.aaa801}')">תǩԼ</a></td>
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