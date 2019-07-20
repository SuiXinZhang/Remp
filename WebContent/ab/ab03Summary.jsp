<%@ page language="java" pageEncoding="GBK"%>
<%@include file="/base/taglib.jsp" %>
<html>
<head>
	<jsp:include   page="/base/head.jsp"/>
</head>
<body class="layui-layout-body">
<div class="layui-layout layui-layout-admin">
  	<jsp:include   page="/base/header.jsp"/>
	<jsp:include   page="/ab/menu.jsp"/>
  <div class="layui-body">
    <!-- 内容主体区域 -->
    <div style="padding: 15px;">
    <form class="layui-form">
		
		<div class="layui-form-item layui-form-text">
			<label class="layui-form-label">效果评估</label>
			<div class="layui-input-block">
				<textarea placeholder="请输入内容" name="aab309" value="${ins.aab309 }" class="layui-textarea"></textarea>
			</div>
		</div>
		
		<div class="layui-form-item" align="center">	
			<input type="submit" name="next" value="完成" class="layui-btn">
			<input type="submit" name="next" value="返回"
			formaction="ab03Query.html"
			formnovalidate="formnovalidate" class="layui-btn">
		</div>
		
		<input type="hidden" name="aab301" value="${param.aab301 }">
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
	layui.use(['layer', 'form'], function(){
		  var layer = layui.layer
		  ,form = layui.form;
		  
		  layer.msg('Hello World');
		});
</script>
</body>
</html>