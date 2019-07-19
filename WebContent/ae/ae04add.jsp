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
  <h1 align="center">产权记录</h1>
    <div style="padding: 15px;">
	    <form action="<%=path %>/ae04Add.html" lay-filter="form" class="layui-form"  method="post">
	    <div align="center">
		    <div class="layui-form-item">
		    	<div class="layui-inline">
			      	<label class="layui-form-label">客户</label>
			      	<div class="layui-input-inline">
			        	<input required="required" name="aae402" class="layui-input" type="text" value="${ins.aae402 }" >
		      		</div>
		    	</div>
			    <div class="layui-inline">
			      	<label class="layui-form-label">联系电话</label>
			      	<div class="layui-input-inline">
			        <input required="required" name="aae403" class="layui-input" type="number" step="1" maxlength="15" value="${ins.aae403 }" >
		      		</div>
		    	</div>
	    	</div>
	    	
	    	<div class="layui-form-item">
	    	 <div class="layui-inline">
			      	<label class="layui-form-label">合同编号</label>
			      	<div class="layui-input-inline">
			        <input required="required" name="aae405" class="layui-input" value="${ins.aae405 }" type="text">
		      		</div>
		    	</div>
		      	<div class="layui-inline">
		      		<label class="layui-form-label">房间</label>
	                <div class="layui-input-inline" >
	                	<input required="required" id="room" class="layui-input" type="text" name="aae416" value="${ins.aae416 }" onclick="selectRoom()" readonly="readonly">
	                	<input id="roomNo" type="hidden" name="aaa801" value="${ins.aaa801 }">
	                </div>
	            </div>
	    	</div>
	    	<div class="layui-form-item">
		    	<div class="layui-inline">
			      	<label class="layui-form-label">建筑面积</label>
			      	<div class="layui-input-inline">
			        	<input required="required" name="aae406" class="layui-input" step="0.01" type="number" value="${ins.aae406 }">
		      		</div>
		    	</div>
			    <div class="layui-inline">
			      	<label class="layui-form-label">套内面积</label>
			      	<div class="layui-input-inline">
				       <input required="required" name="aae407" class="layui-input" step="0.01" type="number" value="${ins.aae407 }">
		      		</div>
		    	</div>
	    	</div>
	    	<div class="layui-form-item">
		    	<div class="layui-inline">
			      	<label class="layui-form-label">承诺办理</label>
			      	<div class="layui-input-inline">
			       		<input id="date1" required="required" name="aae409" class="layui-input" type="text" value="${ins.aae409 }"
			       		 placeholder="yyyy-MM-dd" autocomplete="off" lay-verify="date">
		      		</div>
		    	</div>
			    <div class="layui-inline">
			      	<label class="layui-form-label">承诺完成</label>
			      	<div class="layui-input-inline">
				       <input id="date2" required="required" name="aae410" class="layui-input" type="text" value="${ins.aae410 }"
			       		 placeholder="yyyy-MM-dd" autocomplete="off" lay-verify="date">
		      		</div>
		    	</div>
	    	</div>
	    	<div class="layui-form-item">
		    	<div class="layui-inline">
			      	<label class="layui-form-label">业务员</label>
			      	<div class="layui-input-inline" >
			        <input name="aae408" required="required" class="layui-input" type="text" value="${ins.aae408 }">
		      		</div>
		    	</div>
	    	</div>
	    	<div class="layui-form-item layui-form-text">
		    	<div class="layui-inline">
			      	<label class="layui-form-label">备注</label>
			      	<div class="layui-input-inline" >
			        <textarea cols="65"  name="aae412" class="layui-textarea" placeholder="请输入内容">${ins.aae412 }</textarea>
		      		</div>
		    	</div>
	    	</div>
	    	
	    	<div class="layui-form-item">
				<div class="layui-inline">
						<input class="layui-btn" name="next" type="submit" value="${empty param.aae401?'添加':'修改' }"
							formaction="<%=path%>/ae/${empty param.aae401?'ae04Add.html':'ae04Modify.html'}">
						<input class="layui-btn" type="submit" value="返回"
						formaction="<%=path%>/ae/ae04query.html" formnovalidate="formnovalidate" >
				</div>
			</div>
		<input type="hidden" name="aae401" value="${param.aae401 }">
		<input type="hidden" name="aae411" value="${ins.aae411 }">
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