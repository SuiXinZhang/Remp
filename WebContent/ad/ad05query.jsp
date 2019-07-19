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
    <form id="myform" action="<%=path %>/ad/ad05query.html" method="post">
	<div class="layui-form-item" align="center">
			<div class="layui-inline">
				<label class="layui-form-label">客户名称</label>
				<div class="layui-input-inline">
					<input type="text" name="qaad508" value="${param.qaad508 }" autocomplete="off" class="layui-input">
				</div>
			</div>
			<div class="layui-inline">
				<label class="layui-form-label">房间号码</label>
				<div class="layui-input-inline">
					<input type="text" name="qaad502" value="${param.qaad502 }" autocomplete="off" class="layui-input">
				</div>
			</div>
	</div>
	<table class="layui-table" lay-even lay-skin="nob">
	  <tr>
	    <td></td>
	  	<td>序号</td>
	  	<td>客户名称</td>
	  	<td>房间</td>
	  	<td>签署日期</td>
	  	<td>失效日期</td>
	  	<td>业务员</td>
	  	<td>预留状态</td>
	  	<td>备注</td>
	  	<td></td>
	  </tr>
	  <c:choose>
	     <c:when test="${rows!=null }">
	         <!-- 显示实际查询到的数据 -->
		     <c:forEach items="${rows }" var="ins" varStatus="vs">
	    	   	  <tr>
				    <td></td>
				    <td>${vs.count }</td>
				    <td><a href="#" onclick="onEdit('${ins.aad501}')">${ins.aad508 }</a></td>
				    <td>${ins.aad502 }</td>
				    <td>${ins.aad503 }</td>
				    <td>${ins.aad504 }</td>
				    <td>${ins.aad505 }</td>
				    <td>${ins.aad507 }</td>
				    <td>${ins.aad506 }</td>
				    <td><a href="#" onclick="onCancel('${ins.aad501}')">取消预留</a></td>
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
	function onEdit(vaad501)
	{
		 var vform = document.getElementById("myform");
		 vform.action="<%=path%>/ad/ad05findById.html?aad501="+vaad501;
		 vform.submit();
	}
	function onCancel(vaad501)
	{
		 var vform = document.getElementById("myform");
		 vform.action="<%=path%>/ad/ad05cancelReserve.html?aad501="+vaad501;
		 vform.submit();
	}
</script>
</body>
</html>