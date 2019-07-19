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
    <form class="layui-form" lay-filter="myform" id="myform" action="<%=path %>/ad/ad06addApply.html" method="post">
	<div class="layui-form-item" align="center">
			<div class="layui-inline">
				<label class="layui-form-label">�ͻ�����</label>
				<div class="layui-input-inline">
					<input type="text" name="aad611" required lay-verify="true" value="${ins.aad702 }"
							 autocomplete="off" class="layui-input">
				</div>
			</div>
			<div class="layui-inline">
				<label class="layui-form-label">�������</label>
				<div class="layui-input-inline">
					<input type="text" name="aad610" required lay-verify="true" value="${ins.aad703 }"
					 autocomplete="off" class="layui-input">
				</div>
			</div>
	</div>
	<div class="layui-form-item" align="center">
			<div class="layui-inline">
				<label class="layui-form-label">������</label>
				<div class="layui-input-inline">
					<input type="text" name="aad605" required lay-verify="true" value="${ins.aad605 }"
							 autocomplete="off" class="layui-input">
				</div>
			</div>
			<div class="layui-inline">
				<label class="layui-form-label">����ʱ��</label>
				<div class="layui-input-inline">
					<input type="text" name="aad606" id="date" required lay-verify="true" value="${ins.aad606 }"
					 autocomplete="off" class="layui-input">
				</div>
			</div>
	</div>
	<div class="layui-form-item" align="center">
			<div class="layui-inline">
				<label class="layui-form-label">��������</label>
				<div class="layui-input-inline">
					<select name="aad602">
						<option value="01" selected>����</option>
						<option value="02">�˷�</option>
					</select>
				</div>
			</div>
			<div class="layui-inline">
				<label class="layui-form-label">ԭ�����</label>
				<div class="layui-input-inline">
					<select name="aad604">
						<option value="01" selected>������Ԥ��</option>
						<option value="02">��ϲ��</option>
					</select>
				</div>
			</div>
	</div>
	<div class="layui-form-item" align="center">
		<input type="submit" name="text" value="${empty param.aad601?'���':'����' }"
		 formaction="${empty param.aad601?'ad06addApply':'ad06examineApply' }.html"
		 class="layui-btn layui-btn-normal">
		 <input type="submit" name="text" value="����" class="layui-btn layui-btn-normal"
		 formaction="${empty param.aad601?'ad07queryAgreement':'ad06queryApply' }.html" formnovalidate="formnovalidate">
	</div>
   <input type="hidden" name="aac401" value="${ins.aac401 }">
   <input type="hidden" name="aad601" value="${param.aad601 }">
   <input type="hidden" name="aad701" value="${param.aad701 }">
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
	  form.val('myform',{
		  "aad602":"${ins.aad602}",
		  "aad604":"${ins.aad604}"
	  });
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