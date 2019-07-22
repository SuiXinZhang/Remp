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
				<!-- 内容主体区域 -->
				<div class="layui-anim layui-anim-scale"
				style="padding: 15px; margin: 30px 80px;">
					<fieldset class="layui-elem-field layui-filed-title" style="margin-top: 20px;">
						<legend>营销方案列表</legend>

					<form id="myform" class="layui-form" action="<%=path%>/ab/ab03Query.html" method="post">

						<!------------------ 查询条件区---------------------->
						<div align="center">
						
						<div class="layui-form-item">
							<div class="layui-inline">
								<label class="layui-form-label">方案名称</label>
								<div class="layui-input-inline">
									<input type="text" name="qaab302" placeholder="请输入方案名称" autocomplete="off" class="layui-input">
								</div>
							</div>
							<div class="layui-inline">
								<label class="layui-form-label">状态</label>
								<div class="layui-input-inline">
									<select name="qaab304" lay-verify="">
										<option value="">请选择方案状态</option>
										<option value="01">计划中</option>
										<option value="02">执行中</option>
										<option value="03">已完成</option>
									</select>
									
								</div>
							</div>
						</div>

						<div class="layui-form-item">
							<div class="layui-inline">
								<label class="layui-form-label">日期</label>
								<div class="layui-input-inline">
									<input type="text" name="qaab305" class="layui-input" id="test29" placeholder="yyyy-MM-dd">
								</div>
							</div>
							<div class="layui-inline">
								<label class="layui-form-label">制定人</label>
								<div class="layui-input-inline">
									<input type="text" name="qaab306" placeholder="制定人" autocomplete="off" class="layui-input">
								</div>
							</div>
						</div>
						</div>

						<!-----------------数据迭代区 -------------------->
						<table class="layui-table">
							<tr>
								<td>序号</td>
								<td>方案名称</td>
								<td>制定日期</td>
								<td>预算费用</td>
								<td>制定人</td>
								<td>状态</td>
								<td></td>
								<td></td>
							</tr>

							<c:choose>
								<c:when test="${rows!=null }">
									<!-- 显示查询到的数据 -->
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
												<i class="layui-icon layui-icon-edit"></i>编辑营销活动
												</a>
											</td>
											<td>
												<a href="#" onclick="onSum('${ins.aab301 }')"
												class="layui-btn layui-btn-xs">
												<i class="layui-icon layui-icon-edit"></i>方案总结
												</a>
											</td>
											<!-- <td>
												<a href="#" onclick="onDel('${ins.aab301}')" class="layui-btn">删除</a>
											</td> -->
										</tr>
									</c:forEach>

								</c:when>
								<c:otherwise>
									
								</c:otherwise>
							</c:choose>
						</table>

						<!-- 功能按钮区 -->
						<div class="layui-form-item" align="center">
							<input type="submit" name="next" value="查询" class="layui-btn">
							<input type="submit" name="next" value="添加" formaction="<%=path%>/ab/ab03Add.jsp" class="layui-btn">
							<!--  
							<input type="submit" id="del" name="next" value="删除" formaction="<%=path%>/ab/ab03BatchDelete.html" disabled="disabled" class="layui-btn">
							-->
						</div>
					</form>
					</fieldset>
				</div>

			</div>

			<div class="layui-footer">
				<!-- 底部固定区域 -->
				? layui.com - 底部固定区域
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

			//JavaScript代码区域
			layui.use(['layer', 'form'], function() {
				var layer = layui.layer,
					form = layui.form;

				layer.msg('Hello World');
			});

			layui.use('laydate', function() {
				var laydate = layui.laydate;
				//墨绿主题
				laydate.render({
					elem: '#test29',
					theme: 'molv'
				});
			});
		</script>
	</body>
</html>
