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
    <!-- ������������ -->
    <div class="layui-anim layui-anim-scale"
		style="padding: 15px; margin: 30px 80px;">
		<fieldset class="layui-elem-field layui-filed-title"
			style="margin-top: 20px;">
			<legend>Ч������</legend>
					
    <form class="layui-form" formaction="<%=path %>/ab/ab03Summary.html">
		
		<div class="layui-form-item layui-form-text" style="padding-right:100px">
			<div class="layui-input-block">
				<textarea placeholder="����������" name="aab309" value="${ins.aab309 }" class="layui-textarea"></textarea>
			</div>
		</div>
		
		<div class="layui-form-item" align="center">	
			<input type="submit" name="next" value="���" class="layui-btn">
			<input type="submit" name="next" value="����"
			formaction="<%=path %>/ab/ab03Query.html"
			formnovalidate="formnovalidate" class="layui-btn">
		</div>
		
		<input type="hidden" name="aab301" value="${param.aab301 }">
	</form>
	</fieldset>
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
	layui.use(['layer', 'form'], function(){
		  var layer = layui.layer
		  ,form = layui.form;
		  
		  layer.msg('Hello World');
		});
</script>
</body>
</html>