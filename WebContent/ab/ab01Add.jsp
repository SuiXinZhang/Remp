<%@ page language="java" pageEncoding="GBK"%>
<%@include file="/base/taglib.jsp" %>
<html>
	<head>
		<jsp:include page="/base/head.jsp" />
		
		<style>
			.layui-form-label{
				width: 100px;
			}
			.layui-input-inline{
				margin-left: 20px;
			}
		</style>
		
	</head>
	<body class="layui-layout-body">
		<div class="layui-layout layui-layout-admin">
			<jsp:include page="/base/header.jsp" />
			<c:import url="/ab/menu.jsp">
	    		<c:param name="menu" value="ab01a"/>
	   	    </c:import>
		     
			<div class="layui-body">
				${msg }
				<div class="layui-anim layui-anim-scale"
					style="padding: 15px; margin: 30px 80px;">
					<fieldset class="layui-elem-field layui-filed-title" style="margin-top: 20px;">
						<legend>${empty param.aab101?'新增':'修改' }销售计划</legend>
				
					<form action="<%=path%>/ab/ab01Add.html" class="layui-form" method="post">
					
					<div align="center">
	
						<div class="layui-form-item" align="left">
							<div class="layui-inline" style="padding-left:208px">
								<label class="layui-form-label">项目名称</label>
								<div class="layui-input-inline">
									<input type="text" name="aab102" required="true" autofocus="true" value="${ins.aab102 }" class="layui-input">
								</div>
							</div>
							<div class="layui-inline">
								<div class="layui-inline">
								<label class="layui-form-label">制定日期</label>
								<div class="layui-input-inline">
									<input type="text" name="aab103" required="true" value="${ins.aab103 }" class="layui-input" id="test29" placeholder="yyyy-MM-dd">
								</div>
							</div>
							</div>
						</div>


						<div class="layui-form-item">
							<div class="layui-inline">
								<label class="layui-form-label">计划销售面积</label>
								<div class="layui-input-inline">
									<input type="number" step="1" name="aab105" required="true" value="${ins.aab105 }" class="layui-input">
								</div>
							</div>
							<div class="layui-inline">
								<label class="layui-form-label">计划销售套数</label>
								<div class="layui-input-inline">
									<input type="number" step="1" name="aab106" required="true" value="${ins.aab106 }" class="layui-input">
								</div>
							</div>
						</div>

						<div class="layui-form-item">
							<div class="layui-inline">
								<label class="layui-form-label">计划销售金额</label>
								<div class="layui-input-inline">
									<input type="number" step="0.01" name="aab107" required="true" value="${ins.aab107 }" class="layui-input">
								</div>
							</div>
							<div class="layui-inline">
								<label class="layui-form-label">计划销售均价</label>
								<div class="layui-input-inline">
									<input type="number" step="0.01" name="aab108" required="true" value="${ins.aab108 }" class="layui-input">
								</div>
							</div>
						</div>

						<div class="layui-form-item" align="left">
							<div class="layui-inline" style="padding-left:208px">
								<label class="layui-form-label">计划回款金额</label>
								<div class="layui-input-inline">
									<input type="number" step="0.01" name="aab109" required="true" value="${ins.aab109 }" class="layui-input">
								</div>
							</div>
						</div>

						<div class="layui-form-item layui-form-text"  style="padding-left:250px;padding-right:230px;">
							<label class="layui-form-label" style="width:60px">备注</label>
							<div class="layui-input-block">
								<textarea placeholder="请输入内容" name="aab110" class="layui-textarea">${ins.aab110 }</textarea>
							</div>
						</div>
					</div>	

						<div class="layui-form-item" align="center">
							<input type="submit" name="next" value="${empty param.aab101?'添加':'修改' }" 
							formaction="<%=path%>/${empty param.aab101?'ab/ab01Add':'ab/ab01Modify' }.html"
							 class="layui-btn" />
							<input type="submit" name="next" value="返回" formaction="<%=path %>/ab/ab01Query.html" formnovalidate="formnovalidate"
							 class="layui-btn">
						</div>
						<input type="hidden" name="aab101" value="${param.aab101 }">
					</form>
					</fieldset>
				</div>

			</div>

			<div class="layui-footer">
				<!-- 底部固定区域 -->
				? layui.com - 底部固定区域
			</div>
		</div>
		<script>
			//JavaScript代码区域
			layui.use(['layer', 'form'], function() {
				var layer = layui.layer,
					form = layui.form;

			});
			
			//日期模块
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
