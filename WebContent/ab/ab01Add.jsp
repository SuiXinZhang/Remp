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
				<!-- ������������ -->

				<div style="padding: 15px;">
					<form action="<%=path%>/ab/ab01Add.html" class="layui-form" method="post">
						<fieldset class="layui-elem-field layui-field-title" style="margin-top: 20px;">
							<legend>${empty param.aab101?'����':'�޸�' }���ۼƻ�</legend>
						</fieldset>

						<div class="layui-form-item">
							<label class="layui-form-label">��Ŀ����</label>
							<div class="layui-input-block">
								<input type="text" name="aab102" required="true" autofocus="true" value="${ins.aab102 }" class="layui-input">
							</div>
						</div>

						<div class="layui-form-item">
							<div class="layui-inline">
								<label class="layui-form-label">�ƶ�����</label>
								<div class="layui-input-inline">
									<input type="text" name="aab103" required="true" value="${ins.aab103 }" class="layui-input" id="test29" placeholder="yyyy-MM-dd">
								</div>
							</div>
						</div>

						<div class="layui-form-item">
							<label class="layui-form-label">�ƻ��������</label>
							<div class="layui-input-block">
								<input type="number" step="1" name="aab105" required="true" value="${ins.aab105 }" class="layui-input">
							</div>
						</div>

						<div class="layui-form-item">
							<label class="layui-form-label">�ƻ���������</label>
							<div class="layui-input-block">
								<input type="number" step="1" name="aab106" required="true" value="${ins.aab106 }" class="layui-input">
							</div>
						</div>

						<div class="layui-form-item">
							<label class="layui-form-label">�ƻ����۽��</label>
							<div class="layui-input-block">
								<input type="number" step="0.01" name="aab107" required="true" value="${ins.aab107 }" class="layui-input">
							</div>
						</div>

						<div class="layui-form-item">
							<label class="layui-form-label">�ƻ����۾���</label>
							<div class="layui-input-block">
								<input type="number" step="0.01" name="aab108" required="true" value="${ins.aab108 }" class="layui-input">
							</div>
						</div>

						<div class="layui-form-item">
							<label class="layui-form-label">�ƻ��ؿ���</label>
							<div class="layui-input-block">
								<input type="number" step="0.01" name="aab109" required="true" value="${ins.aab109 }" class="layui-input">
							</div>
						</div>

						<div class="layui-form-item layui-form-text">
							<label class="layui-form-label">��ע</label>
							<div class="layui-input-block">
								<textarea placeholder="����������" name="aab110" value="${ins.aab110 }" class="layui-textarea"></textarea>
							</div>
						</div>


						<div class="layui-form-item" align="center">
							<input type="submit" name="next" value="${empty param.aab101?'���':'�޸�' }" formaction="<%=path%>/${empty param.aab101?'ab/ab01Add':'ab/ab01Modify' }.html"
							 class="layui-btn" />
							<input type="submit" name="next" value="����" formaction="<%=path %>/ab/ab01Query.html" formnovalidate="formnovalidate"
							 class="layui-btn">
							<input id="layer" type="submit" name="next" value="�༭�ƻ���ϸ" formaction="<%=path %>/ab/ab02Query.html" class="layui-btn">
						</div>
						<input type="hidden" name="aab101" value="${param.aab101 }">
					</form>
				</div>

			</div>

			<div class="layui-footer">
				<!-- �ײ��̶����� -->
				? layui.com - �ײ��̶�����
			</div>
		</div>
		<script>
			//JavaScript��������
			layui.use(['layer', 'form'], function() {
				var layer = layui.layer,
					form = layui.form;

				layer.msg('Hello World');
			});

			window.onload = function() {
				var obj = document.getElementById("layer");
				if ($ {empty param.aab101}) 
				{
					obj.style.display = "none";
				}
			}
			
			//����ģ��
			layui.use('laydate', function() {
				var laydate = layui.laydate;
				//ī������
				laydate.render({
					elem: '#test29',
					theme: 'molv'
				});
			});
		</script>
	</body>
</html>
