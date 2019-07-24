<%@ page language="java" pageEncoding="GBK"%>
<%@include file="/base/taglib.jsp" %>
<html>
<head>
	<jsp:include   page="/base/head.jsp"/>
</head>
<body class="layui-layout-body">
<div class="layui-layout layui-layout-admin">
  	<jsp:include   page="/base/header.jsp"/>
	<c:import url="/ab/menu.jsp">
  		<c:param name="menu" value="ab03a"/>
   	</c:import>
  <div class="layui-body">
    <!-- 内容主体区域 -->
    <div class="layui-anim layui-anim-scale"
		style="padding: 15px; margin: 30px 80px;">
			<fieldset class="layui-elem-field layui-filed-title" style="margin-top: 20px;">
				<legend style="color:black;"><h2>${empty param.aab301?'新增':'修改' }营销方案</h2></legend>
    
    	<form class="layui-form" lay-filter="myform" action="<%=path%>/ab/ab03Add.html" method="post">
		
			<div align="center">
			
			<div class="layui-form-item">
				<div class="layui-inline">
					<label class="layui-form-label">
						<i class="layui-icon layui-icon-form" style="font-size: 20px; color: black;"></i>方案名称
					</label>
					<div class="layui-input-inline">
						<input type="text" name="aab302" value="${ins.aab302 }" required="true" autofocus="true" class="layui-input">
					</div>
				</div>
				<div class="layui-inline">
					<label class="layui-form-label">
						<i class="layui-icon layui-icon-rmb" style="font-size: 20px; color: black;"></i>预算费用
					</label>
					<div class="layui-input-inline">
						<input type="number" step="0.01" name="aab303" value="${ins.aab303 }" required="true" class="layui-input">
					</div>
				</div>
			</div>

			
			<div class="layui-form-item">
				<div class="layui-inline">
					<label class="layui-form-label">
						<i class="layui-icon layui-icon-face-smile" style="font-size: 20px; color: black;"></i>状态
					</label>
					<div class="layui-input-inline">
						<select name="aab304" lay-verify="">
							<option value="">请选择方案状态</option>
							<option value="01" selected="selected">计划中</option>
							<option value="02">执行中</option>
							<option value="03">已完成</option>
						</select>
					</div>
				</div>
				<div class="layui-inline">
					<label class="layui-form-label">
						<i class="layui-icon layui-icon-date" style="font-size: 20px; color: black;"></i>制定日期
					</label>
					<div class="layui-input-inline">
						<input type="text" name="aab305" required="true" value="${ins.aab305 }" class="layui-input" id="test29" placeholder="yyyy-MM-dd">
					</div>
				</div>
			</div>
			
			<div class="layui-form-item" align="left">
				<div class="layui-inline" style="padding-left:250px">
					<label class="layui-form-label">
						<i class="layui-icon layui-icon-username" style="font-size: 20px; color: black;"></i>制定人
					</label>
					<div class="layui-input-inline">
						<input name="aab306" required="true" value="${ins.aab306 }" class="layui-input">
					</div>
				</div>
			</div>

			 
			<div class="layui-form-item layui-form-text"  style="padding-left:250px;padding-right:270px;">
				<label class="layui-form-label">
					<i class="layui-icon layui-icon-survey" style="font-size: 20px; color: black;"></i>方案描述
				</label>
				<div class="layui-input-block">
					<textarea placeholder="请输入内容" name="aab307" class="layui-textarea">${ins.aab307 }</textarea>
				</div>
			</div>

			<div class="layui-form-item" align="center">
				<input type="submit" name="next" value="${empty param.aab301?'添加':'修改' }" 
				formaction="<%=path%>/${empty param.aab301?'ab/ab03Add':'ab/ab03Modify' }.html" class="layui-btn"/>
				<input type="submit" name="next" value="返回"
				formaction="<%=path %>/ab/ab03Query.html"
				formnovalidate="formnovalidate" class="layui-btn">
			
				<!-- <input id="layer" type="submit" name="next" value="编辑营销活动"
					formaction="<%=path %>/ab/ab04FindById.html"> -->	
			</div>	 
		 	
			<input type="hidden" name="aab301" value="${param.aab301 }">
		</div>
	</form>
    </fieldset>
    </div>
    
  </div>
  
  <div class="layui-footer">
    <!-- 底部固定区域 -->
  </div>
</div>
<script ></script>
<script>

window.onload=function()
{
	var obj = document.getElementById("layer");
	if(${empty ins})
	{
		obj.style.display = "none";
	} 
}

//JavaScript代码区域
	layui.use(['layer','element','form'], function(){
		var element = layui.element;
		  var layer = layui.layer
		  ,form = layui.form;
		  
		  form.val('myform',{
			  "aab304":"${ins.aab304}"
		  });
		});
	
	//状态下拉框默认值设置	
	
	  
	//日期选择框
	  layui.use('laydate', function() {
	  	var laydate = layui.laydate;
	  	//墨绿主题
	  	laydate.render({
	  		elem: '#test29',
	  		theme: 'molv',
	  	});
	  });
</script>
</body>
</html>