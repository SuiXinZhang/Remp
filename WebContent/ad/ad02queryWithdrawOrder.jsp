<%@ page language="java" pageEncoding="GBK"%>
<%@ taglib uri="http://org.wangxg/jsp/extl" prefix="e"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%String path=request.getContextPath(); %>
<html>
<head>
<title>�˺Ų�ѯ</title>
	<style type="text/css">
	tr 
	{
		height: 25px;
	}
	</style>
</head>
<body>
${msg }
<form action="<%=path %>/ad/ad02queryWithdrawOrder.html" method="post">
	<table border="1" width="95%" align="center">
	  <caption>
	      	 �˺ż�¼
	    <hr width="160">
	  </caption>
	  <tr>
	    <td></td>
	  	<td>���</td>
	  	<td>��Ŀ����</td>
	  	<td>�ͻ�����</td>
	  	<td>ʵ���ź�</td>
	  	<td>ԤԼ����</td>
	  	<td>Ȩ����</td>
	  	<td>����</td>
	  	<td>Ӧ��ԤԼ��</td>
	  	<td>ʵ��ԤԼ��</td>
	  	<td>�˺�����</td>
	  	<td>�˺�ԭ��</td>
	  	<td></td>
	  </tr>
	  	<c:choose>
	     <c:when test="${rows!=null }">
	         <!-- ��ʾʵ�ʲ�ѯ�������� -->
		     <c:forEach items="${rows }" var="ins" varStatus="vs">
	    	   	  <tr>
				    <td></td>
				    <td>${vs.count }</td>
				    <td>${ins.aad102 }</td>
				    <td>${ins.aad103 }</td>
				    <td>${ins.aad104 }</td>
				    <td>${ins.aad105 }</td>
				    <td>${ins.aad109 }</td>
				    <td>${ins.aad110 }</td>
				    <td>${ins.aad111 }</td>
				    <td>${ins.aad113 }</td>
				    <td>${ins.aad202 }</td>
				    <td>${ins.aad203 }</td>
				    <td></td>
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
	<input type="hidden" name="aaa101" value="${param.aad101 }">
</form>

</body>
</html>