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
  <h1 align="center">贷款记录</h1>
    <div style="padding: 15px;">
	    <form action="<%=path %>/ae02Add.html" lay-filter="form" class="layui-form"  method="post">
	    <div align="center">
		    <div class="layui-form-item">
		    	<div class="layui-inline">
			      	<label class="layui-form-label">客户</label>
			      	<div class="layui-input-inline">
			        	<input required="required" name="aae202" class="layui-input" type="text" value="${ins.aae202 }" >
		      		</div>
		    	</div>
			    <div class="layui-inline">
			      	<label class="layui-form-label">联系电话</label>
			      	<div class="layui-input-inline">
			        <input required="required" name="aae203" class="layui-input" type="number" step="1" maxlength="15" value="${ins.aae203 }" >
		      		</div>
		    	</div>
	    	</div>
	    	
	    	<div class="layui-form-item">
	    	 <div class="layui-inline">
			      	<label class="layui-form-label">合同编号</label>
			      	<div class="layui-input-inline">
			        <input required="required" name="aae205" class="layui-input" value="${ins.aae205 }" type="text">
		      		</div>
		    	</div>
		      	<div class="layui-inline">
		      		<label class="layui-form-label">房间</label>
	                <div class="layui-input-inline" >
	                	<input required="required" id="room" class="layui-input" type="text" name="aae204" value="${ins.aae204 }" onclick="selectRoom()" readonly="readonly">
	                	<input id="roomNo" type="hidden" name="aaa801" value="${ins.aaa801 }">
	                </div>
	            </div>
	    	</div>
	    	<div class="layui-form-item">
		    	<div class="layui-inline">
			      	<label  class="layui-form-label">付款方式</label>
			      	<div class="layui-input-inline">
			        <input required="required" name="aae206" value="${ins.aae206 }" type="text" class="layui-input" autocomplete="off">
		      		</div>
		    	</div>
			    <div class="layui-inline">
			      	<label class="layui-form-label">签署日期</label>
			      	<div class="layui-input-inline">
			        	<input id="date1" required="required" name="aae207" class="layui-input" type="text" value="${ins.aae207 }" placeholder="yyyy-MM-dd" autocomplete="off" lay-verify="date">
		      		</div>
		    	</div>
	    	</div>
	    	<div class="layui-form-item">
		    	<div class="layui-inline">
			      	<label class="layui-form-label">合同总价</label>
			      	<div class="layui-input-inline">
			        <input required="required" name="aae208" class="layui-input" type="number" value="${ins.aae208 }" autocomplete="off">
		      		</div>
		    	</div>
			    <div class="layui-inline">
			      	<label class="layui-form-label">币种</label>
			      	<div class="layui-input-inline">
				        <select name="aae209" required="required" >
				        	<option >==请选择==</option>
				        	<option value="01">人民币</option>
				        	<option value="02">美元</option>
				        </select>
		      		</div>
		    	</div>
	    	</div>
	    	<div class="layui-form-item">
		    	<div class="layui-inline">
			      	<label class="layui-form-label">贷款类型</label>
			      	<div class="layui-input-inline">
			         	<select name="aae217" required="required">
				        	<option >==请选择==</option>
				        	<option value="01">按揭贷款</option>
				        	<option value="02">公积金贷款</option>
				        </select>
		      		</div>
		    	</div>
			    <div class="layui-inline">
			      	<label class="layui-form-label">银行</label>
			      	<div class="layui-input-inline">
				        <select name="aae210" required="required">
				        	<option value="">==请选择==</option>
				        	<option value="01">工商银行</option>
				        	<option value="02">建设银行</option>
				        	<option value="03">中国银行</option>
				        </select>
		      		</div>
		    	</div>
	    	</div>
	    	<div class="layui-form-item">
		    	<div class="layui-inline">
			      	<label class="layui-form-label">按揭年限</label>
			      	<div class="layui-input-inline">
			        <input required="required" name="aae211" class="layui-input" step="1" type="number" value="${ins.aae211 }" autocomplete="off">
		      		</div>
		    	</div>
			    <div class="layui-inline">
			      	<label class="layui-form-label">贷款</label>
			      	<div class="layui-input-inline">
				        <input required="required" name="aae212" class="layui-input" step="0.01" type="number" value="${ins.aae212 }" autocomplete="off">
		      		</div>
		    	</div>
	    	</div>
	    	<div class="layui-form-item">
		    	<div class="layui-inline">
			      	<label class="layui-form-label">承诺办理</label>
			      	<div class="layui-input-inline">
			       		<input id="date2" required="required" name="aae214" class="layui-input" type="text" value="${ins.aae214 }"
			       		 placeholder="yyyy-MM-dd" autocomplete="off" lay-verify="date">
		      		</div>
		    	</div>
			    <div class="layui-inline">
			      	<label class="layui-form-label">承诺完成</label>
			      	<div class="layui-input-inline">
				       <input id="date3" required="required" name="aae215" class="layui-input" type="text" value="${ins.aae215 }"
			       		 placeholder="yyyy-MM-dd" autocomplete="off" lay-verify="date">
		      		</div>
		    	</div>
	    	</div>
	    	<div class="layui-form-item layui-form-text">
		    	<div class="layui-inline">
			      	<label class="layui-form-label">业务员</label>
			      	<div class="layui-input-block" >
			        <input required="required" name="aae213" type="text" class="layui-input" value="${ins.aae213 }">
		      		</div>
		    	</div>
	    	</div>
	    	<div class="layui-form-item layui-form-text">
		    	<div class="layui-inline">
			      	<label class="layui-form-label">备注</label>
			      	<div class="layui-input-inline" >
			        <textarea cols="60" name="aae216" class="layui-textarea" placeholder="请输入内容">${ins.aae216 }</textarea>
		      		</div>
		    	</div>
	    	</div>
	    	
	    	<div class="layui-form-item">
				<div class="layui-inline">
						<input class="layui-btn" name="next" type="submit" value="${empty param.aae201?'添加':'修改' }"
							formaction="<%=path%>/ae/${empty param.aae201?'ae02add.html':'ae02Modify.html'}">
						<input class="layui-btn" type="submit" value="返回"
						formaction="<%=path%>/ae/ae02query.html" formnovalidate="formnovalidate" >
				</div>
			</div>
			<input type="hidden" name="aae201" value="${param.aae201 }"> 
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