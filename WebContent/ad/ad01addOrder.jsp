<%@ page language="java" pageEncoding="GBK"%>
<%@include file="/base/taglib.jsp" %>
<html>
<head>
	<jsp:include   page="/base/head.jsp"/>
<script>
     //JavaScript代码区域	
	//一般直接写在一个js文件中
	layui.use(['layer', 'form','element'], function(){
	  var layer = layui.layer
	  ,form = layui.form;
	  var element = layui.element();
	  layer.msg('Hello World');
	  form.val('myform',{
		  "aad112":"${ins.aad112}",
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
		  laydate.render({
			elem: '#date3'  //指定元素
			  });
		});
</script>
</head>
<body class="layui-layout-body">
<div class="layui-layout layui-layout-admin">
  	<jsp:include   page="/base/header.jsp"/>
	<jsp:include   page="/ad/menu.jsp"/>
  <div class="layui-body">
    <!-- 内容主体区域 -->
    <div style="padding: 150px;font-size: 16;">
	<form lay-filter="myform" class="layui-form" action="<%=path %>/ad/ad01addOrder.html" method="post">

	    <div class="layui-form-item" align="left">
			<div class="layui-inline">
				<label class="layui-form-label">项目名称</label>
				<div class="layui-input-inline">
					<input type="text" name="oaad102" required lay-verify="true" value="${ins.aad102 }"
					 autocomplete="off" class="layui-input">
				</div>
			</div>
			<div class="layui-inline">
				<label class="layui-form-label">客户名称</label>
				<div class="layui-input-inline">
					<input type="text" name="oaad103" required lay-verify="true" value="${ins.aad103 }"
							 autocomplete="off" class="layui-input">
				</div>
			</div>
			<div class="layui-inline">
				<label class="layui-form-label">预约日期</label>
				<div class="layui-input-inline">
					<input type="text" name="oaad105" required lay-verify="true" value="${ins.aad105 }"
					    id="date1" autocomplete="off" class="layui-input">
				</div>
			</div>
		</div>
		<div class="layui-form-item" align="left">
			<div class="layui-inline">
				<label class="layui-form-label">失效日期</label>
				<div class="layui-input-inline">
					<input type="text" name="oaad106" required lay-verify="true" value="${ins.aad106 }"
						id="date2" autocomplete="off" class="layui-input">
				</div>
			</div>
			<div class="layui-inline">
				<label class="layui-form-label">房间</label>
				<div class="layui-input-inline">
					<input type="text" name="oaad110" required lay-verify="true" value="${ins.aad110 }"
					    autocomplete="off" class="layui-input">
				</div>
			</div>
			<div class="layui-inline">
				<label class="layui-form-label">应收预约金</label>
				<div class="layui-input-inline">
					<input type="number" step="0.01" name="oaad111" required lay-verify="true" 
					     value="${ins.aad111 }" autocomplete="off" class="layui-input">
				</div>
			</div>
		</div>
		<div class="layui-form-item" align="left">
			<div class="layui-inline">
				<label class="layui-form-label">币种</label>
				<div class="layui-input-inline">
					<select name="oaad112">
						<option value="01" selected>人民币</option>
						<option value="02">美元</option>
						<option value="03">英镑</option>
						<option value="04">日元</option>
						<option value="05">欧元</option>
					</select>
				</div>
			</div>
			<div class="layui-inline">
				<label class="layui-form-label">实收预约金</label>
				<div class="layui-input-inline">
					<input type="number" step="0.01" name="oaad113" required lay-verify="true" 
					 value="${ins.aad113 }" autocomplete="off" class="layui-input">
				</div>
			</div>
			<div class="layui-inline">
				<label class="layui-form-label">权益人</label>
				<div class="layui-input-inline">
					<input type="text" name="oaad109" required lay-verify="true" value="${ins.aad109 }"
							 autocomplete="off" class="layui-input">
				</div>
			</div>
		</div>
		<div class="layui-form-item" align="left">
			<div class="layui-inline">
				<label class="layui-form-label">业务员</label>
				<div class="layui-input-inline">
					<input type="text" name="oaad114" required lay-verify="true" value="${ins.aad114 }"
					 autocomplete="off" class="layui-input">
				</div>
			</div>
			<div class="layui-inline">
				<label class="layui-form-label">备注</label>
				<div class="layui-input-inline">
					<input type="text" name="oaad115" required lay-verify="true" value="${ins.aad115 }"
							 autocomplete="off" class="layui-input">
				</div>
			</div>
			<c:if test="${!empty param.aad101 }">
				<div class="layui-inline">
				<label class="layui-form-label">实际排号</label>
					<div class="layui-input-inline">
						<input type="text" name="oaad104" value="${ins.aad104 }"
							 autocomplete="off" class="layui-input">
					</div>
				</div>
			</c:if>
		</div>
		<div class="layui-form-item" align="left">
			<c:if test="${!empty param.aad101 }">
			<div class="layui-inline">
				<label class="layui-form-label">项目排号</label>
					<div class="layui-input-inline">
						<input type="text" name="oaad107" value="${ins.aad107 }"
							 autocomplete="off" class="layui-input">
					</div>
				</div>
			<div class="layui-inline">
				<label class="layui-form-label">房间排号</label>
					<div class="layui-input-inline">
						<input type="text" name="oaad108" value="${ins.aad108 }"
							 autocomplete="off" class="layui-input">
					</div>
			</div>
				<div class="layui-inline">
				<label class="layui-form-label">退号日期</label>
					<div class="layui-input-inline">
						<input type="text" id="date3" name="aad202" value="${ins.aad202 }"
							 autocomplete="off" class="layui-input">
					</div>
				</div>
			</c:if>
		</div>
		<div class="layui-form-item" align="left">
			<c:if test="${!empty param.aad101 }">
				<div class="layui-inline">
				<label class="layui-form-label">退号原因</label>
					<div class="layui-input-inline">
						<input type="text" name="aad203" value="${ins.aad203 }"
							 autocomplete="off" class="layui-input">
					</div>
				</div>
			</c:if>
		</div>
       <div class="layui-form-item" align="center">
       <input type="submit" name="next" value="${empty param.aad101?'添加':'修改'}" class="layui-btn layui-btn-normal"
              formaction="${empty param.aad101?'ad01addOrder':'ad01modifyOrder'}.html">
       <input type="submit" name="next" value="${empty param.aad101?'查看':'返回' }" 
              formaction="<%=path%>/ad/ad01queryOrder.html" class="layui-btn layui-btn-normal"
              formnovalidate="formnovalidate">
       <input type="submit" name="text" value="退号"  class="layui-btn layui-btn-normal"
              formaction="<%=path%>/ad/ad02addWithdrawOrder.html">
       <input type="submit" name="text" value="生成付款详情" class="layui-btn layui-btn-normal"
         	  formaction="<%=path%>/af/af03otherTurnReceipt.html?add101=${param.aad101 }" formnovalidate="formnovalidate">
       </div>
<input type="hidden" name="aad101" value="${param.aad101 }">
<input type="hidden" name="oaac401" value="${ins.aac401 }">
</form>
    </div>
  </div>
  
  <div class="layui-footer">
    <!-- 底部固定区域 -->
    ? layui.com - 底部固定区域
  </div>
</div>
</body>
</html>