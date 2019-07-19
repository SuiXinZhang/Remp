<%@ page language="java" pageEncoding="GBK"%>
<%@include file="/base/taglib.jsp" %>
<html>
	<head>
		<jsp:include page="/base/head.jsp" />
		
		<script type="text/javascript">
		
			//JavaScript代码区域
			layui.use('element', function(){
			  var element = layui.element;
			  
			});
			var count=0;
			function onSelect(vstate)
			{
				vstate?count++:count--;
				var vdel=document.getElementById("del");
				vdel.disabled=(count==0);
			}
			
			function onEdit(vaab101)
			{
				var vform = document.getElementById("myform");
			  	 vform.action="<%=path%>/ab/ab01FindById.html?aab101="+vaab101;
			  	 vform.submit();
			}
			
			function onDel(vaab101)
		    {
		  	 var vform = document.getElementById("myform");
		  	 vform.action="<%=path%>/ab/ab01DelById.html?aab101="+vaab101;
		  	 vform.submit();
		    }
		
		</script>
		
	</head>
	<body class="layui-layout-body">
		<div class="layui-layout layui-layout-admin">
			<jsp:include page="/base/header.jsp" />
			<jsp:include page="/ab/menu.jsp" />
			<div class="layui-body">
				<!-- 内容主体区域 -->
				<div style="padding: 15px;">
					<form class="layui-form" id="myform" action="<%=path%>/ab/ab01Query.html" method="post">

						<!------------------ 查询条件区---------------------->
						<fieldset class="layui-elem-field layui-field-title" style="margin-top: 20px;">
							<legend>销售计划列表</legend>
						</fieldset>
					
						<div class="layui-form-item">
							<label class="layui-form-label">项目名称</label>
							<div class="layui-input-block">
								<input type="text" name="qaab102" placeholder="请输入项目名称" autocomplete="off" class="layui-input">
							</div>
						</div>
					
				
						<div class="layui-form-item">
							<div class="layui-inline">
							<label class="layui-form-label">年份</label>
							<div class="layui-input-block">
								<input type="text" name="year" placeholder="年份" autocomplete="off" class="layui-input">
							</div>
							</div>
							<div class="layui-inline">
							<label class="layui-form-label">月份</label>
							<div class="layui-input-block">
								<input type="text" name="month" placeholder="月份" autocomplete="off" class="layui-input">
							</div>
							</div>
						</div>
						
						

						<!-----------------数据迭代区 -------------------->
						<table class="layui-table" height="50px">
							<tr>
								<td></td>
								<td>序号</td>
								<td>项目名称</td>
								<td>时间</td>
								<td>计划销售面积</td>
								<td>计划销售套数</td>
								<td>计划销售金额</td>
								<td>计划销售均价</td>
								<td>计划回款金额</td>
								<td></td>
							</tr>

							<c:choose>
								<c:when test="${rows!=null }">
									<!-- 显示查询到的数据 -->
									<c:forEach items="${rows }" var="ins" varStatus="vs">
										<tr>
											<td>
												<input type="checkbox" name="idlist" value="${ins.aab101 }" onclick="onSelect(this.checked)">
											</td>
											<td>
												${vs.count }
											</td>
											<td>
												<a href="#" onclick="onEdit('${ins.aab101}')">${ins.aab102 }</a>
											</td>
											<td>${ins.aab103 }</td>
											<td>${ins.aab105 }</td>
											<td>${ins.aab106 }</td>
											<td>${ins.aab107 }</td>
											<td>${ins.aab108 }</td>
											<td>${ins.aab109 }</td>
											<td></td>
											<!-- <td>
												<a href="#" onclick="onDel('${ins.aab101}')" class="layui-btn">删除</a>
											</td> -->
											
										</tr>
									</c:forEach>

									<!-- 补充空行 -->
									<c:forEach begin="${fn:length(rows)+1 }" step="1" end="15">
										<tr>
											<td></td>
											<td></td>
											<td></td>
											<td></td>
											<td></td>
											<td></td>
											<td></td>
											<td></td>
											<td></td>
											<td></td>
										</tr>
									</c:forEach>
								</c:when>
								<c:otherwise>
									<c:forEach begin="1" step="1" end="15">
										<tr>
											<td></td>
											<td></td>
											<td></td>
											<td></td>
											<td></td>
											<td></td>
											<td></td>
											<td></td>
											<td></td>
											<td></td>
										</tr>
									</c:forEach>
								</c:otherwise>
							</c:choose>
						</table>

						<!-- 功能按钮区 -->
						<div class="layui-form-item" align="center">
								<input type="submit" name="next" value="查询" class="layui-btn">
								<input type="submit" name="next" value="添加" formaction="<%=path%>/ab/ab01Add.jsp" class="layui-btn">
								<input type="submit" id="del" name="next" value="删除" formaction="<%=path%>/ab/ab01DelPlan.html" disabled="disabled" class="layui-btn">
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
			layui.use([ 'layer', 'form', 'element'], function() {
				var element = layui.element;
				var layer = layui.layer, form = layui.form;
				layer.msg('Hello World');
			});
			
		</script>
	</body>
</html>
