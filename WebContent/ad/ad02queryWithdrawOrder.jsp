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
	<form class="layui-form" action="<%=path %>/ad/ad02queryWithdrawOrder.html" method="post">
	<div class="layui-form-item" align="center">
		<div class="layui-inline">
				<label class="layui-form-label">�ͻ�����</label>
				<div class="layui-input-inline">
					<input type="text" name="qaad103" value="${param.qaad103 }" autocomplete="off" class="layui-input">
				</div>
			</div>
			<div class="layui-inline">
				<label class="layui-form-label">�˺�����</label>
				<div class="layui-input-inline">
					<input type="text" id="date" name="qaad202" value="${param.qaad202 }" autocomplete="off" class="layui-input">
				</div>
			</div>
		</div>
	<table class="layui-table" lay-even lay-skin="nob">
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
			            <td></td>
			          </tr>
		      </c:forEach>
	     </c:when>
	     <c:otherwise>
	        <c:forEach begin="1" step="1" end="6">
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
	       <input type="submit" name="next" class="layui-btn layui-btn-normal" value="��ѯ">
	</div>
	<input type="hidden" name="aaa101" value="${param.aad101 }">
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
	  var layer = layui.layer
	  ,form = layui.form
	  ,element = layui.element;
	  if("${msg }" != "")
		{
			layer.msg('${msg }');	  
		}
	});
	layui.use('laydate', function(){
		  var laydate = layui.laydate;
		 
		  //ִ��һ��laydateʵ��
		  laydate.render({
		    elem: '#date'  //ָ��Ԫ��
		  });
		});
</script>
</body>
</html>