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
    <form id="myform" lay-filter="myform" class="layui-form" action="<%=path %>/ad/ad06queryApply.html" method="post">
	<div class="layui-form-item" align="center">
			<div class="layui-inline">
				<label class="layui-form-label">申请类型</label>
				<div class="layui-input-inline">
					<select name="qaad602">
						<option value="" selected>不限定</option>
						<option value="01">换房</option>
						<option value="02">退房</option>
					</select>
				</div>
			</div>
			<div class="layui-inline">
				<label class="layui-form-label">申请人</label>
				<div class="layui-input-inline">
					<input type="text" name="qaad605" value="${param.qaad605 }" autocomplete="off" class="layui-input">
				</div>
			</div>
	</div>
	<table class="layui-table" lay-even lay-skin="nob">
	  <tr>
	    <td></td>
	    <td>序号</td>
	    <td>审批状态</td>
	    <td>客户名称</td>
	    <td>房间号</td>
	    <td>申请类型</td>
	    <td>原因分类</td>
	    <td>申请人</td>
	    <td>申请日期</td>
	    <td></td>
	  </tr>
	  <c:choose>
	     <c:when test="${rows!=null }">
	         <!-- 显示实际查询到的数据 -->
		     <c:forEach items="${rows }" var="ins" varStatus="vs">
	    	   	  <tr>
				    <td></td>
				    <td>${vs.count }</td>
				    <td>${ins.aad603}</td>
				    <td>${ins.aad611 }</td>
				    <td>${ins.aad610 }</td>
				    <td>${ins.baad602 }</td>
				    <td>${ins.caad604 }</td>
				    <td>${ins.aad605 }</td>
				    <td>${ins.aad606 }</td>
				    <td><a href="#" onclick="onSelect('${ins.aad601}')">审批</a></td>
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
	  var layer = layui.layer
      ,form = layui.form
	  ,element = layui.element;
	  if("${msg }" != "")
		{
			layer.msg('${msg }');	  
		}
	  form.val('myform',{
		  "qaad602":"${param.qaad602}"
	  });
	});
	function onSelect(vaad601)
    {
  	 var vform = document.getElementById("myform");
  	 vform.action="<%=path%>/ad/ad06findByIdApply.html?aad601="+vaad601;
  	 vform.submit();
    }
</script>
</body>
</html>