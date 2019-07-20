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
    <form id="myform" class="layui-form" action="<%=path %>/ad/ad03query.html" method="post">
    <div class="layui-form-item" align="center">
			<div class="layui-inline">
				<label class="layui-form-label">�ͻ�����</label>
				<div class="layui-input-inline">
					<input type="text" name="qaad305" value="${param.qaad305 }" autocomplete="off" class="layui-input">
				</div>
			</div>
			<div class="layui-inline">
				<label class="layui-form-label">ѡ��ʱ��</label>
				<div class="layui-input-inline">
					<input type="text" id="date" name="qaad307" value="${param.qaad307 }" autocomplete="off" class="layui-input">
				</div>
			</div>
	</div>
	<table class="layui-table" lay-even lay-skin="nob">
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
	  	<td></td>
	  	<td></td>
	  </tr>
	   <c:choose>
	     <c:when test="${rows!=null }">
	         <!-- ��ʾʵ�ʲ�ѯ�������� -->
		     <c:forEach items="${rows }" var="ins" varStatus="vs">
	    	   	  <tr>
				    <td><input type="hidden" name="aac401" value="${ins.aac401 }"></td>
				    <td>${vs.count }</td>
				    <td>${ins.aad302 }</td>
				    <td>${ins.caaa805 }</td>
				    <td>${ins.aad303 }</td>
				    <td>${ins.aad304 }</td>
				    <td>${ins.aad305 }</td>
				    <td>${ins.aad306 }</td>
				    <td>${ins.aad307 }</td>
				    <td><a href="#" onclick="onCancel('${ins.aaa801}')">ȡ��ѡ��</a></td>
				    <td><a href="#" onclick="onSubscribe('${ins.aad301}')">ת�Ϲ�</a></td>
				    <td><a href="#" onclick="onSigning('${ins.aad301}')">תǩԼ</a></td>
				  </tr>
		      </c:forEach>
		      <!-- ������� -->
		      <c:forEach begin="${fn:length(rows)+1 }" step="1" end="6">
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
	        <c:forEach begin="1" step="1" end="3">
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
	 <div class="layui-form-item" align="center">
	       <input type="submit" class="layui-btn layui-btn-normal" name="next" value="��ѯ">
	 </div>
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
	layui.use(['layer', 'form','element'], function(){
	  var element = layui.element;
	  var layer = layui.layer
	  ,form = layui.form;
	  layer.msg('Hello World');
	});
	layui.use('laydate', function(){
		  var laydate = layui.laydate;
		 
		  //ִ��һ��laydateʵ��
		  laydate.render({
		    elem: '#date'  //ָ��Ԫ��
		  });
	});
	function onCancel(vaaa801)
    {
  	 var vform = document.getElementById("myform");
  	 vform.action="<%=path%>/ad/ad03cancel.html?aaa801="+vaaa801;
  	 vform.submit();
    }
	function onSubscribe(vaad301)
	{
		var vform = document.getElementById("myform");
	  	vform.action="<%=path%>/ad/ad04subscribePurchase.html?aad301="+vaad301;
	  	vform.submit();
	}
	function onSigning(vaad301)
	{
		var vform = document.getElementById("myform");
	  	vform.action="<%=path%>/ad/ad07roomTurn.html?aad301="+vaad301;
	  	vform.submit();
	}
</script>
</body>
</html>