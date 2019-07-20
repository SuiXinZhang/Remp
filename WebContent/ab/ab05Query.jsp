<%@ page language="java" pageEncoding="GBK"%>
<%@include file="/base/taglib.jsp" %>
<html>
	<head>
		<jsp:include page="/base/head.jsp" />
	</head>
	<body class="layui-layout-body">
		<div class="layui-layout layui-layout-admin">
			<jsp:include page="/base/header.jsp" />
			<jsp:include page="/ab/menu.jsp" />
			<div class="layui-body">
				<!-- 内容主体区域 -->
				<div style="padding: 15px;">

					<form class="layui-form" lay-filter="myform" action="<%=path %>/ab/ab05Add.html" method="post">

						<fieldset class="layui-elem-field layui-field-title" style="margin-top: 20px;">
							<legend>营销分析</legend>
						</fieldset>

						<div class="layui-form-item">
							<div class="layui-inline">
								<label class="layui-form-label">起始时间</label>
								<div class="layui-input-inline">
									<input type="text" name="bdate" required="true" class="layui-input test-item" id="test29" placeholder="yyyy-MM-dd">
								</div>
							</div>
							<div class="layui-inline">
								<label class="layui-form-label">截止时间</label>
								<div class="layui-input-inline">
									<input type="text" name="edate" required="true" class="layui-input test-item" id="test30" placeholder="yyyy-MM-dd">
								</div>
							</div>
						</div>

						<div class="layui-form-item" align="center">
							<input type="submit" name="next" value="来电来访与营销投入分析" formaction="<%=path %>/ab/ab05QueryToC1.html" class="layui-btn"/>
							<input type="submit" name="next" value="销售签约与营销投入分析" formaction="<%=path %>/ab/ab05QueryToC2.html" class="layui-btn"/>
						</div>
					</form>

				</div>

			</div>

			<div class="layui-footer">
				<!-- 底部固定区域 -->
				? layui.com - 底部固定区域
			</div>
		</div>
		<script></script>
		<script>
			//JavaScript代码区域
			layui.use(['layer', 'form'], function() {
				var layer = layui.layer,
					form = layui.form;

				layer.msg('Hello World');
			});
			
			//日期选择框
			  layui.use('laydate', function() {
			  	var laydate = layui.laydate;
			  
			  	laydate.render({
			  		elem: '#test29',
			  		theme: 'molv',
					trigger: 'click'
			  	});
				
				laydate.render({
					elem: '#test30',
					theme: 'molv',
					trigger: 'click'
				});
			  });
		</script>
	</body>
</html>
