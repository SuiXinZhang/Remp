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
	<form class="layui-form" action="<%=path%>/ad/ad03addconfirm.html" method="post">
		<div class="layui-form-item" align="center">
			<div class="layui-inline">
				<label class="layui-form-label">选房单号</label>
				<div class="layui-input-inline">
					<input type="text" required="required" name="aad303" value="${param.aad303 }" autocomplete="off" class="layui-input">
				</div>
			</div>
			<div class="layui-inline">
				<label class="layui-form-label">房间号码</label>
				<div class="layui-input-inline">
					<input type="text" required="required" name="aad302" value="${ins.aaa803 }" autocomplete="off" class="layui-input">
				</div>
			</div>
			<div class="layui-inline">
				<label class="layui-form-label">项目排号</label>
				<div class="layui-input-inline">
					<input type="text" required="required" name="aad304" value="${param.aad304 }" autocomplete="off" class="layui-input">
				</div>
			</div>
		</div>
		<div class="layui-form-item" align="center">
			<div class="layui-inline">
				<label class="layui-form-label">客户名称</label>
				<div class="layui-input-inline">
					<input type="text" required="required" name="aad305" value="${param.aad305 }" autocomplete="off" class="layui-input">
				</div>
			</div>
			<div class="layui-inline">
				<label class="layui-form-label">经办人</label>
				<div class="layui-input-inline">
					<input type="text" required="required" name="aad306" value="${param.aad306 }" autocomplete="off" class="layui-input">
				</div>
			</div>
			<div class="layui-inline">
				<label class="layui-form-label">选房时间</label>
				<div class="layui-input-inline">
					<input type="text" id="date" required="required" value="${param.aad307 }" name="aad307" autocomplete="off" class="layui-input">
				</div>
			</div>
		</div>
		<div class="layui-form-item" align="center">
	       <input type="submit" name="next" value="验证" class="layui-btn layui-btn-normal"
	          formaction="<%=path%>/ad/ad03customerCon.html">
	       <input type="submit" name="next" value="确认" class="layui-btn layui-btn-normal"
	       	  formaction="<%=path%>/ad/ad03addconfirm.html">
	       <input type="submit" name="next" value="返回" class="layui-btn layui-btn-normal"
	       formaction="<%=path%>/ad/adqueryRoom.html"
	          formnovalidate="formnovalidate">
	    </div>
	<input type="hidden" name="aaa801" value="${param.aaa801 }">
	<input type="hidden" name="aac401" value="${ins.aac401 }">
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
	  var element = layui.element;
	  var layer = layui.layer
	  ,form = layui.form;
	  if(${!empty msg})
	{
		layer.msg('${msg }');	  
	}
	});
	layui.use('laydate', function(){
		  var laydate = layui.laydate;
		 
		  //执行一个laydate实例
		  laydate.render({
		    elem: '#date'  //指定元素
		  });
	});
</script>
</body>
</html>