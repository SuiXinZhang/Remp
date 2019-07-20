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
    <form class="layui-form" action="<%=path %>/ad/ad08addsalesLog.html" method="post">
	<div class="layui-form-item" align="center">
			<div class="layui-inline">
				<label class="layui-form-label">��������</label>
				<div class="layui-input-inline">
					<input type="number" step="1" name="aad802" value="${ins.aad802 }"
					 required lay-verify="true" autocomplete="off" class="layui-input">
				</div>
			</div>
			<div class="layui-inline">
				<label class="layui-form-label">��������</label>
				<div class="layui-input-inline">
					<input type="number" step="1" name="aad803" value="${ins.aad803 }"
					 required lay-verify="true" autocomplete="off" class="layui-input">
				</div>
			</div>
	</div>
	<div class="layui-form-item" align="center">
			<div class="layui-inline">
				<label class="layui-form-label">ԤԼ�ź���</label>
				<div class="layui-input-inline">
					<input type="number" step="1" name="aad804" value="${ins.aad804 }"
					 required lay-verify="true" autocomplete="off" class="layui-input">
				</div>
			</div>
			<div class="layui-inline">
				<label class="layui-form-label">ԤԼ�˺���</label>
				<div class="layui-input-inline">
					<input type="number" step="1" name="aad805" value="${ins.aad805 }"
					 required lay-verify="true" autocomplete="off" class="layui-input">
				</div>
			</div>
	</div>
	<div class="layui-form-item" align="center">
			<div class="layui-inline">
				<label class="layui-form-label">С������</label>
				<div class="layui-input-inline">
					<input type="number" step="1" name="aad806" value="${ins.aad806 }"
					 required lay-verify="true" autocomplete="off" class="layui-input">
				</div>
			</div>
			<div class="layui-inline">
				<label class="layui-form-label">�Ϲ�����</label>
				<div class="layui-input-inline">
					<input type="number" step="1" name="aad807" value="${ins.aad807 }"
					 required lay-verify="true" autocomplete="off" class="layui-input">
				</div>
			</div>
	</div>
	<div class="layui-form-item" align="center">
			<div class="layui-inline">
				<label class="layui-form-label">ǩԼ����</label>
				<div class="layui-input-inline">
					<input type="number" step="1" name="aad808" value="${ins.aad808 }"
					 required lay-verify="true" autocomplete="off" class="layui-input">
				</div>
			</div>
			<div class="layui-inline">
				<label class="layui-form-label">��Ŀ�ܿ���</label>
				<div class="layui-input-inline">
					<input type="number" step="1" name="aad809" value="${ins.aad809 }"
					 required lay-verify="true" autocomplete="off" class="layui-input">
				</div>
			</div>
	</div>
	<div class="layui-form-item" align="center">
			<div class="layui-inline">
				<label class="layui-form-label">��Ŀ������</label>
				<div class="layui-input-inline">
					<input type="number" step="1" name="aad810" value="${ins.aad810 }"
					 required lay-verify="true" autocomplete="off" class="layui-input">
				</div>
			</div>
			<div class="layui-inline">
				<label class="layui-form-label">��Ŀ��ʣ��</label>
				<div class="layui-input-inline">
					<input type="number" step="1" name="aad811" value="${ins.aad811 }"
					 required lay-verify="true" autocomplete="off" class="layui-input">
				</div>
			</div>
	</div>
	<div class="layui-form-item" align="center">
			<div class="layui-inline">
				<label class="layui-form-label">������</label>
				<div class="layui-input-inline">
					<input type="text" name="aad812" value="${ins.aad812 }"
					 required lay-verify="true" autocomplete="off" class="layui-input">
				</div>
			</div>
			<div class="layui-inline">
				<label class="layui-form-label">ҵ�����</label>
				<div class="layui-input-inline">
					<input type="text" name="aad813" value="${ins.aad813 }"
					 required lay-verify="true" autocomplete="off" class="layui-input">
				</div>
			</div>
	</div>
	<div class="layui-form-item" align="center">
			<div class="layui-inline">
				<label class="layui-form-label">��д��</label>
				<div class="layui-input-inline">
					<input type="text" name="aad814" value="${ins.aad814 }"
					 required lay-verify="true" autocomplete="off" class="layui-input">
				</div>
			</div>
	</div>
	<div class="layui-form-item" align="center">	
		<input type="submit" name="text" value="${empty param.aad801?'���':'�޸�' }"
		 formaction="${empty param.aad801?'ad08addsalesLog':'ad08modifysalesLog' }.html"
		 class="layui-btn layui-btn-normal" >
		 <input type="submit" name="text" value="����" class="layui-btn layui-btn-normal"
		 formaction="ad08querysalesLog.html" formnovalidate="formnovalidate">
	</div>
   <input type="hidden" name="aad801" value="${param.aad801 }">
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
</script>
</body>
</html>