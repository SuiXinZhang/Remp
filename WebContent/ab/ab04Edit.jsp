<%@ page language="java" pageEncoding="GBK"%>
<%@include file="/base/taglib.jsp"%>
<html>
<head>
<jsp:include page="/base/head.jsp" />
</head>
<body class="layui-layout-body">
	<div class="layui-layout layui-layout-admin">
		<jsp:include page="/base/header.jsp" />
		<jsp:include page="/ab/menu.jsp" />
		<div class="layui-body">
		${msg }
			<!-- 内容主体区域 -->
			<div class="layui-anim layui-anim-scale"
				style="padding: 15px; margin: 30px 80px;">
				<fieldset class="layui-elem-field layui-filed-title"
					style="margin-top: 20px;">
					<legend style="color:black;"><h2>编辑营销活动</h2></legend>

					<form class="layui-form" lay-filter="myform"
						action="<%=path%>/ab/ab04Edit.html" method="post">

						<div align="center">

							<div class="layui-form-item">
								<div class="layui-inline">
									<label class="layui-form-label">
										<i class="layui-icon layui-icon-theme" style="font-size: 20px; color: black;"></i>活动主题
									</label>
									<div class="layui-input-inline">
										<input type="text" name="aab402" required="true"
											autofocus="true" value="${ins.aab402 }" class="layui-input">
									</div>
								</div>
								<div class="layui-inline">
									<label class="layui-form-label">
										<i class="layui-icon layui-icon-tabs" style="font-size: 20px; color: black;"></i>活动类型
									</label>
									<div class="layui-input-inline">
										<select name="aab403" lay-verify="">
											<option value="">请选择活动类型</option>
											<option value="01">线下营销活动</option>
											<option value="02">网络营销活动</option>
											<option value="03">电视营销活动</option>
										</select>
									</div>
								</div>
							</div>

							<div class="layui-form-item">
								<div class="layui-inline">
									<label class="layui-form-label">
										<i class="layui-icon layui-icon-date" style="font-size: 20px; color: black;"></i>活动时间
									</label>
									<div class="layui-input-inline">
										<input type="text" name="aab404" required="true"
											value="${ins.aab404 }" class="layui-input" id="test29"
											placeholder="yyyy-MM-dd">
									</div>
								</div>
								<div class="layui-inline">
									<label class="layui-form-label">
										<i class="layui-icon layui-icon-rmb" style="font-size: 20px; color: black;"></i>发生费用
									</label>
									<div class="layui-input-inline">
										<input type="number" step="0.01" name="aab405" required="true"
											value="${ins.aab405 }" class="layui-input" />
									</div>
								</div>
							</div>

							<div class="layui-form-item layui-form-text" style="padding-left:250px;padding-right:270px;">
								<label class="layui-form-label">
									<i class="layui-icon layui-icon-survey" style="font-size: 20px; color: black;"></i>活动描述
								</label>
								<div class="layui-input-block">
									<textarea placeholder="请输入内容" name="aab406"
										 class="layui-textarea">${ins.aab406 }</textarea>
								</div>
							</div>

							<div class="layui-form-item" align="center">
								<button class="layui-btn layuiadmin-btn-useradmin" type="submit" 
									formaction="<%=path%>/ab/ab04Edit.html">
									<i class="layui-icon layui-icon-ok"></i>完成
								</button>
								<button class="layui-btn layuiadmin-btn-useradmin" type="submit" 
									formaction="<%=path%>/ab/ab03Query.html" formnovalidate="formnovalidate">
									<i class="layui-icon layui-icon-prev"></i>返回
								</button>
							</div>
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
	<script></script>
	<script>
		//JavaScript代码区域
		layui.use([ 'layer', 'form' ], function() {
			var layer = layui.layer, form = layui.form;

			form.val('myform', {
				"aab403" : "${ins.aab403}"
			});
		});

		//日期选择框
		layui.use('laydate', function() {
			var laydate = layui.laydate;
			//墨绿主题
			laydate.render({
				elem : '#test29',
				theme : 'molv',
			});
		});
	</script>
</body>
</html>