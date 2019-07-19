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
    <div style="padding: 150px;">
    <form lay-filter="myform" class="layui-form" action="<%=path %>/ad/ad04addPurchase.html" method="post">
     
     <div class="layui-form-item" align="left">
			<div class="layui-inline">
				<label class="layui-form-label">客户名称</label>
				<div class="layui-input-inline">
					<input type="text" name="aad402" required lay-verify="true" value="${ins.aad305 }"
					 autocomplete="off" class="layui-input">
				</div>
			</div>
			<div class="layui-inline">
				<label class="layui-form-label">联系电话</label>
				<div class="layui-input-inline">
					<input type="text" name="aad421" required lay-verify="true" value="${ins.aac407 }"
					autocomplete="off" class="layui-input">
				</div>
			</div>
			<div class="layui-inline">
				<label class="layui-form-label">房间号码</label>
				<div class="layui-input-inline">
					<input type="text" name="aad403" required lay-verify="true" value="${ins.aad302 }"
					autocomplete="off" class="layui-input">
				</div>
			</div>
	</div>
	<div class="layui-form-item" align="left">
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
	<div class="layui-form-item" align="left">
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
	<div class="layui-form-item" align="left">
			<div class="layui-inline">
				<label class="layui-form-label">计价方式</label>
				<div class="layui-input-inline">
					<input type="radio" name="aad420" value="01" title="按建筑面积" checked>
					<input type="radio" name="aad420" value="02" title="按套内面积"> 
				</div>
			</div>
			<div class="layui-inline">
				<label class="layui-form-label">付款方式</label>
				<div class="layui-input-inline">
					<select name="aad404">
						<option value="01" selected>商业贷款</option>
						<option value="02">全款</option>
					</select>
				</div>
			</div>
			<div class="layui-inline">
				<label class="layui-form-label">折扣</label>
				<div class="layui-input-inline">
					<input type="number" name="aad405" required lay-verify="true"
					    step="0.1" autocomplete="off" class="layui-input">
				</div>
			</div>
	</div>
	<div class="layui-form-item" align="left">
			<div class="layui-inline">
				<label class="layui-form-label">建筑成交单价</label>
				<div class="layui-input-inline">
					<input type="number" name="aad406" required lay-verify="true" value="${ins.aad406 }"
						step="0.01"	autocomplete="off" class="layui-input">
				</div>
			</div>
			<div class="layui-inline">
				<label class="layui-form-label">套内成交单价</label>
				<div class="layui-input-inline">
					<input type="number" name="aad407" required lay-verify="true" value="${ins.aad407 }"
					    step="0.01" autocomplete="off" class="layui-input">
				</div>
			</div>
			<div class="layui-inline">
				<label class="layui-form-label">折扣说明</label>
				<div class="layui-input-inline">
					<input type="text" name="aad408" required lay-verify="true" value="${ins.aad408 }"
					 autocomplete="off" class="layui-input">
				</div>
			</div>
	</div>
	<div class="layui-form-item" align="left">
			<div class="layui-inline">
				<label class="layui-form-label">房间总价</label>
				<div class="layui-input-inline">
					<input type="number" name="aad409" required lay-verify="true" value="${ins.aad409 }"
						step="0.01"	autocomplete="off" class="layui-input">
				</div>
			</div>
			<div class="layui-inline">
				<label class="layui-form-label">协议总价(人民币)</label>
				<div class="layui-input-inline">
					<input type="number" name="aad410" required lay-verify="true" value="${ins.aad410 }"
					    step="0.01" autocomplete="off" class="layui-input">
				</div>
			</div>
			<div class="layui-inline">
				<label class="layui-form-label">协议币种</label>
				<div class="layui-input-inline">
					<select name="aad411">
						<option value="01" selected>人民币</option>
						<option value="02">美元</option>
						<option value="03">英镑</option>
						<option value="04">日元</option>
						<option value="05">欧元</option>
					</select>
				</div>
			</div>
	</div>
	<div class="layui-form-item" align="left">
			<div class="layui-inline">
				<label class="layui-form-label">协议汇率</label>
				<div class="layui-input-inline">
					<input type="number" name="aad412" required lay-verify="true" value="${ins.aad412 }"
						step="0.01"	autocomplete="off" class="layui-input">
				</div>
			</div>
			<div class="layui-inline">
				<label class="layui-form-label">应收定金</label>
				<div class="layui-input-inline">
					<input type="number" name="aad413" required lay-verify="true" value="${ins.aad413 }"
					    step="0.01" autocomplete="off" class="layui-input">
				</div>
			</div>
			<div class="layui-inline">
				<label class="layui-form-label">协议总价</label>
				<div class="layui-input-inline">
					<input type="number" name="aad414" required lay-verify="true" value="${ins.aad414 }"
					    step="0.01" autocomplete="off" class="layui-input">
				</div>
			</div>
	</div>
	<div class="layui-form-item" align="left">
			<div class="layui-inline">
				<label class="layui-form-label">签署日期</label>
				<div class="layui-input-inline">
					<input type="text" name="aad415" id="date1" required lay-verify="true" value="${ins.aad415 }"
					 autocomplete="off" class="layui-input">
				</div>
			</div>
			<div class="layui-inline">
				<label class="layui-form-label">失效日期</label>
				<div class="layui-input-inline">
					<input type="text" name="aad416" id="date2" required lay-verify="true" value="${ins.aad416 }"
							 autocomplete="off" class="layui-input">
				</div>
			</div>
			<div class="layui-inline">
				<label class="layui-form-label">订单类型</label>
				<div class="layui-input-inline">
					<select name="aad418">
						<option value="01" selected>认购</option>
						<option value="02">小订</option>
						<option value="03">签约</option>
					</select>
				</div>
			</div>
	</div>
	<div class="layui-form-item" align="left">
			<div class="layui-inline">
				<label class="layui-form-label">推荐人</label>
				<div class="layui-input-inline">
					<input type="text" name="aad417" required lay-verify="true" value="${ins.aad417 }"
					 autocomplete="off" class="layui-input">
				</div>
			</div>
			<div class="layui-inline">
				<label class="layui-form-label">业务员</label>
				<div class="layui-input-inline">
					<input type="text" name="aad419" required lay-verify="true" value="${ins.aad419 }"
					 autocomplete="off" class="layui-input">
				</div>
			</div>
	</div>
    
	<div class="layui-form-item" align="center">    
	       <input type="submit" name="next" value="${empty param.aad401?'添加':'修改'}" class="layui-btn layui-btn-normal"
	              formaction="${empty param.aad401?'ad/ad04addPurchase':'ad/ad04modifyPurchase'}.html">
	       <input type="submit" name="next" value="查看" class="layui-btn layui-btn-normal"
	          formnovalidate="formnovalidate" formaction="ad04queryPurchase.html">
	       <input type="submit" name="next" value="返回" formaction="${empty param.aad401?'ad03query':'ad04queryPurchase'}.html"
	         formnovalidate="formnovalidate" class="layui-btn layui-btn-normal">
	       <input type="submit" name="next" value="转签约" class="layui-btn layui-btn-normal"
	          formnovalidate="formnovalidate" formaction="ad07turnAgreement.html">
	       <input type="submit" name="next" value="生成付款详情" class="layui-btn layui-btn-normal"
	          formnovalidate="formnovalidate" formaction="<%=path %>/af/af03turnReceipt.html">
	</div>
	<input type="hidden" name="aac401" value="${ins.aac401 }">
    <input type="hidden" name="aad401" value="${param.aad401 }">
    <input type="hidden" name="aad301" value="${ins.aad301 }">
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
	  layer.msg('Hello World');
	  form.val('myform',{
		  "aad420":"${ins.aad420}",
		  "aad404":"${ins.aad404}",
		  "aad411":"${ins.aad411}",
		  "aad418":"${ins.aad418}"
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
</script>
</body>
</html>