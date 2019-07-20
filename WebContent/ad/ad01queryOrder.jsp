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
	<form id="myform" lay-filter="myform" action="<%=path %>/ad/ad01queryOrder.html" method="post">
	<div class="layui-form-item" align="center">
			<div class="layui-inline">
				<label class="layui-form-label">客户名称</label>
				<div class="layui-input-inline">
					<input type="text" name="qaad103" value="${param.qaad103 }" autocomplete="off" class="layui-input">
				</div>
			</div>
			<div class="layui-inline">
				<label class="layui-form-label">预约状态</label>
				<div class="layui-input-inline">
					<input type="text" name="qaad116" value="${param.qaad116 }" autocomplete="off" class="layui-input">
				</div>
			</div>
	</div>
	<table class="layui-table" lay-even lay-skin="nob">
	  <tr>
	    <td></td>
	  	<td>序号</td>
	  	<td>项目名称</td>
	  	<td>客户名称</td>
	  	<td>实际排号</td>
	  	<td>预约日期</td>
	  	<td>权益人</td>
	  	<td>房间</td>
	  	<td>应收预约金</td>
	  	<td>实收预约金</td>
	  	<td>备注</td>
	  	<td>预约状态</td>
	  	<td></td>
	  </tr>
	  <c:choose>
	     <c:when test="${rows!=null }">
	         <!-- 显示实际查询到的数据 -->
		     <c:forEach items="${rows }" var="ins" varStatus="vs">
	    	   	  <tr>
				    <td></td>
				    <td>${vs.count }</td>
				    <td>${ins.aad102 }</td>
				    <td><a href="#" onclick="onEdit('${ins.aad101}')">${ins.aad103 }</a></td>
				    <td>${ins.aad104 }</td>
				    <td>${ins.aad105 }</td>
				    <td>${ins.aad109 }</td>
				    <td>${ins.aad110 }</td>
				    <td>${ins.aad111 }</td>
				    <td>${ins.aad113 }</td>
				    <td>${ins.aad115 }</td>
				    <td>${ins.aad116 }</td>
				    <td><a href="#" onclick="onDel('${ins.aad101}')">作废</a></td>
				  </tr>
		      </c:forEach>
		      <!-- 补充空行 -->
		     </c:when>
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
	});
	var count=0;
    function onDel(vaad101)
    {
  	 var vform = document.getElementById("myform");
  	 vform.action="<%=path%>/ad/ad01deleteById.html?aad101="+vaad101;
  	 vform.submit();
    }
    
    function onEdit(vaad101)
    {
  	 var vform = document.getElementById("myform");
  	 vform.action="<%=path%>/ad/ad01findById.html?aad101="+vaad101;
  	 vform.submit();
    }
    
    function onConfirm(vaaa801)
    {
  	 var vform = document.getElementById("myform");
  	 vform.action="<%=path%>/ad/ad03confirm.html?aaa801="+vaaa801;
  	 vform.submit();
    } 
</script>
</body>
</html>