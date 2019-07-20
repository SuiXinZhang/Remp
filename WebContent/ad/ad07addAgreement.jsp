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
    <div style="padding: 15px;">
    <form lay-filter="myform" id="myform" class="layui-form" action="<%=path %>/ad/ad07addAgreement.html" method="post">
	<div class="layui-form-item" align="center">
			<div class="layui-inline">
				<label class="layui-form-label">客户名称</label>
				<div class="layui-input-inline">
					<input type="text" name="aad702" required lay-verify="true" value="${ins.aad402 }"
					 autocomplete="off" class="layui-input">
				</div>
			</div>
			<div class="layui-inline">
				<label class="layui-form-label">联系电话</label>
				<div class="layui-input-inline">
					<input type="text" name="aad721" required lay-verify="true" value="${ins.aad421 }"
					autocomplete="off" class="layui-input">
				</div>
			</div>
			<div class="layui-inline">
				<label class="layui-form-label">房间号码</label>
				<div class="layui-input-inline">
					<input type="text" id="room" name="aad703" required lay-verify="true" value="${ins.aad403 }"
					onclick="selectRoom()" readonly="readonly" class="layui-input">
					<input id="roomNo" type="hidden" name="aaa801" value="${ins.aaa801 }">
				</div>
			</div>
	</div>
    <div class="layui-form-item" align="center">
			<div class="layui-inline">
				<label class="layui-form-label">房间结构</label>
				<div class="layui-input-inline">
					<input type="text" name="aaa504" required lay-verify="true" value="${ins.aaa504 }"
					 autocomplete="off" class="layui-input">
				</div>
			</div>
			<div class="layui-inline">
				<label class="layui-form-label">房间状态</label>
				<div class="layui-input-inline">
					<input type="text" name="aaa805" required lay-verify="true" value="${ins.saaa805 }"
							 autocomplete="off" class="layui-input">
				</div>
			</div>
			<div class="layui-inline">
				<label class="layui-form-label">建筑面积</label>
				<div class="layui-input-inline">
					<input type="number" name="aaa505" required lay-verify="true" value="${ins.aaa505 }"
					    step="0.01" autocomplete="off" class="layui-input">
				</div>
			</div>
	</div>
	<div class="layui-form-item" align="center">
			<div class="layui-inline">
				<label class="layui-form-label">套内面积</label>
				<div class="layui-input-inline">
					<input type="number" step="0.01" name="aaa506" required lay-verify="true" value="${ins.aaa506 }"
					 autocomplete="off" class="layui-input">
				</div>
			</div>
			<div class="layui-inline">
				<label class="layui-form-label">建筑单价</label>
				<div class="layui-input-inline">
					<input type="number" name="aaa808" required lay-verify="true" value="${ins.aaa808 }"
						step="0.01"	autocomplete="off" class="layui-input">
				</div>
			</div>
			<div class="layui-inline">
				<label class="layui-form-label">套内单价</label>
				<div class="layui-input-inline">
					<input type="number" name="aaa810" required lay-verify="true" value="${ins.aaa810 }"
					    step="0.01" autocomplete="off" class="layui-input">
				</div>
			</div>
	</div>
	<div class="layui-form-item" align="center">
			<div class="layui-inline">
				<label class="layui-form-label">计价方式</label>
				<div class="layui-input-inline">
					<input type="radio" name="aad722" value="01" title="按建筑面积" checked>
					<input type="radio" name="aad722" value="02" title="按套内面积"> 
				</div>
			</div>
			<div class="layui-inline">
				<label class="layui-form-label">付款方式</label>
				<div class="layui-input-inline">
					<select name="aad704">
						<option value="01" selected>商业贷款</option>
						<option value="02">全款</option>
					</select>
				</div>
			</div>
			<div class="layui-inline">
				<label class="layui-form-label">折扣</label>
				<div class="layui-input-inline">
					<input type="number" name="aad705" required lay-verify="true" value="${ins.aad405 }"
					    step="0.1" autocomplete="off" class="layui-input">
				</div>
			</div>
	</div>
	<div class="layui-form-item" align="center">
			<div class="layui-inline">
				<label class="layui-form-label">建筑成交单价</label>
				<div class="layui-input-inline">
					<input type="number" name="aad706" required lay-verify="true" value="${ins.aad406 }"
						step="0.01"	autocomplete="off" class="layui-input">
				</div>
			</div>
			<div class="layui-inline">
				<label class="layui-form-label">套内成交单价</label>
				<div class="layui-input-inline">
					<input type="number" name="aad707" required lay-verify="true" value="${ins.aad407 }"
					    step="0.01" autocomplete="off" class="layui-input">
				</div>
			</div>
			<div class="layui-inline">
				<label class="layui-form-label">折扣说明</label>
				<div class="layui-input-inline">
					<input type="text" name="aad708" required lay-verify="true" value="${ins.aad408 }"
					 autocomplete="off" class="layui-input">
				</div>
			</div>
	</div>
	<div class="layui-form-item" align="center">
			<div class="layui-inline">
				<label class="layui-form-label">房间总价</label>
				<div class="layui-input-inline">
					<input type="number" name="aad709" required lay-verify="true" value="${ins.aad409 }"
						step="0.01"	autocomplete="off" class="layui-input">
				</div>
			</div>
			<div class="layui-inline">
				<label class="layui-form-label">合同总价(人民币)</label>
				<div class="layui-input-inline">
					<input type="number" name="aad711" required lay-verify="true" value="${ins.aad410 }"
					    step="0.01" autocomplete="off" class="layui-input">
				</div>
			</div>
			<div class="layui-inline">
				<label class="layui-form-label">合同币种</label>
				<div class="layui-input-inline">
					<select name="aad712">
						<option value="01" selected>人民币</option>
						<option value="02">美元</option>
						<option value="03">英镑</option>
						<option value="04">日元</option>
						<option value="05">欧元</option>
					</select>
				</div>
			</div>
	</div>
	<div class="layui-form-item" align="center">
			<div class="layui-inline">
				<label class="layui-form-label">合同汇率</label>
				<div class="layui-input-inline">
					<input type="number" name="aad713" required lay-verify="true" value="${ins.aad412 }"
						step="0.01"	autocomplete="off" class="layui-input">
				</div>
			</div>
			<div class="layui-inline">
				<label class="layui-form-label">应收定金</label>
				<div class="layui-input-inline">
					<input type="number" name="aad714" required lay-verify="true" value="${ins.aad413 }"
					    step="0.01" autocomplete="off" class="layui-input">
				</div>
			</div>
			<div class="layui-inline">
				<label class="layui-form-label">合同总价</label>
				<div class="layui-input-inline">
					<input type="number" name="aad715" required lay-verify="true" value="${ins.aad414 }"
					    step="0.01" autocomplete="off" class="layui-input">
				</div>
			</div>
	</div>
	<div class="layui-form-item" align="center">
			<div class="layui-inline">
				<label class="layui-form-label">签署日期</label>
				<div class="layui-input-inline">
					<input type="text" name="aad716" id="date1" required lay-verify="true"
					 autocomplete="off" class="layui-input">
				</div>
			</div>
			<div class="layui-inline">
				<label class="layui-form-label">交房日期</label>
				<div class="layui-input-inline">
					<input type="text" name="aad717" id="date2" required lay-verify="true"
							 autocomplete="off" class="layui-input">
				</div>
			</div>
			<div class="layui-inline">
				<label class="layui-form-label">推荐人</label>
				<div class="layui-input-inline">
					<input type="text" name="aad718" required lay-verify="true" value="${ins.aad417 }"
					 autocomplete="off" class="layui-input">
				</div>
			</div>
	</div>
	<div class="layui-form-item" align="center">
			<div class="layui-inline">
				<label class="layui-form-label">业务员</label>
				<div class="layui-input-inline">
					<input type="text" name="aad720" required lay-verify="true" 
					 autocomplete="off" class="layui-input">
				</div>
			</div>
			<c:if test="${!empty param.aad701 }">
			<div class="layui-inline">
				<label class="layui-form-label">合同编号</label>
					<div class="layui-input-inline">
						<input type="text" name="aad710" value="${ins.aad710 }"
							 autocomplete="off" class="layui-input">
					</div>
				</div>
			</c:if>
	</div>
    
    <div class="layui-form-item" align="center">
	       <input type="submit" name="next" value="添加" class="layui-btn layui-btn-normal"
	              formaction="ad07addAgreement.html">
	       <input type="submit" name="next" value="查看" class="layui-btn layui-btn-normal"
	          formnovalidate="formnovalidate" formaction="ad/ad07queryAgreement.html">
	       <input type="submit" name="next" value="返回" class="layui-btn layui-btn-normal"
	       formaction="ad07queryAgreement.html" formnovalidate="formnovalidate">
	</div>
    <input type="hidden" name="aac401" value="${ins.aac401 }">
    <input type="hidden" name="aad701" value="${param.aad701 }">
    <input type="hidden" name="aad401" value="${ins.aad401 }">
</form>
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
	  var element = layui.element;
	  var layer = layui.layer
	  ,form = layui.form;
	  if(${!empty msg})
		{
			layer.msg('${msg }');	  
		}
		});
	  form.val('myform',{
		  "aad722":"${ins.aad420}",
		  "aad704":"${ins.aad404}",
		  "aad712":"${ins.aad411}",
		  "aad719":"${ins.aad418}"
	  });
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