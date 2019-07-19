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
    <form id="myform" class="layui-form" lay action="<%=path %>/ad/ad07queryAgreement.html" method="post">
	<div class="layui-form-item" align="center">
			<div class="layui-inline">
				<label class="layui-form-label">房间号码</label>
				<div class="layui-input-inline">
					<input type="text" name="qaad703" value="${param.qaad703 }" autocomplete="off" class="layui-input">
				</div>
			</div>
			<div class="layui-inline">
				<label class="layui-form-label">客户名称</label>
				<div class="layui-input-inline">
					<input type="text" name="qaad702" value="${param.qaad702 }" autocomplete="off" class="layui-input">
				</div>
			</div>
	</div>
	<table class="layui-table" lay-even lay-skin="nob">
	  <tr>
	    <td></td>
	    <td>序号</td>
	    <td>房间</td>
	    <td>客户名称</td>
	    <td>签署日期</td>
	    <td>合同总价</td>
	    <td>合同币种</td>
	    <td>业务员</td>
	    <td>合同状态</td>
	    <td>付款方式</td>
	    <td></td>
	    <td></td>
	    <td></td>
	  </tr>
	  <c:choose>
	     <c:when test="${rows!=null }">
	         <!-- 显示实际查询到的数据 -->
		     <c:forEach items="${rows }" var="ins" varStatus="vs">
	    	   	  <tr>
				    <td></td>
				    <td>${vs.count }</td>
				    <td>${ins.aad703}</td>
				    <td><a href="#" onclick="onSelect('${ins.aad701}')">${ins.aad702 }</a></td>
				    <td>${ins.aad716 }</td>
				    <td>${ins.aad711 }</td>
				    <td>${ins.baad712 }</td>
				    <td>${ins.aad720 }</td>
				    <td>${ins.daad719 }</td>
				    <td>${ins.caad704 }</td>
				    <td><a href="#" onclick="onCancel('${ins.aad701}')">作废</a></td>
				    <td><a href="#" onclick="onChange('${ins.aad701}')">申请变更</a></td>
				    <td><a href="#" onclick="onReceipt('${ins.aad401}')">生成付款详情</a></td>
				  </tr>
		      </c:forEach>
		      <!-- 补充空行 -->
		      <c:forEach begin="${fn:length(rows)+1 }" step="1" end="6">
			          <tr>
			            <td></td>
			            <td></td>
			            <td></td>
			            <td></td>
			            <td></td>
			            <td></td>
			            <td></td>
			            <td></td>
			            <td></td>
			            <td></td>
			            <td></td>
			            <td></td>
			            <td></td>
			          </tr>
		      </c:forEach>
	     </c:when>
	     <c:otherwise>
	        <c:forEach begin="1" step="1" end="3">
	           <tr>
	             <td></td>
	             <td></td>
	             <td></td>
	             <td></td>
	             <td></td>
	             <td></td>
	             <td></td>
	             <td></td>
	             <td></td>
	             <td></td>
	             <td></td>
	             <td></td>
	           </tr>
	        </c:forEach>
	     </c:otherwise>
	   </c:choose>
	</table>
	<div class="layui-form-item" align="center">
	       <input type="submit" class="layui-btn layui-btn-normal" name="next" value="查询">
	</div>
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
	});
	function onSelect(vaad701)
    {
  	 var vform = document.getElementById("myform");
  	 vform.action="<%=path%>/ad/ad07findByIdAgreement.html?aad701="+vaad701;
  	 vform.submit();
    }
    function onCancel(vaad701)
    {
  	 var vform = document.getElementById("myform");
  	 vform.action="<%=path%>/ad/ad07cancelledAgreement.html?aad701="+vaad701;
  	 vform.submit();
    }
    function onChange(vaad701)
    {
  	 var vform = document.getElementById("myform");
  	 vform.action="<%=path%>/ad/ad06turnApply.html?aad701="+vaad701;
  	 vform.submit();
    }
    function onReceipt(vaad701)
    {
  	 var vform = document.getElementById("myform");
  	 vform.action="<%=path%>/af/af03otherTurnReceipt.html?aad701="+vaad701;
  	 vform.submit();
    }
</script>
</body>
</html>