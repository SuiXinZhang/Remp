<%@ page language="java" pageEncoding="GBK"%>
<%@include file="/base/taglib.jsp" %>
<html>
<head>
	<jsp:include   page="/base/head.jsp"/>
</head>
<body class="layui-layout-body">
<div class="layui-layout layui-layout-admin">
  	<jsp:include   page="/base/header.jsp"/>
	<c:import url="/ad/menu.jsp">
        <c:param name="menu" value="ad15"/>
     </c:import>
  <div class="layui-body">
    <!-- ������������ -->
    <div class="layui-anim layui-anim-scale" style="padding: 15px; margin:50px 100px;">
    <fieldset class="layui-elem-field">
 	<legend style="color:black"><h2>������־</h2></legend>
  		<div class="layui-field-box">
    <form class="layui-form" action="<%=path %>/ad/ad08addsalesLog.html" method="post">
	<div class="layui-form-item" align="center">
			<div class="layui-inline">
				<label class="layui-form-label">
					<i class="layui-icon layui-icon-edit" style="font-size: 20px; color: black;"></i>
					��������
				</label>
				<div class="layui-input-inline">
					<input type="number" step="1" name="aad802" value="${ins.aad802 }"
					 required lay-verify="true" autocomplete="off" class="layui-input">
				</div>
			</div>
			<div class="layui-inline">
				<label class="layui-form-label">
					<i class="layui-icon layui-icon-edit" style="font-size: 20px; color: black;"></i>
					��������
				</label>
				<div class="layui-input-inline">
					<input type="number" step="1" name="aad803" value="${ins.aad803 }"
					 required lay-verify="true" autocomplete="off" class="layui-input">
				</div>
			</div>
	</div>
	<div class="layui-form-item" align="center">
			<div class="layui-inline">
				<label class="layui-form-label">
					<i class="layui-icon layui-icon-release" style="font-size: 20px; color: black;"></i>
					ԤԼ�ź�
				</label>
				<div class="layui-input-inline">
					<input type="number" step="1" name="aad804" value="${ins.aad804 }"
					 required lay-verify="true" autocomplete="off" class="layui-input">
				</div>
			</div>
			<div class="layui-inline">
				<label class="layui-form-label">
					<i class="layui-icon layui-icon-release" style="font-size: 20px; color: black;"></i>
					ԤԼ�˺�
				</label>
				<div class="layui-input-inline">
					<input type="number" step="1" name="aad805" value="${ins.aad805 }"
					 required lay-verify="true" autocomplete="off" class="layui-input">
				</div>
			</div>
	</div>
	<div class="layui-form-item" align="center">
			<div class="layui-inline">
				<label class="layui-form-label">
					<i class="layui-icon layui-icon-layer" style="font-size: 20px; color: black;"></i>
					С������
				</label>
				<div class="layui-input-inline">
					<input type="number" step="1" name="aad806" value="${ins.aad806 }"
					 required lay-verify="true" autocomplete="off" class="layui-input">
				</div>
			</div>
			<div class="layui-inline">
				<label class="layui-form-label">
					<i class="layui-icon layui-icon-layer" style="font-size: 20px; color: black;"></i>
					�Ϲ�����
				</label>
				<div class="layui-input-inline">
					<input type="number" step="1" name="aad807" value="${ins.aad807 }"
					 required lay-verify="true" autocomplete="off" class="layui-input">
				</div>
			</div>
	</div>
	<div class="layui-form-item" align="center">
			<div class="layui-inline">
				<label class="layui-form-label">
					<i class="layui-icon layui-icon-layer" style="font-size: 20px; color: black;"></i>
					ǩԼ����
				</label>
				<div class="layui-input-inline">
					<input type="number" step="1" name="aad808" value="${ins.aad808 }"
					 required lay-verify="true" autocomplete="off" class="layui-input">
				</div>
			</div>
			<div class="layui-inline">
				<label class="layui-form-label">
					<i class="layui-icon layui-icon-layer" style="font-size: 20px; color: black;"></i>
					��Ŀ����
				</label>
				<div class="layui-input-inline">
					<input type="number" step="1" name="aad809" value="${ins.aad809 }"
					 required lay-verify="true" autocomplete="off" class="layui-input">
				</div>
			</div>
	</div>
	<div class="layui-form-item" align="center">
			<div class="layui-inline">
				<label class="layui-form-label">
					<i class="layui-icon layui-icon-layer" style="font-size: 20px; color: black;"></i>
					��Ŀ����
				</label>
				<div class="layui-input-inline">
					<input type="number" step="1" name="aad810" value="${ins.aad810 }"
					 required lay-verify="true" autocomplete="off" class="layui-input">
				</div>
			</div>
			<div class="layui-inline">
				<label class="layui-form-label">
					<i class="layui-icon layui-icon-layer" style="font-size: 20px; color: black;"></i>
					��Ŀʣ��
				</label>
				<div class="layui-input-inline">
					<input type="number" step="1" name="aad811" value="${ins.aad811 }"
					 required lay-verify="true" autocomplete="off" class="layui-input">
				</div>
			</div>
	</div>
	<div class="layui-form-item" align="center">
			<div class="layui-inline">
				<label class="layui-form-label">
					<i class="layui-icon layui-icon-form" style="font-size: 20px; color: black;"></i>
					������
				</label>
				<div class="layui-input-inline">
					<input type="text" name="aad812" value="${ins.aad812 }"
					 required lay-verify="true" autocomplete="off" class="layui-input">
				</div>
			</div>
			<div class="layui-inline">
				<label class="layui-form-label">
					<i class="layui-icon layui-icon-form" style="font-size: 20px; color: black;"></i>
					ҵ�����
				</label>
				<div class="layui-input-inline">
					<input type="text" name="aad813" value="${ins.aad813 }"
					 required lay-verify="true" autocomplete="off" class="layui-input">
				</div>
			</div>
	</div>
	<div class="layui-form-item" align="center">
			<div class="layui-inline">
				<label class="layui-form-label">
					<i class="layui-icon layui-icon-username" style="font-size: 20px; color: black;"></i>
					��&ensp;д&ensp;��
				</label>
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
	</fieldset>
    </div>
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