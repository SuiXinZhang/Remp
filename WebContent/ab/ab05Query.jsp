<%@ page language="java" pageEncoding="GBK"%>
<%@include file="/base/taglib.jsp" %>
<html>
	<head>
		<jsp:include page="/base/head.jsp" />
	</head>
	<body class="layui-layout-body">
		<div class="layui-layout layui-layout-admin">
			<jsp:include page="/base/header.jsp" />
			<c:import url="/ab/menu.jsp">
		    	<c:param name="menu" value="ab05"/>
		    </c:import>
			<div class="layui-body">
				<!-- ������������ -->
				<div class="layui-anim layui-anim-scale"
					style="padding: 15px; margin: 30px 80px;">
					<fieldset class="layui-elem-field layui-filed-title"
						style="margin-top: 20px;">
						<legend>Ӫ������</legend>

					<form class="layui-form" lay-filter="myform" action="<%=path %>/ab/ab05Add.html" method="post">

					<div align="center">

						<div class="layui-form-item">
							<div class="layui-inline">
								<label class="layui-form-label">��ʼʱ��</label>
								<div class="layui-input-inline">
									<input type="text" name="bdate" required="true" class="layui-input test-item" id="test29" placeholder="yyyy-MM-dd">
								</div>
							</div>
							<div class="layui-inline">
								<label class="layui-form-label">��ֹʱ��</label>
								<div class="layui-input-inline">
									<input type="text" name="edate" required="true" class="layui-input test-item" id="test30" placeholder="yyyy-MM-dd">
								</div>
							</div>
						</div>

						<div class="layui-form-item" align="center">
							<input type="submit" name="next" value="����������Ӫ��Ͷ�����" formaction="<%=path %>/ab/ab05QueryToC1.html" class="layui-btn"/>
							<input type="submit" name="next" value="����ǩԼ��Ӫ��Ͷ�����" formaction="<%=path %>/ab/ab05QueryToC2.html" class="layui-btn"/>
						</div>
						</div>
					</form>
					</fieldset>
				</div>

			</div>

			<div class="layui-footer">
				<!-- �ײ��̶����� -->
			</div>
		</div>
		<script></script>
		<script>
			//JavaScript��������
			layui.use(['layer', 'form'], function() {
				var layer = layui.layer,
					form = layui.form;

			});
			
			//����ѡ���
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
