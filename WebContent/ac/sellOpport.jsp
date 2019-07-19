<%@ page language="java" pageEncoding="GBK"%>
<%@include file="/base/taglib.jsp" %>
<html>
<head>
	<jsp:include   page="/base/head.jsp"/>
</head>
<body class="layui-layout-body">
<div class="layui-layout layui-layout-admin">
  	<jsp:include   page="/base/header.jsp"/>
	<jsp:include   page="/ac/menu.jsp"/>
  <div class="layui-body">
    	
    <div style="padding: 15px;">
    <form class="layui-form" lay-filter="myform" action="<%=path%>/ac/ac04ChangeOpport.html" method="post">
	客户意向
	
	<div class="layui-form-item" align="center">
		<div class="layui-inline">
			<label class="layui-form-label">客户名称</label>
				<div class="layui-input-inline">
					<input type="text" name="aac202" required lay-verify="true" value="${ins.aac403 }"
					 autofocus="autofocus" autocomplete="off" class="layui-input">
				</div>
		</div>
	</div>
	<div class="layui-form-item" align="center">
		<div class="layui-inline">
			<label class="layui-form-label">客户编号</label>
				<div class="layui-input-inline">
					<input type="text" name="aac402" required lay-verify="true" value="${ins.aac402 }"
					 readonly="readonly" autocomplete="off" class="layui-input">
				</div>
		</div>
	</div>
	<div class="layui-form-item" align="center">
		<div class="layui-inline">
			<label class="layui-form-label">意向房屋类型</label>
				<div class="layui-input-inline">
					<select name="aac207">
						<option value="01" selected>两室一厅</option>
						<option value="02">两室两厅</option>
						<option value="03">三室两厅</option>
					</select>
				</div>
		</div>
	</div>
	<div class="layui-form-item" align="center">
		<div class="layui-inline">
			<label class="layui-form-label">意向面积</label>
				<div class="layui-input-inline">
					<input type="text" name="aac208" value="${ins.aac208 }"
					 autocomplete="off" class="layui-input">
				</div>
		</div>
	</div>
	<div class="layui-form-item" align="center">
		<div class="layui-inline">
			<label class="layui-form-label">意向价格</label>
				<div class="layui-input-inline">
					<input type="text" name="aac209" required lay-verify="true" value="${ins.aac209 }"
					 autocomplete="off" class="layui-input">
				</div>
		</div>
	</div>
	<div class="layui-form-item" align="center">
		<div class="layui-inline">
			<label class="layui-form-label">购买可能性</label>
				<div class="layui-input-inline">
					<select name="aac203">
						<option value="01" selected>25%</option>
						<option value="02">50%</option>
						<option value="03">75%</option>
						<option value="04">90%</option>
						<option value="05">100%</option>
					</select>
				</div>
		</div>
	</div>
	<div class="layui-form-item" align="center">
		<div class="layui-inline">
			<label class="layui-form-label">可能购买时间</label>
				<div class="layui-input-inline">
					<input type="text" name="aac204" id="date" required lay-verify="true" value="${ins.aac204 }"
					 autocomplete="off" class="layui-input">
				</div>
		</div>
	</div>
	<div class="layui-form-item" align="center">
		<div class="layui-inline">
			<label class="layui-form-label">客户潜在跟进价值评估</label>
				<div class="layui-input-inline">
					<select name="aac206">
						<option value="01" selected>差</option>
						<option value="02">中等</option>
						<option value="03">良</option>
						<option value="04">优</option>
					</select>
				</div>
		</div>
	</div>
	<div class="layui-form-item" align="center">
		<div class="layui-inline">
			<label class="layui-form-label">备注</label>
				<div class="layui-input-inline">
					<textarea name="aac205" value="${ins.aac205 }" class="layui-textarea"></textarea>
				</div>
		</div>
	</div>

    <div class="layui-form-item" align="center">
       <input type="submit" name="next" value="${empty param.aac201?'添加':'修改'}" class="layui-btn layui-btn-normal"
        formaction="<%=path %>/ac/${empty param.aac201?'ac02Add.html':'ac02Modify.html'}">
       <input type="submit" name="next" value="返回" class="layui-btn layui-btn-normal"
       formaction="<%=path %>/ac/ac01Query.html" formnovalidate="formnovalidate">
	</div>
<e:hidden name="aac401" value="${ins.aac401 }"/>
<e:hidden name="aac201" value="${param.aac201 }"/>

<input type="hidden" name="aac101" value="${param.aac101 }">

</form>
    </div>
  </div>
  
  <div class="layui-footer">
    <!-- 底部固定区域 -->
  </div>
</div>
<script>
//JavaScript代码区域
	layui.use(['layer', 'form','element'], function(){
	  var layer = layui.layer
	  ,form = layui.form;
	  var element = layui.element();
	  layer.msg('Hello World');
	  form.val('myform',{
		  "aac207":"${ins.aac207}",
		  "aac203":"${ins.aac203}",
		  "aac206":"${ins.aac206}"
	  });
	});
	layui.use('laydate', function(){
		  var laydate = layui.laydate;
		 
		  //执行一个laydate实例
		  laydate.render({
		    elem: '#date'  //指定元素
		  });
		});
</script>
</body>
</html>