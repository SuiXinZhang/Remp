<%@ page language="java" pageEncoding="GBK"%>
<%@include file="/base/taglib.jsp" %>
<html>
<head>
	<jsp:include   page="/base/head.jsp"/>
</head>
<body class="layui-layout-body">
<div class="layui-layout layui-layout-admin">
  	<jsp:include   page="/base/header.jsp"/>
	<jsp:include   page="/ad/menu.jsp"/>
  <div class="layui-body">
    <!-- ������������ -->
    <div style="padding: 15px;">
	<form id="myform" action="<%=path %>/ad/ad01queryOrder.html" method="post">
	<table border="1" width="95%" align="center">
	  <caption>
	      	 ԤԼ��¼
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
	  	<td>��ע</td>
	  	<td>ԤԼ״̬</td>
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
				    <td><a href="#" onclick="onEdit('${ins.aad101}')">${ins.aad103 }</a></td>
				    <td>${ins.aad104 }</td>
				    <td>${ins.aad105 }</td>
				    <td>${ins.aad109 }</td>
				    <td>${ins.aad110 }</td>
				    <td>${ins.aad111 }</td>
				    <td>${ins.aad113 }</td>
				    <td>${ins.aad115 }</td>
				    <td>${ins.saad116 }</td>
				    <td><a href="#" onclick="onDel('${ins.aad101}')">����</a></td>
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
    </div>
  </div>
  
  <div class="layui-footer">
    <!-- �ײ��̶����� -->
    ? layui.com - �ײ��̶�����
  </div>
</div>
<script ></script>
<script>
//JavaScript��������
	layui.use('element', function(){
	  var element = layui.element;
	  
	});
	var count=0;
    function onDel(vaad101)
    {
  	 var vform = document.getElementById("myform");
  	 vform.action="<%=path%>/ad/ad01deleteById.html?aad101="+vaad101;
  	 vform.submit();
    }
    
    function onEdit(vaad101)
    {
  	 var vform = document.getElementById("myform");
  	 vform.action="<%=path%>/ad/ad01findById.html?aad101="+vaad101;
  	 vform.submit();
    }
    
    function onConfirm(vaaa801)
    {
  	 var vform = document.getElementById("myform");
  	 vform.action="<%=path%>/ad/ad03confirm.html?aaa801="+vaaa801;
  	 vform.submit();
    } 
</script>
</body>
</html>