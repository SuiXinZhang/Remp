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
    <div class="layui-anim layui-anim-scale"
		style="padding: 15px; margin: 30px 80px;">
		<fieldset class="layui-elem-field layui-filed-title"
			style="margin-top: 20px;">
			<legend style="color:black;"><h2>效果评估</h2></legend>
					
    <form class="layui-form" lay-filter="myform" action="<%=path %>/ab/ab03Summary.html" method="post">
		
		<div class="layui-form-item layui-form-text" style="padding-right:100px">
			<div class="layui-input-block">
				<textarea placeholder="请输入评估内容" name="aab309" required="true"
				 class="layui-textarea">${ins.aab309 }</textarea>
			</div>
		</div>
		
		<div class="layui-form-item" align="center">
			<button class="layui-btn layuiadmin-btn-useradmin" type="submit">
				<i class="layui-icon layui-icon-ok"></i>完成
			</button>
			<button class="layui-btn layuiadmin-btn-useradmin" type="submit" 
				formaction="<%=path %>/ab/ab03Query.html" formnovalidate="formnovalidate">
				<i class="layui-icon layui-icon-prev"></i>返回
			</button>
		</div>
		
		<input type="hidden" name="aab301" value="${param.aab301 }">
	</form>
	</fieldset>
    </div>
    
  </div>
  
  <div class="layui-footer">
    <!-- 底部固定区域 -->
  </div>
</div>
<script ></script>
<script>
//JavaScript代码区域
	layui.use(['layer', 'form'], function(){
		  var layer = layui.layer
		  ,form = layui.form;
		  

			if("${msg }" != "")
			{
				layer.msg('${msg }');	  
			}
		});
</script>
</body>
</html>