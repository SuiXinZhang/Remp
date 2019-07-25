<%@ page language="java" pageEncoding="GBK"%>
<%@include file="/base/taglib.jsp"%>
<html>
<head>
	<jsp:include page="/base/head.jsp" />
</head>
<body class="layui-layout-body">
	<div class="layui-layout layui-layout-admin">
		<jsp:include page="/base/header.jsp" />
		<jsp:include page="/af/menu.jsp" />
		<div class="layui-body">
				<div class="layui-anim layui-anim-scale"
				style="padding: 15px; margin: 30px 80px;">
				<fieldset class="layui-elem-field layui-filed-title" style="margin-top: 20px;padding-top: 20px">
					<legend> 领用核销</legend>
    <form class="layui-form" lay-filter="myform" action="<%=path%>/ac/af02DiscardNote.html" method="post">
  
	<div class="layui-form-item" align="left">
		<div class="layui-inline"  style="padding-left:237px">
			<label class="layui-form-label" style="width:100px">
			<i class="layui-icon layui-icon-auz" style="font-size: 20px; color: black;"></i>
			票据批次号
			</label>
				<div class="layui-input-inline">
					<input type="text" name="aaf202" required lay-verify="true" value="${param.aaf202 }"
					 autocomplete="off" readonly="readonly" class="layui-input">
				</div>
		</div>
	</div>
	
	<div class="layui-form-item" align="center">
		<div class="layui-inline">
			<label class="layui-form-label" style="width:100px">
			<i class="layui-icon layui-icon-prev" style="font-size: 20px; color: black;"></i>
			&thinsp;起&thinsp;始&thinsp;编&thinsp;号&thinsp;
			</label>
				<div class="layui-input-inline">
					<input type="number" name="aaf203" required lay-verify="true" value="${param.aaf203 }"
					 autocomplete="off" step="1" class="layui-input">
				</div>
		</div>
	
		<div class="layui-inline">
			<label class="layui-form-label">
			<i class="layui-icon layui-icon-next" style="font-size: 20px; color: black;"></i>
			截止编号
			</label>
				<div class="layui-input-inline">
					<input type="number" name="aaf204" required lay-verify="true" value="${param.aaf204 }"
					 autocomplete="off" step="1" class="layui-input">
				</div>
		</div>
	</div>
	
	
	
	
	
	<div class="layui-form-item" align="center">
		<div class="layui-inline">
			<label class="layui-form-label" style="width:100px">
			<i class="layui-icon layui-icon-user" style="font-size: 20px; color: black;"></i>
			领&emsp;用&emsp;人
			</label>
				<div class="layui-input-inline">
					<input type="text" name="aaf205" required lay-verify="true" value="${param.aaf205 }"
					 autocomplete="off" readonly="readonly" class="layui-input">
				</div>
		</div>
	
		<div class="layui-inline">
			<label class="layui-form-label">
			<i class="layui-icon layui-icon-date" style="font-size: 20px; color: black;"></i>
			领用日期
			</label>
				<div class="layui-input-inline">
					<input type="text" name="aaf206" id="date" required lay-verify="true" value="${param.aaf206 }"
					 autocomplete="off" readonly="readonly" class="layui-input">
				</div>
		</div>
	</div>
	
	
	<div class="layui-form-item" align="left">
	<div class="layui-inline" style="padding-left:237px">
			<label class="layui-form-label" style="width:100px">
			<i class="layui-icon layui-icon-senior" style="font-size: 20px; color: black;"></i>
			&thinsp;作&thinsp;废&thinsp;原&thinsp;因&thinsp;
			</label>
				<div class="layui-input-inline" style="width:400px">
					<input type="radio" name="aaf208" value="1" title="开错" checked>
					<input type="radio" name="aaf208" value="2" title="取消使用">
					<input type="radio" name="aaf208" value="3" title="丢失">
					<input type="radio" name="aaf208" value="4" title="其他">
				</div>
		</div>
	</div>
	
	
	<div class="layui-form-item" align="center">
		<div class="layui-inline">
		    <label class="layui-form-label" >
		    <i class="layui-icon layui-icon-edit" style="font-size: 20px; color: black;"></i>
		   	详细说明</label>
		    <div class="layui-input-block">
		      <textarea cols="68" placeholder="请输入内容" name="aaf212" class="layui-textarea" ></textarea>
		    </div>
 		</div>
	</div>
	
    <div class="layui-form-item" align="center">
	<div class="layui-inline">
			<button class="layui-btn " name="next" type="submit" >
			<i class="layui-icon layui-icon-ok"></i>确认作废
			</button>
	</div>
	<div class="layui-inline">
			<button class="layui-btn " name="next" type="submit" formnovalidate="formnovalidate"
			formaction="<%=path%>/af/af02Query.html">
			<i class="layui-icon layui-icon-return"></i>返回
			</button>
	</div>
    </div>
<e:hidden name="aaf201" value="${param.aaf201 }"/>
<input type="hidden" name="qaaf207" value="4" />
</form>
</fieldset>
		</div>
	</div>
	<script>
//JavaScript代码区域
	layui.use(['layer', 'form','element','laydate'], function(){
	  var element = layui.element
	  ,layer = layui.layer
	  ,form = layui.form
	  ,laydate = layui.laydate;
	  
	  if("${msg }" != "")
	  {
		  layer.msg("${msg }");
	  }
	
	  form.val('myform',{
		  "aaf208":"${param.aaf208}"
	  });
	  
	  /* //执行一个laydate实例
	  laydate.render({
	    elem: '#date'  //指定元素
	    ,trigger: 'click'
	  }); */
	});
</script>
</body>
</html>