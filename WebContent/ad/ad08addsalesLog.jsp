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
    <!-- 内容主体区域 -->
    <div class="layui-anim layui-anim-scale" style="padding: 15px; margin:50px 100px;">
    <fieldset class="layui-elem-field">
 	<legend style="color:black"><h2>销售日志</h2></legend>
  		<div class="layui-field-box">
    <form class="layui-form" action="<%=path %>/ad/ad08addsalesLog.html" method="post">
	<div class="layui-form-item" align="center">
			<div class="layui-inline">
				<label class="layui-form-label">
					<i class="layui-icon layui-icon-edit" style="font-size: 20px; color: black;"></i>
					来电总数
				</label>
				<div class="layui-input-inline">
					<input type="number" step="1" name="aad802" value="${ins.aad802 }"
					 required lay-verify="true" autocomplete="off" class="layui-input">
				</div>
			</div>
			<div class="layui-inline">
				<label class="layui-form-label">
					<i class="layui-icon layui-icon-edit" style="font-size: 20px; color: black;"></i>
					来访总数
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
					预约排号
				</label>
				<div class="layui-input-inline">
					<input type="number" step="1" name="aad804" value="${ins.aad804 }"
					 required lay-verify="true" autocomplete="off" class="layui-input">
				</div>
			</div>
			<div class="layui-inline">
				<label class="layui-form-label">
					<i class="layui-icon layui-icon-release" style="font-size: 20px; color: black;"></i>
					预约退号
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
					小订套数
				</label>
				<div class="layui-input-inline">
					<input type="number" step="1" name="aad806" value="${ins.aad806 }"
					 required lay-verify="true" autocomplete="off" class="layui-input">
				</div>
			</div>
			<div class="layui-inline">
				<label class="layui-form-label">
					<i class="layui-icon layui-icon-layer" style="font-size: 20px; color: black;"></i>
					认购套数
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
					签约套数
				</label>
				<div class="layui-input-inline">
					<input type="number" step="1" name="aad808" value="${ins.aad808 }"
					 required lay-verify="true" autocomplete="off" class="layui-input">
				</div>
			</div>
			<div class="layui-inline">
				<label class="layui-form-label">
					<i class="layui-icon layui-icon-layer" style="font-size: 20px; color: black;"></i>
					项目可售
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
					项目已售
				</label>
				<div class="layui-input-inline">
					<input type="number" step="1" name="aad810" value="${ins.aad810 }"
					 required lay-verify="true" autocomplete="off" class="layui-input">
				</div>
			</div>
			<div class="layui-inline">
				<label class="layui-form-label">
					<i class="layui-icon layui-icon-layer" style="font-size: 20px; color: black;"></i>
					项目剩余
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
					广告表现
				</label>
				<div class="layui-input-inline">
					<input type="text" name="aad812" value="${ins.aad812 }"
					 required lay-verify="true" autocomplete="off" class="layui-input">
				</div>
			</div>
			<div class="layui-inline">
				<label class="layui-form-label">
					<i class="layui-icon layui-icon-form" style="font-size: 20px; color: black;"></i>
					业务分析
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
					填&ensp;写&ensp;人
				</label>
				<div class="layui-input-inline">
					<input type="text" name="aad814" value="${ins.aad814 }"
					 required lay-verify="true" autocomplete="off" class="layui-input">
				</div>
			</div>
	</div>
	<div class="layui-form-item" align="center">	
		<input type="submit" name="text" value="${empty param.aad801?'添加':'修改' }"
		 formaction="${empty param.aad801?'ad08addsalesLog':'ad08modifysalesLog' }.html"
		 class="layui-btn layui-btn-normal" >
		 <input type="submit" name="text" value="返回" class="layui-btn layui-btn-normal"
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
//JavaScript代码区域
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