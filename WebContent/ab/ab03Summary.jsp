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
			<legend style="color:black;"><h2>Ч������</h2></legend>
					
    <form class="layui-form" lay-filter="myform" action="<%=path %>/ab/ab03Summary.html" method="post">
		
		<div class="layui-form-item layui-form-text" style="padding-right:100px">
			<div class="layui-input-block">
				<textarea placeholder="��������������" name="aab309" required="true"
				 class="layui-textarea">${ins.aab309 }</textarea>
			</div>
		</div>
		
		<div class="layui-form-item" align="center">
			<button class="layui-btn layuiadmin-btn-useradmin" type="submit">
				<i class="layui-icon layui-icon-ok"></i>���
			</button>
			<button class="layui-btn layuiadmin-btn-useradmin" type="submit" 
				formaction="<%=path %>/ab/ab03Query.html" formnovalidate="formnovalidate">
				<i class="layui-icon layui-icon-prev"></i>����
			</button>
		</div>
		
		<input type="hidden" name="aab301" value="${param.aab301 }">
	</form>
	</fieldset>
    </div>
    
  </div>
  
  <div class="layui-footer">
    <!-- �ײ��̶����� -->
  </div>
</div>
<script ></script>
<script>
//JavaScript��������
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