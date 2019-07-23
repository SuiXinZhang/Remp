<%@ page language="java" pageEncoding="GBK"%>
<%@include file="/base/taglib.jsp" %>
<html>
<head>
	<jsp:include   page="/base/head.jsp"/>
</head>
<body class="layui-layout-body">
<div class="layui-layout layui-layout-admin">
  	<jsp:include   page="/base/header.jsp"/>
	<jsp:include   page="/ad/menu.jsp"/>
  <div class="layui-body">
    <!-- 内容主体区域 -->
    <div class="layui-anim layui-anim-scale" style="padding: 15px; margin:50px 100px;">
    <fieldset class="layui-elem-field">
 	<legend style="color:black"><h2>添加预留</h2></legend>
  		<div class="layui-field-box">
    <form class="layui-form" action="<%=path %>/ad/ad05add.html" method="post">
	<div class="layui-form-item" align="center">
			<div class="layui-inline">
				<label class="layui-form-label">
					<i class="layui-icon layui-icon-username" style="font-size: 20px; color: black;"></i>
					客户名称
				</label>
				<div class="layui-input-inline">
					<input type="text" name="aad508" required lay-verify="true" value="${ins.aad508 }"
					 autocomplete="off" class="layui-input">
				</div>
			</div>
			<div class="layui-inline">
				<label class="layui-form-label">
					<i class="layui-icon layui-icon-home" style="font-size: 20px; color: black;"></i>
					房间号码
				</label>
				<div class="layui-input-inline">
					<input id="room" type="text" name="aad502" required lay-verify="true" value="${ins.aad502 }"
					 onclick="selectRoom()" readonly="readonly" class="layui-input">
					<input id="roomNo" type="hidden" name="aaa801" value="${ins.aaa801 }">
				</div>
			</div>
	</div>
	<div class="layui-form-item" align="center">
			<div class="layui-inline">
				<label class="layui-form-label">
					<i class="layui-icon layui-icon-date" style="font-size: 20px; color: black;"></i>
					签署日期
				</label>
				<div class="layui-input-inline">
					<input type="text" name="aad503" id="date1" required lay-verify="true" value="${ins.aad503 }"
					 autocomplete="off" class="layui-input">
				</div>
			</div>
			<div class="layui-inline">
				<label class="layui-form-label">
					<i class="layui-icon layui-icon-date" style="font-size: 20px; color: black;"></i>
					失效日期
				</label>
				<div class="layui-input-inline">
					<input type="text" name="aad504" id="date2" required lay-verify="true" value="${ins.aad504 }"
					autocomplete="off" class="layui-input">
				</div>
			</div>
	</div>
	<div class="layui-form-item" align="center">
			<div class="layui-inline">
				<label class="layui-form-label">
					<i class="layui-icon layui-icon-username" style="font-size: 20px; color: black;"></i>
					业&ensp;务&ensp;员
				</label>
				<div class="layui-input-inline">
					<input type="text" name="aad505" required lay-verify="true" value="${ins.aad505 }"
					 autocomplete="off" class="layui-input">
				</div>
			</div>
			<div class="layui-inline">
				<label class="layui-form-label">
					<i class="layui-icon layui-icon-tips" style="font-size: 20px; color: black;"></i>
					预留状态
				</label>
				<div class="layui-input-inline">
					<input type="text" name="aad507" required lay-verify="true" value="${ins.aad507 }"
					autocomplete="off" class="layui-input">
				</div>
			</div>
	</div>
	<div class="layui-form-item layui-form-text" align="center">
			<div class="layui-inline">
				<label class="layui-form-label">
					<i class="layui-icon layui-icon-edit" style="font-size: 20px; color: black;"></i>
					备&#8195;&#8195;注
				</label>
				<div class="layui-input-inline">
					<textarea cols="66" name="aad506" class="layui-textarea" placeholder="请输入内容">${ins.aad506 }</textarea>
				</div>
			</div>
	</div>
    <div class="layui-form-item" align="center">  	
    	<input type="submit" name="next" value="${empty param.aad501?'添加':'修改' }" class="layui-btn layui-btn-normal" 
    	    formaction="${empty param.aad501?'ad05add':'ad05modify' }.html">
    	<input type="submit" name="next" value="查看" class="layui-btn layui-btn-normal" 
    		formnovalidate="formnovalidate" formaction="<%=path %>/ad/ad05query.html">
	</div>
<input type="hidden" name="aac401" value="${ins.aac401 }">
<input type="hidden" name="aad501" value="${param.aad501 }">
</form>
	</div>
	</fieldset>
    </div>
  </div>
  
  <div class="layui-footer">
    <!-- 底部固定区域 -->
    ? layui.com - 底部固定区域
  </div>
</div>
<script ></script>
<script>
//JavaScript代码区域
	layui.use(['layer', 'form','element'], function(){
	  var layer = layui.layer
      ,form = layui.form
	  ,element = layui.element;
	  if("${msg }" != "")
		{
			layer.msg('${msg }');	  
		}
	});
	layui.use('laydate', function(){
		  var laydate = layui.laydate;
		 
		  //执行一个laydate实例
		  laydate.render({
		    elem: '#date1'  //指定元素
		  });
		  laydate.render({
			elem: '#date2'  //指定元素
			  });
		});
	function selectRoom(e)
	{
		layer.open({
			 type: 2
			,title: '房间选择'
			,area:['800px', '500px']
			,maxmin: true
			,content: '<%=path%>/base/room.html'
			,btn: ['确定','关闭'],
			yes: function(index){
				var res = window["layui-layer-iframe" + index].callbackdata();
				//打印返回的值，看是否有我们想返回的值
				console.log(res);
				$("#room").attr("value",res[0])
				$("#roomNo").attr("value",res[1])
				layer.close(index);
				}
			});  
	}
</script>
</body>
</html>