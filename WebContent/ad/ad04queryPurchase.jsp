<%@ page language="java" pageEncoding="GBK"%>
<%@ taglib uri="http://org.wangxg/jsp/extl" prefix="e"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%String path=request.getContextPath(); %>

<html>
<head>
<title>��ѯ����</title>
	<style type="text/css">
	tr 
	{
		height: 25px;
	}
    </style>
    <script type="text/javascript">
    function onSelect(vaad401)
    {
  	 var vform = document.getElementById("myform");
  	 vform.action="<%=path%>/ad/ad04findByIdPurchase.html?aad401="+vaad401;
  	 vform.submit();
    }
    function onDel(vaad401)
    {
  	 var vform = document.getElementById("myform");
  	 vform.action="<%=path%>/ad/ad04deleteByIdPurchase.html?aad401="+vaad401;
  	 vform.submit();
    }
    </script>
</head>
<body>
${msg }
<form id="myform" action="<%=path %>/ad/ad04queryPurchase.html" method="post">
	<table border="1" width="95%" align="center">
	  <caption>
	      	 ������ѯ
	    <hr width="160">
	  </caption>
	  <tr>
	    <td colspan="4">��ѯ����</td>
	  </tr>
	  <tr>
	    <td>����</td>
	    <td>
	      <e:text name="qaad403"/>
	    </td>
	    <td>�ͻ���</td>
	    <td>
	      <e:text name="qaad402"/>
	    </td>
	  </tr>
	</table>
	<table border="1" width="95%" align="center">
	  <tr>
	    <td></td>
	    <td>���</td>
	    <td>����</td>
	    <td>�ͻ�����</td>
	    <td>����״̬</td>
	    <td>ǩ������</td>
	    <td>Э���ܼ�</td>
	    <td>Э�����</td>
	    <td>ҵ��Ա</td>
	    <td>��������</td>
	    <td>���ʽ</td>
	    <td></td>
	  </tr>
	  <c:choose>
	     <c:when test="${rows!=null }">
	         <!-- ��ʾʵ�ʲ�ѯ�������� -->
		     <c:forEach items="${rows }" var="ins" varStatus="vs">
	    	   	  <tr>
				    <td><input type="hidden" name="aad301" value="${ins.aad301 }"></td>
				    <td>${vs.count }</td>
				    <td>${ins.aad403}</td>
				    <td><a href="#" onclick="onSelect('${ins.aad401}')">${ins.aad402 }</a></td>
				    <td>${ins.aad422 }</td>
				    <td>${ins.aad415 }</td>
				    <td>${ins.aad410 }</td>
				    <td>${ins.baad411 }</td>
				    <td>${ins.aad419 }</td>
				    <td>${ins.daad418 }</td>
				    <td>${ins.caad404 }</td>
				    <td><a href="#" onclick="onDel('${ins.aad401}')">ɾ��</a></td>
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