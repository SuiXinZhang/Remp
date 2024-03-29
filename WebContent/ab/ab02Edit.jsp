<%@ page language="java" pageEncoding="GBK"%>
<%@include file="/base/taglib.jsp" %>
<html>
<head>
	<jsp:include   page="/base/head.jsp"/>
	
	<style>
		.noBorder
		{
			background-color:transparent;
			border:0;
		}
	</style>
	
</head>
<body class="layui-layout-body">
<div class="layui-layout layui-layout-admin">
  	<jsp:include   page="/base/header.jsp"/>
	<jsp:include   page="/ab/menu.jsp"/>
  <div class="layui-body">
    <!-- 内容主体区域 -->
    <div style="padding: 15px;">
    
    <form id="layer" action="<%=path%>/ab/ab02Query.html" method="post" class="layui-form" >
	
		<fieldset class="layui-elem-field layui-field-title" style="margin-top: 20px;">
			<legend style="color:black;"><h2>销售计划明细表</h2></legend>
		</fieldset>
	
		<table class="layui-table" id="test3" lay-filter="test3">
			
			<tr>
				<td>序号</td>
				<td>产品类型</td>
				<td>计划销售套数</td>
				<td>计划销售面积</td>
				<td>计划销售金额</td>
				<td>计划销售均价</td>
				<td>计划回款金额</td>
			</tr>

			<c:choose>
				<c:when test="${rows!=null }">
					<c:forEach items="${rows }" var="ins" varStatus="vs">
						<tr>
							<td>${vs.count }</td>
							<td><input type="text" name="aab202List" value="${ins.cnaab202 }" readonly="true" class="noBorder"></td>
							<td><input type="text" name="aab203List" value="${ins.aab203 }" class="noBorder"></td>
							<td><input type="text" name="aab204List" value="${ins.aab204 }" class="noBorder"></td>
							<td><input type="text" name="aab205List" value="${ins.aab205 }" class="noBorder"></td>
							<td><input type="text" name="aab206List" value="${ins.aab206 }" class="noBorder"></td>
							<td><input type="text" name="aab207List" value="${ins.aab207 }" class="noBorder"></td>
						</tr>
					</c:forEach>
					<tr>
						<td colspan="7" align="center">
							<button class="layui-btn layuiadmin-btn-useradmin" type="submit" 
								formaction="<%=path %>/ab/ab02Update.html">
								<i class="layui-icon layui-icon-ok"></i>确定
							</button>
							<button class="layui-btn layuiadmin-btn-useradmin" type="submit" 
								formaction="<%=path %>/ab/ab01Query.html" formnovalidate="formnovalidate">
								<i class="layui-icon layui-icon-prev"></i>返回
							</button>
						</td>
					</tr>
				</c:when>			
			</c:choose>
		</table>
		<input type="hidden" name="aab101" value="${param.aab101 }">
	</form>
    
    </div>
    
  </div>
  
  <div class="layui-footer">
    <!-- 底部固定区域 -->
  </div>
</div>
<script ></script>
<script>
//JavaScript代码区域
	layui.use(['layer', 'form'], function(){
		  var layer = layui.layer
		  ,form = layui.form;
		  

			if("${msg }" != "")
			{
				layer.msg('${msg }');	  
			}
		  
		});
		
	layui.use(['table','layer'], function(){
		var table = layui.table
		,layer = layui.layer;

		//监听单元格编辑
		table.on('edit(test3)', function(obj){
		var value = obj.value //得到修改后的值
		,data = obj.data //得到所在行所有键值
		,field = obj.field; //得到字段
		layer.msg('[ID: '+ data.id +'] ' + field + ' 字段更改为：'+ value);
		});
	});
</script>
</body>
</html>