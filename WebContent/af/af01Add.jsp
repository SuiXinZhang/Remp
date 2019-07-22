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
				<fieldset class="layui-elem-field layui-filed-title" style="margin-top: 20px;">
					<legend> 登记票据</legend>
    <form class="layui-form" lay-filter="myform" action="<%=path%>/ac/ac01Add.html" method="post">
  
	<div class="layui-form-item" align="center">
		<div class="layui-inline">
			<label class="layui-form-label">
			<i class="layui-icon layui-icon-senior" style="font-size: 20px; color: black;"></i>
			票据类型
			</label>
				<div class="layui-input-inline">
					<input type="radio" name="aaf103" value="1" title="发票" checked>
					<input type="radio" name="aaf103" value="2" title="收据">
				</div>
		</div>

		<div class="layui-inline">
			<label class="layui-form-label">
			<i class="layui-icon layui-icon-cellphone" style="font-size: 20px; color: black;"></i>
			票据前缀
			</label>
				<div class="layui-input-inline">
					<input type="text" name="aaf104" required lay-verify="true" value="${param.aaf104 }"
					 autocomplete="off" class="layui-input">
				</div>
		</div>
	</div>
	
	<div class="layui-form-item" align="center">
		<div class="layui-inline">
			<label class="layui-form-label">
			<i class="layui-icon layui-icon-date" style="font-size: 20px; color: black;"></i>
			起始编号
			</label>
				<div class="layui-input-inline">
					<input type="number" name="aaf106" required lay-verify="true" value="${param.aaf106 }"
					 autocomplete="off" step="1" class="layui-input">
				</div>
		</div>
	
		<div class="layui-inline">
			<label class="layui-form-label">
			<i class="layui-icon layui-icon-date" style="font-size: 20px; color: black;"></i>
			截止编号
			</label>
				<div class="layui-input-inline">
					<input type="number" name="aaf107" required lay-verify="true" value="${param.aaf107 }"
					 autocomplete="off" step="1" class="layui-input">
				</div>
		</div>
	</div>
	
	<div class="layui-form-item" align="center">
		<div class="layui-inline">
			<label class="layui-form-label">
			<i class="layui-icon layui-icon-face-cry" style="font-size: 20px; color: black;"></i>
			票据位数
			</label>
				<div class="layui-input-inline">
					<input type="text" name="aaf112" required lay-verify="true" value="${param.aaf112 }"
					 autocomplete="off" class="layui-input">
				</div>
		</div>
	
		<div class="layui-inline">
			<label class="layui-form-label">
			<i class="layui-icon layui-icon-face-cry" style="font-size: 20px; color: black;"></i>
			票据批次号
			</label>
				<div class="layui-input-inline">
					<input type="text" name="aaf105" required lay-verify="true" value="${param.aaf105 }"
					 autocomplete="off" class="layui-input">
				</div>
		</div>
	</div>
	
	<div class="layui-form-item" align="center">
		<div class="layui-inline">
			<label class="layui-form-label">
			<i class="layui-icon layui-icon-face-cry" style="font-size: 20px; color: black;"></i>
			所属项目
			</label>
				<div class="layui-input-inline">
					<input type="text" name="aaf102" required lay-verify="true" value="${param.aaf102 }"
					 autocomplete="off" class="layui-input">
				</div>
		</div>
	
		<div class="layui-inline">
			<label class="layui-form-label">
			<i class="layui-icon layui-icon-face-cry" style="font-size: 20px; color: black;"></i>
			印制单位
			</label>
				<div class="layui-input-inline">
					<input type="text" name="aaf110" required lay-verify="true" value="${param.aaf110 }"
					 autocomplete="off" class="layui-input">
				</div>
		</div>
	</div>
	
	<div class="layui-form-item" align="center">
		<div class="layui-inline">
			<label class="layui-form-label">
			<i class="layui-icon layui-icon-face-cry" style="font-size: 20px; color: black;"></i>
			登记人
			</label>
				<div class="layui-input-inline">
					<input type="text" name="aaf108" required lay-verify="true" value="${param.aaf108 }"
					 autocomplete="off" class="layui-input">
				</div>
		</div>
	
		<div class="layui-inline">
			<label class="layui-form-label">
			<i class="layui-icon layui-icon-date" style="font-size: 20px; color: black;"></i>
			登记日期
			</label>
				<div class="layui-input-inline">
					<input type="text" name="aaf109" id="date" required lay-verify="true" value="${param.aaf109 }"
					 autocomplete="off" class="layui-input">
				</div>
		</div>
	</div>
	
	<div class="layui-form-item" align="center">
		<div class="layui-inline">
		    <label class="layui-form-label" >
		    <i class="layui-icon layui-icon-edit" style="font-size: 20px; color: black;"></i>
		   	备&#8195;&#8195;注</label>
		    <div class="layui-input-block">
		      <textarea cols="68" placeholder="请输入内容" name="aaf111" class="layui-textarea" >${param.aaf111 }</textarea>
		    </div>
 		</div>
	</div>
	
    <div class="layui-form-item" align="center">
    
	<div class="layui-inline">
			<button class="layui-btn " name="next" type="submit" 
			formaction="<%=path%>/af/af01Add.html">
			<i class="layui-icon layui-icon-add-1"></i>添加
			</button>
	</div>
    </div>

<!-- 保存默认项目名,后期从session中得到 -->
<input type="hidden" name="aaa201" value="1"/>
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
		  "aaf103":"${param.aaf103}",
		  "aac109":"${ins.aac109}"
	  });
	  
	  //执行一个laydate实例
	  laydate.render({
	    elem: '#date'  //指定元素
	    ,trigger: 'click'
	  });
	});
</script>
</body>
</html>