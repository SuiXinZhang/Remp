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
        <c:param name="menu" value="ad01"/>
     </c:import>
  <div class="layui-body">
    <!-- 内容主体区域 -->
    <div class="layui-anim layui-anim-scale" style="padding: 15px; margin:50px 100px;">
    <fieldset class="layui-elem-field">
 	<legend style="color:black"><h2>录入客户</h2></legend>
  		<div class="layui-field-box">
 	<form action="<%=path%>/ad/ad01customerQuery.html" method="post">
	<div class="layui-form-item" align="center">
			<div class="layui-inline">
				<label class="layui-form-label">
					<i class="layui-icon layui-icon-username" style="font-size: 20px; color: black;"></i>
					录入姓名
				</label>
				<div class="layui-input-inline">
					<input type="text" name="caac403" autocomplete="off" class="layui-input">
				</div>
			</div>
		</div>
	<div class="layui-form-item" align="center">
		<div class="layui-inline">
				<label class="layui-form-label">
					<i class="layui-icon layui-icon-cellphone" style="font-size: 20px; color: black;"></i>
					联系电话
				</label>
				<div class="layui-input-inline">
					<input type="number" name="caac407" autocomplete="off" class="layui-input">
				</div>
		</div>
	</div>
	<div class="layui-form-item" align="center">
		<div class="layui-inline">
				<label class="layui-form-label">
					<i class="layui-icon layui-icon-username" style="font-size: 20px; color: black;"></i>
					业&ensp;务&ensp;员
				</label>
				<div class="layui-input-inline">
					<input type="text" name="caac415" autocomplete="off" class="layui-input">
				</div>
		</div>
	</div>
	
	<div class="layui-form-item" align="center">
		<input type="submit" name="next" class="layui-btn layui-btn-normal" value="下一步">
	</div>
</form>
</div>
</fieldset>
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
	layui.use('element', function(){
	  var element = layui.element;
	  
	});
</script>
</body>
</html>