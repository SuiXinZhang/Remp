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
    <!-- 内容主体区域 -->
    <div style="padding: 15px;">
    <form class="layui-form" action="<%=path %>/ad/ad08addsalesLog.html" method="post">
	<div class="layui-form-item" align="center">
			<div class="layui-inline">
				<label class="layui-form-label">来电总数</label>
				<div class="layui-input-inline">
					<input type="number" step="1" name="aad802" value="${ins.aad802 }"
					 required lay-verify="true" autocomplete="off" class="layui-input">
				</div>
			</div>
			<div class="layui-inline">
				<label class="layui-form-label">来访总数</label>
				<div class="layui-input-inline">
					<input type="number" step="1" name="aad803" value="${ins.aad803 }"
					 required lay-verify="true" autocomplete="off" class="layui-input">
				</div>
			</div>
	</div>
	<div class="layui-form-item" align="center">
			<div class="layui-inline">
				<label class="layui-form-label">预约排号数</label>
				<div class="layui-input-inline">
					<input type="number" step="1" name="aad804" value="${ins.aad804 }"
					 required lay-verify="true" autocomplete="off" class="layui-input">
				</div>
			</div>
			<div class="layui-inline">
				<label class="layui-form-label">预约退号数</label>
				<div class="layui-input-inline">
					<input type="number" step="1" name="aad805" value="${ins.aad805 }"
					 required lay-verify="true" autocomplete="off" class="layui-input">
				</div>
			</div>
	</div>
	<div class="layui-form-item" align="center">
			<div class="layui-inline">
				<label class="layui-form-label">小订套数</label>
				<div class="layui-input-inline">
					<input type="number" step="1" name="aad806" value="${ins.aad806 }"
					 required lay-verify="true" autocomplete="off" class="layui-input">
				</div>
			</div>
			<div class="layui-inline">
				<label class="layui-form-label">认购套数</label>
				<div class="layui-input-inline">
					<input type="number" step="1" name="aad807" value="${ins.aad807 }"
					 required lay-verify="true" autocomplete="off" class="layui-input">
				</div>
			</div>
	</div>
	<div class="layui-form-item" align="center">
			<div class="layui-inline">
				<label class="layui-form-label">签约套数</label>
				<div class="layui-input-inline">
					<input type="number" step="1" name="aad808" value="${ins.aad808 }"
					 required lay-verify="true" autocomplete="off" class="layui-input">
				</div>
			</div>
			<div class="layui-inline">
				<label class="layui-form-label">项目总可售</label>
				<div class="layui-input-inline">
					<input type="number" step="1" name="aad809" value="${ins.aad809 }"
					 required lay-verify="true" autocomplete="off" class="layui-input">
				</div>
			</div>
	</div>
	<div class="layui-form-item" align="center">
			<div class="layui-inline">
				<label class="layui-form-label">项目总已售</label>
				<div class="layui-input-inline">
					<input type="number" step="1" name="aad810" value="${ins.aad810 }"
					 required lay-verify="true" autocomplete="off" class="layui-input">
				</div>
			</div>
			<div class="layui-inline">
				<label class="layui-form-label">项目总剩余</label>
				<div class="layui-input-inline">
					<input type="number" step="1" name="aad811" value="${ins.aad811 }"
					 required lay-verify="true" autocomplete="off" class="layui-input">
				</div>
			</div>
	</div>
	<div class="layui-form-item" align="center">
			<div class="layui-inline">
				<label class="layui-form-label">广告表现</label>
				<div class="layui-input-inline">
					<input type="text" name="aad812" value="${ins.aad812 }"
					 required lay-verify="true" autocomplete="off" class="layui-input">
				</div>
			</div>
			<div class="layui-inline">
				<label class="layui-form-label">业务分析</label>
				<div class="layui-input-inline">
					<input type="text" name="aad813" value="${ins.aad813 }"
					 required lay-verify="true" autocomplete="off" class="layui-input">
				</div>
			</div>
	</div>
	<div class="layui-form-item" align="center">
			<div class="layui-inline">
				<label class="layui-form-label">填写人</label>
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
  </div>
  
  <div class="layui-footer">
    <!-- 底部固定区域 -->
    ? layui.com - 底部固定区域
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