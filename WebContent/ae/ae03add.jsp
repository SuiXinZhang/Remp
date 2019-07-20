<%@ page language="java" pageEncoding="GBK"%>
<%@include file="/../base/taglib.jsp" %>
<html>
<head>
	<jsp:include   page="/base/head.jsp"/>
</head>
<body class="layui-layout-body">
<div class="layui-layout layui-layout-admin">
	<jsp:include   page="/base/header.jsp"/>
	<jsp:include   page="/ae/menu.jsp"/>
  <div class="layui-body">
  <h1 align="center">入伙记录</h1>
    <div style="padding: 15px;">
	    <form action="<%=path %>/ae03Add.html" lay-filter="form" class="layui-form"  method="post">
	    <div align="center">
		    <div class="layui-form-item">
		    	<div class="layui-inline">
			      	<label class="layui-form-label">客户</label>
			      	<div class="layui-input-inline">
			        	<input required="required" name="aae302" class="layui-input" type="text" value="${ins.aae302 }" >
		      		</div>
		    	</div>
			    <div class="layui-inline">
			      	<label class="layui-form-label">联系电话</label>
			      	<div class="layui-input-inline">
			        <input required="required" name="aae303" class="layui-input" type="number" step="1" maxlength="15" value="${ins.aae303 }" >
		      		</div>
		    	</div>
	    	</div>
	    	
	    	<div class="layui-form-item">
	    	 <div class="layui-inline">
			      	<label class="layui-form-label">合同编号</label>
			      	<div class="layui-input-inline">
			        <input required="required" name="aae304" class="layui-input" value="${ins.aae304 }" type="text">
		      		</div>
		    	</div>
		      	<div class="layui-inline">
		      		<label class="layui-form-label">房间</label>
	                <div class="layui-input-inline" >
	                	<input required="required" id="room" class="layui-input" type="text" name="aae312" value="${ins.aae312 }" onclick="selectRoom()" readonly="readonly">
	                	<input id="roomNo" type="hidden" name="aaa801" value="${ins.aaa801 }">
	                </div>
	            </div>
	    	</div>
	    	<div class="layui-form-item">
		    	<div class="layui-inline">
			      	<label class="layui-form-label">交房日期</label>
			      	<div class="layui-input-inline">
			        <input id="date1" required="required" name="aae305" class="layui-input" type="text" value="${ins.aae305 }"
			       		 placeholder="yyyy-MM-dd" autocomplete="off" lay-verify="date">
		      		</div>
		    	</div>
			    <div class="layui-inline">
			      	<label class="layui-form-label">业务员</label>
			      	<div class="layui-input-inline">
				       <input required="required" name="aae306" type="text" class="layui-input" value="${ins.aae306 }">
		      		</div>
		    	</div>
	    	</div>
	    	<div class="layui-form-item">
		    	<div class="layui-inline">
			      	<label class="layui-form-label">承诺办理</label>
			      	<div class="layui-input-inline">
			       		<input id="date2" required="required" name="aae307" class="layui-input" type="text" value="${ins.aae307 }"
			       		 placeholder="yyyy-MM-dd" autocomplete="off" lay-verify="date">
		      		</div>
		    	</div>
			    <div class="layui-inline">
			      	<label class="layui-form-label">承诺完成</label>
			      	<div class="layui-input-inline">
				       <input id="date3" required="required" name="aae308" class="layui-input" type="text" value="${ins.aae308 }"
			       		 placeholder="yyyy-MM-dd" autocomplete="off" lay-verify="date">
		      		</div>
		    	</div>
	    	</div>
	    	<div class="layui-form-item layui-form-text">
		    	<div class="layui-inline">
			      	<label class="layui-form-label">备注</label>
			      	<div class="layui-input-inline" >
			        <textarea cols="65" name="aae311" class="layui-textarea" placeholder="请输入内容">${ins.aae311 }</textarea>
		      		</div>
		    	</div>
	    	</div>
	    	
	    	<div class="layui-form-item">
				<div class="layui-inline">
						<input class="layui-btn" name="next" type="submit" value="${empty param.aae301?'添加':'修改' }"
							formaction="<%=path%>/ae/${empty param.aae301?'ae03Add.html':'ae03Modify.html'}">
						<input class="layui-btn" type="submit" value="返回"
						formaction="<%=path%>/ae/ae03query.html" formnovalidate="formnovalidate" >
				</div>
			</div>
			<input type="hidden" name="aae301" value="${param.aae301 }"> 
		</div>
	</form>
	</div>
  </div>
  
  <div class="layui-footer">
  </div>
</div>

<script>
layui.use(['layer', 'form','element'], function(){
	var element = layui.element;
	var $ = layui.jquery;
	var layer = layui.layer
	,form = layui.form;
	  form.val('form',{
		  'aae104':"${ins.aae104}",
		  'aae209':"${ins.aae209}",
		  'aae217':"${ins.aae217}",
		  'aae210':"${ins.aae210}",
	  });
	})
	layui.use('laydate',function(){
		 var laydate = layui.laydate;
		  laydate.render({
			  elem:'#date1'
			 
		  });
		  laydate.render({
			  elem:'#date2'
			 
		  });
		  laydate.render({
			  elem:'#date3'
			 
		  });
	});
</script>
<script type="text/javascript">
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