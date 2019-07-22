<%@ page language="java" pageEncoding="GBK"%>
<%@include file="/base/taglib.jsp" %>
<html>
	<head>
		<jsp:include page="/base/head.jsp" />
		
		<style>
			.layui-form-select dl dd.layui-this { background-color: #009688; }
			.layui-form-select dl dd:hover {background-color: #009688;}
		</style>
		
	</head>
	<body class="layui-layout-body">
		<div class="layui-layout layui-layout-admin">
			<jsp:include page="/base/header.jsp" />
			<jsp:include page="/ab/menu.jsp" />
			<div class="layui-body">
				<!-- ������������ -->
				<div class="layui-anim layui-anim-scale"
				style="padding: 15px; margin: 30px 80px;">
					<fieldset class="layui-elem-field layui-filed-title" style="margin-top: 20px;">
						<legend>Ӫ�������б�</legend>

					<form id="myform" class="layui-form" action="<%=path%>/ab/ab03Query.html" method="post">

						<!------------------ ��ѯ������---------------------->
						<div align="center">
						
						<div class="layui-form-item">
							<div class="layui-inline">
								<label class="layui-form-label">��������</label>
								<div class="layui-input-inline">
									<input type="text" name="qaab302" placeholder="�����뷽������" autocomplete="off" class="layui-input">
								</div>
							</div>
							<div class="layui-inline">
								<label class="layui-form-label">״̬</label>
								<div class="layui-input-inline">
									<select name="qaab304" lay-verify="">
										<option value="">��ѡ�񷽰�״̬</option>
										<option value="01">�ƻ���</option>
										<option value="02">ִ����</option>
										<option value="03">�����</option>
									</select>
									
								</div>
							</div>
						</div>

						<div class="layui-form-item">
							<div class="layui-inline">
								<label class="layui-form-label">����</label>
								<div class="layui-input-inline">
									<input type="text" name="qaab305" class="layui-input" id="test29" placeholder="yyyy-MM-dd">
								</div>
							</div>
							<div class="layui-inline">
								<label class="layui-form-label">�ƶ���</label>
								<div class="layui-input-inline">
									<input type="text" name="qaab306" placeholder="�ƶ���" autocomplete="off" class="layui-input">
								</div>
							</div>
						</div>
						</div>

						<!-----------------���ݵ����� -------------------->
						<table class="layui-table">
							<tr>
								<td>���</td>
								<td>��������</td>
								<td>�ƶ�����</td>
								<td>Ԥ�����</td>
								<td>�ƶ���</td>
								<td>״̬</td>
								<td></td>
								<td></td>
							</tr>

							<c:choose>
								<c:when test="${rows!=null }">
									<!-- ��ʾ��ѯ�������� -->
									<c:forEach items="${rows }" var="ins" varStatus="vs">
										<tr>
											<!--  <td>
												<input type="checkbox" name="idlist" value="${ins.aab301 }" onclick="onSelect(this.checked)">
											</td>-->
											<td>
												${vs.count }
											</td>
											<td>
												<a href="#" style="color:orange" onclick="onEdit('${ins.aab301}')">${ins.aab302 }</a>
											</td>
											<td>${ins.aab305 }</td>
											<td>${ins.aab303 }</td>
											<td>${ins.aab306 }</td>
											<td>${ins.cnaab304 }</td>
											<td>
												<a href="#" onclick="onAct('${ins.aab301}')"
												class="layui-btn layui-btn-xs">
												<i class="layui-icon layui-icon-edit"></i>�༭Ӫ���
												</a>
											</td>
											<td>
												<a href="#" onclick="onSum('${ins.aab301 }')"
												class="layui-btn layui-btn-xs">
												<i class="layui-icon layui-icon-edit"></i>�����ܽ�
												</a>
											</td>
											<!-- <td>
												<a href="#" onclick="onDel('${ins.aab301}')" class="layui-btn">ɾ��</a>
											</td> -->
										</tr>
									</c:forEach>

								</c:when>
								<c:otherwise>
									
								</c:otherwise>
							</c:choose>
						</table>

						<!-- ���ܰ�ť�� -->
						<div class="layui-form-item" align="center">
							<input type="submit" name="next" value="��ѯ" class="layui-btn">
							<input type="submit" name="next" value="���" formaction="<%=path%>/ab/ab03Add.jsp" class="layui-btn">
							<!--  
							<input type="submit" id="del" name="next" value="ɾ��" formaction="<%=path%>/ab/ab03BatchDelete.html" disabled="disabled" class="layui-btn">
							-->
						</div>
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
			var count = 0;

			function onSelect(vstate) {
				vstate ? count++ : count--;
				var vdel = document.getElementById("del");
				vdel.disabled = (count == 0);
			}

			function onEdit(vaab301) {
				var vform = document.getElementById("myform");
				vform.action = "<%=path%>/ab/ab03FindById.html?aab301=" + vaab301;
				vform.submit();
			}

			function onDel(vaab301) {
				var vform = document.getElementById("myform");
				vform.action = "<%=path%>/ab/ab03DelById.html?aab301=" + vaab301;
				vform.submit();
			}

			function onAct(vaab301) {
				var vform = document.getElementById("myform");
				vform.action = "<%=path%>/ab/ab04FindById.html?aab301=" + vaab301;
				vform.submit();
			}

			function onSum(vaab301) {
				var vform = document.getElementById("myform");
				vform.action = "<%=path%>/ab/ab03FindSum.html?aab301=" + vaab301;
				vform.submit();
			}

			//JavaScript��������
			layui.use(['layer', 'form'], function() {
				var layer = layui.layer,
					form = layui.form;

				layer.msg('Hello World');
			});

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
