<%@ page language="java" pageEncoding="GBK"%>
<%@include file="/base/taglib.jsp" %>
<html>
	<head>
		<jsp:include page="/base/head.jsp" />
		
		<style>
			.layui-form-label{
				width: 100px;
			}
			.layui-input-block{
				margin-left: 130px;
				min-height: 36px;
			}
		</style>
		
	</head>
	<body class="layui-layout-body">
		<div class="layui-layout layui-layout-admin">
			<jsp:include page="/base/header.jsp" />
			<jsp:include page="/ab/menu.jsp" />
			<div class="layui-body">
				<!-- 内容主体区域 -->

				<div style="padding: 15px;">
					<form action="<%=path%>/ab/ab01Add.html" class="layui-form" method="post">
						<fieldset class="layui-elem-field layui-field-title" style="margin-top: 20px;">
							<legend>${empty param.aab101?'新增':'修改' }销售计划</legend>
						</fieldset>

						<div class="layui-form-item">
							<label class="layui-form-label">项目名称</label>
							<div class="layui-input-block">
								<input type="text" name="aab102" required="true" autofocus="true" value="${ins.aab102 }" class="layui-input">
							</div>
						</div>

						<div class="layui-form-item">
							<div class="layui-inline">
								<label class="layui-form-label">制定日期</label>
								<div class="layui-input-inline">
									<input type="text" name="aab103" required="true" value="${ins.aab103 }" class="layui-input" id="test29"
									 placeholder="yyyy-MM-dd">
								</div>
							</div>
						</div>

						<div class="layui-form-item">
							<label class="layui-form-label">计划销售面积</label>
							<div class="layui-input-block">
								<input type="number" step="1" name="aab105" required="true" value="${ins.aab105 }" class="layui-input">
							</div>
						</div>

						<div class="layui-form-item">
							<label class="layui-form-label">计划销售套数</label>
							<div class="layui-input-block">
								<input type="number" step="1" name="aab106" required="true" value="${ins.aab106 }" class="layui-input">
							</div>
						</div>

						<div class="layui-form-item">
							<label class="layui-form-label">计划销售金额</label>
							<div class="layui-input-block">
								<input type="number" step="0.01" name="aab107" required="true" value="${ins.aab107 }" class="layui-input">
							</div>
						</div>

						<div class="layui-form-item">
							<label class="layui-form-label">计划销售均价</label>
							<div class="layui-input-block">
								<input type="number" step="0.01" name="aab108" required="true" value="${ins.aab108 }" class="layui-input">
							</div>
						</div>

						<div class="layui-form-item">
							<label class="layui-form-label">计划回款金额</label>
							<div class="layui-input-block">
								<input type="number" step="0.01" name="aab109" required="true" value="${ins.aab109 }" class="layui-input">
							</div>
						</div>

						<div class="layui-form-item layui-form-text">
							<label class="layui-form-label">备注</label>
							<div class="layui-input-block">
								<textarea placeholder="请输入内容" name="aab110" value="${ins.aab110 }" class="layui-textarea"></textarea>
							</div>
						</div>


						<div class="layui-form-item" align="center">
							<input type="submit" name="next" value="${empty param.aab101?'添加':'修改' }" formaction="<%=path%>/${empty param.aab101?'ab01Add':'ab01Modify' }.html"
							 class="layui-btn" />
							<input type="submit" name="next" value="返回" formaction="<%=path %>/ab/ab01Query.html" formnovalidate="formnovalidate"
							 class="layui-btn">
							<input id="layer" type="submit" name="next" value="编辑计划明细" formaction="<%=path %>/ab/ab02Query.html" class="layui-btn">
						</div>
						</table>
						<input type="hidden" name="aab101" value="${param.aab101 }">
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

			window.onload = function() {
				var obj = document.getElementById("layer");
				if ($ {
						empty param.aab101
					}) {
					obj.style.display = "none";
				}
			}

			layui.use('laydate', function() {
				var laydate = layui.laydate;
				//执行一个laydate实例
				laydate.render({
					elem: '#test29',
					theme: 'molv'
				});
			});
		</script>
	</body>
</html>
