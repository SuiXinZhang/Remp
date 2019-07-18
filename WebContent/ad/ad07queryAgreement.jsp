<%@ page language="java" pageEncoding="GBK"%>
<%@ taglib uri="http://org.wangxg/jsp/extl" prefix="e"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%String path=request.getContextPath(); %>
<html>
<head>
<title>��ͬ����</title>
	<style type="text/css">
	tr 
	{
		height: 25px;
	}
    </style>
    <script type="text/javascript">
    function onSelect(vaad701)
    {
  	 var vform = document.getElementById("myform");
  	 vform.action="<%=path%>/ad/ad07findByIdAgreement.html?aad701="+vaad701;
  	 vform.submit();
    }
    function onCancel(vaad701)
    {
  	 var vform = document.getElementById("myform");
  	 vform.action="<%=path%>/ad/ad07cancelledAgreement.html?aad701="+vaad701;
  	 vform.submit();
    }
    function onChange(vaad701)
    {
  	 var vform = document.getElementById("myform");
  	 vform.action="<%=path%>/ad/ad06turnApply.html?aad701="+vaad701;
  	 vform.submit();
    }
    function onReceipt(vaad701)
    {
  	 var vform = document.getElementById("myform");
  	 vform.action="<%=path%>/af/af03otherTurnReceipt.html?aad701="+vaad701;
  	 vform.submit();
    }
    </script>
</head>
<body>
${msg }
<form id="myform" action="<%=path %>/ad/ad07queryAgreement.html" method="post">
<table border="1" width="95%" align="center">
  <caption>
      	 ��ͬ��ѯ
    <hr width="160">
  </caption>
  <tr>
    <td colspan="4">��ѯ����</td>
  </tr>
  <tr>
    <td>����</td>
    <td>
      <e:text name="qaad703"/>
    </td>
    <td>�ͻ���</td>
    <td>
      <e:text name="qaad702"/>
    </td>
  </tr>
</table>
<table border="1" width="95%" align="center">
  <tr>
    <td></td>
    <td>���</td>
    <td>����</td>
    <td>�ͻ�����</td>
    <td>ǩ������</td>
    <td>��ͬ�ܼ�</td>
    <td>��ͬ����</td>
    <td>ҵ��Ա</td>
    <td>��ͬ״̬</td>
    <td>���ʽ</td>
    <td></td>
    <td></td>
    <td></td>
  </tr>
  <c:choose>
     <c:when test="${rows!=null }">
         <!-- ��ʾʵ�ʲ�ѯ�������� -->
	     <c:forEach items="${rows }" var="ins" varStatus="vs">
    	   	  <tr>
			    <td></td>
			    <td>${vs.count }</td>
			    <td>${ins.aad703}</td>
			    <td><a href="#" onclick="onSelect('${ins.aad701}')">${ins.aad702 }</a></td>
			    <td>${ins.aad716 }</td>
			    <td>${ins.aad711 }</td>
			    <td>${ins.baad712 }</td>
			    <td>${ins.aad720 }</td>
			    <td>${ins.daad719 }</td>
			    <td>${ins.caad704 }</td>
			    <td><a href="#" onclick="onCancel('${ins.aad701}')">����</a></td>
			    <td><a href="#" onclick="onChange('${ins.aad701}')">������</a></td>
			    <td><a href="#" onclick="onReceipt('${ins.aad401}')">���ɸ�������</a></td>
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