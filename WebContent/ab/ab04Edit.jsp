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
			<!-- ������������ -->
			<div class="layui-anim layui-anim-scale"
				style="padding: 15px; margin: 30px 80px;">
				<fieldset class="layui-elem-field layui-filed-title"
					style="margin-top: 20px;">
					<legend>�༭Ӫ���</legend>

					<form class="layui-form" lay-filter="myform"
						action="<%=path%>/ab/ab04Edit.html" method="post">

						<div align="center">

							<div class="layui-form-item">
								<div class="layui-inline">
									<label class="layui-form-label">�����</label>
									<div class="layui-input-inline">
										<input type="text" name="aab402" required="true"
											autofocus="true" value="${ins.aab402 }" class="layui-input">
									</div>
								</div>
								<div class="layui-inline">
									<label class="layui-form-label">�����</label>
									<div class="layui-input-inline">
										<select name="aab403" lay-verify="">
											<option value="">��ѡ������</option>
											<option value="01">����Ӫ���</option>
											<option value="02">����Ӫ���</option>
											<option value="03">����Ӫ���</option>
										</select>
									</div>
								</div>
							</div>

							<div class="layui-form-item">
								<div class="layui-inline">
									<label class="layui-form-label">�ʱ��</label>
									<div class="layui-input-inline">
										<input type="text" name="aab404" required="true"
											value="${ins.aab404 }" class="layui-input" id="test29"
											placeholder="yyyy-MM-dd">
									</div>
								</div>
								<div class="layui-inline">
									<label class="layui-form-label">��������</label>
									<div class="layui-input-inline">
										<input type="number" step="0.01" name="aab405" required="true"
											value="${ins.aab405 }" class="layui-input" />
									</div>
								</div>
							</div>

							<div class="layui-form-item layui-form-text" style="padding-left:250px;padding-right:270px;">
								<label class="layui-form-label">�����</label>
								<div class="layui-input-block">
									<textarea placeholder="����������" name="aab406"
										 class="layui-textarea">${ins.aab406 }</textarea>
								</div>
							</div>

							<div class="layui-form-item" align="center">
								<input type="submit" name="next" value="���"
									formaction="<%=path%>/ab/ab04Edit.html" class="layui-btn">
								<input type="submit" name="next" value="����"
									formaction="<%=path%>/ab/ab03Query.html"
									formnovalidate="formnovalidate" class="layui-btn">
							</div>
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
	<script></script>
	<script>
		//JavaScript��������
		layui.use([ 'layer', 'form' ], function() {
			var layer = layui.layer, form = layui.form;

			form.val('myform', {
				"aab403" : "${ins.aab403}"
			});
		});

		//����ѡ���
		layui.use('laydate', function() {
			var laydate = layui.laydate;
			//ī������
			laydate.render({
				elem : '#test29',
				theme : 'molv',
			});
		});
	</script>
</body>
</html>