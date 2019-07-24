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
			<c:import url="/ab/menu.jsp">
		    	<c:param name="menu" value="ab03q"/>
		    </c:import>
			<div class="layui-body">
				${msg }
				<div class="layui-anim layui-anim-scale"
				style="padding: 15px; margin: 30px 80px;">
					<fieldset class="layui-elem-field layui-filed-title" style="margin-top: 20px;">
						<legend style="color:black;"><h2>Ӫ�������б�</h2></legend>

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
						<div id="tableId" style="display: none">
						<table id="idData"  lay-filter="demo">
						<thead>
							<tr>
								<td lay-data="{field:'sort1',width:60}">���</td>
								<td lay-data="{field:'projectname',width:125}">��������</td>
								<td lay-data="{field:'username'}">�ƶ�����</td>
								<td lay-data="{field:'userphone'}">Ԥ�����</td>
								<td lay-data="{field:'empname'}">�ƶ���</td>
								<td lay-data="{field:'style'}">״̬</td>
								<td lay-data="{field:'opt',fixed:'right',width:220}">����</td>
							</tr>
						</thead>
						<tbody>
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
											<c:choose>
											    <c:when test="${ins.cnaab304=='�ƻ���'}">
											    <td>
												    <a class="layui-btn layui-btn-xs" href="#"  onclick="onAct('${ins.aab301}')">
												    	<i class="layui-icon layui-icon-edit"></i>�༭Ӫ���
												    </a>
												    <a class="layui-btn layui-btn-xs layui-btn-disabled" href="#"  onclick="">
												    	<i class="layui-icon layui-icon-release"></i>�����ܽ�
												    </a>
											    </td>
											    </c:when>
											    <c:otherwise>
											    <td>
													<a href="#" onclick="onAct('${ins.aab301}')"
													class="layui-btn layui-btn-xs">
													<i class="layui-icon layui-icon-edit"></i>�༭Ӫ���
													</a>
													<a href="#" onclick="onSum('${ins.aab301 }')"
													class="layui-btn layui-btn-xs">
													<i class="layui-icon layui-icon-edit"></i>�����ܽ�
													</a> 
												</td>
											    </c:otherwise>
										    </c:choose>
											 <!--<td>
												<a href="#" onclick="onAct('${ins.aab301}')"
												class="layui-btn layui-btn-xs">
												<i class="layui-icon layui-icon-edit"></i>�༭Ӫ���
												</a>
												<a href="#" onclick="onSum('${ins.aab301 }')"
												class="layui-btn layui-btn-xs">
												<i class="layui-icon layui-icon-edit"></i>�����ܽ�
												</a> 
											</td>-->
											<!-- <td>
												<a href="#" onclick="onDel('${ins.aab301}')" class="layui-btn">ɾ��</a>
											</td> -->
										</tr>
									</c:forEach>

								</c:when>
							</c:choose>
							</tbody>
						</table>

						<!-- ���ܰ�ť�� -->
						<div class="layui-form-item" align="center">
							<button class="layui-btn " type="submit">
								<i class="layui-icon layui-icon-search layuiadmin-button-btn"></i>��ѯ
							</button>
							<button class="layui-btn layuiadmin-btn-useradmin" type="submit" 
								formaction="<%=path%>/ab/ab03Add.jsp">
								<i class="layui-icon layui-icon-add-1"></i>���
							</button>
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
			layui.use(['layer', 'form','element','table'], function() {
				var layer = layui.layer,
					form = layui.form,
					table = layui.table,
					element = layui.element;
					
					
				//ת����̬���
				table.init('demo', {
					limit : 10,
					page : true,
					toolbar : true,
					done : function(res, curr, count) {
						$('#tableId').css('display', 'block');
					}
				});

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
