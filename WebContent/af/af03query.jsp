<%@ page language="java" pageEncoding="GBK"%>
<%@include file="/base/taglib.jsp" %>
<html>
<head>
	<jsp:include   page="/base/head.jsp"/>
</head>
<body class="layui-layout-body">
<div class="layui-layout layui-layout-admin">
  	<jsp:include   page="/base/header.jsp"/>
	<c:import url="/ad/menu.jsp">
        <c:param name="menu" value="af03"/>
     </c:import>
  <div class="layui-body">
    <!-- 内容主体区域 -->
    <div class="layui-anim layui-anim-scale"
				style="padding: 15px; margin: 30px 80px;">
				<fieldset class="layui-elem-field layui-filed-title" style="margin-top: 20px;">
					<legend><h2>预收款记录</h2></legend>
					<br>
    <form id="myform" lay-filter="myform" class="layui-form" action="<%=path %>/af/af03query.html" method="post">
	<div class="layui-form-item" align="center">
			<div class="layui-inline">
				<label class="layui-form-label">交款人</label>
				<div class="layui-input-inline">
					<input type="text" name="qaaf305" value="${param.qaaf305 }" autocomplete="off" class="layui-input">
				</div>
			</div>
			<div class="layui-inline">
				<label class="layui-form-label">房间名称</label>
				<div class="layui-input-inline">
					<input type="text" name="qaaf302" value="${param.qaaf302 }" autocomplete="off" class="layui-input">
				</div>
			</div>
			<div class="layui-inline">
	       		<input type="submit" class="layui-btn layui-btn-normal" name="next" value="查询">
	  		</div>
	</div>
	<div id="tableId" style="display: none">
	<table  lay-filter="demo">
	<thead>
	  <tr>
	  	<td lay-data="{field:'sort1',width:60}">序号</td>
		<td lay-data="{field:'projectname',width:125}">业务办理日期</td>
		<td lay-data="{field:'username',width:150}">交款人</td>
		<td lay-data="{field:'userphone',width:150}">房间</td>
		<td lay-data="{field:'style',width:100}">币种</td>
		<td lay-data="{field:'empname'}">折人民币金额</td>
		<td lay-data="{field:'date',sort:true,width:115}">票据类型</td>
		<td lay-data="{field:'grade',sort:true,width:100}">票据编号</td>
		<td lay-data="{field:'opt',fixed:'right'}">操作</td>
	  </tr>
	  </thead>
	  <tbody>
	  <c:choose>
	     <c:when test="${rows!=null }">
	         <!-- 显示实际查询到的数据 -->
		     <c:forEach items="${rows }" var="ins" varStatus="vs">
	    	   	  <tr>
				    <td>${vs.count }</td>
				    <td>${ins.aaf311 }</td>
				    <td>${ins.aaf305 }</td>
				    <td>${ins.aaf302 }</td>
				    <td>${ins.aaf405 }</td>
				    <td>${ins.aaf406 }</td>
				    <td>${ins.aaf308 }</td>
				    <td>${ins.aaf304 }</td>
				    <td>
				    	<a class="layui-btn layui-btn-xs" href="#" onclick="onEdit('${ins.aaf301}')">
				    		<i class="layui-icon layui-icon-edit"></i>查看
				    	</a>
				    </td>
				  </tr>
		      </c:forEach>
		      </c:when>
	   </c:choose>
	   </tbody>
	  </table>
	  
	  <table lay-filter="demo2">
	  <thead>
	  <tr>
	  	<td lay-data="{field:'sort1',width:60}">序号</td>
		<td lay-data="{field:'projectname',width:125}">款项类型</td>
		<td lay-data="{field:'username',width:150}">款项名称</td>
		<td lay-data="{field:'style',width:150}">金额</td>
		<td lay-data="{field:'userphone',width:100}">币种</td>
		<td lay-data="{field:'empname'}">折人民币金额</td>
		<td lay-data="{field:'date',sort:true}">票据类型</td>
		<td lay-data="{field:'grade',sort:true}">票据编号</td>
	  </tr>
	  </thead>
	  <tbody>
	  <c:choose>
	     <c:when test="${rows!=null }">
	         <!-- 显示实际查询到的数据 -->
		     <c:forEach items="${rows }" var="ins" varStatus="vs">
	    	   	  <tr>
				    <td>${vs.count }</td>
				    <td>${ins.aaf403 }</td>
				    <td>${ins.aaf409 }</td>
				    <td>${ins.aaf404 }</td>
				    <td>${ins.aaf405 }</td>
				    <td>${ins.aaf406 }</td>
				    <td>${ins.aaf308 }</td>
				    <td>${ins.aaf402 }</td>
				  </tr>
		      </c:forEach>
		      </c:when>
	   </c:choose>
	   </tbody>
	  </table>
	  </div>
</form>
</fieldset>
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
	layui.use(['layer', 'form','element','table'], function(){
	  var element = layui.element;
	  var layer = layui.layer
	  ,form = layui.form
	  ,table = layui.table;
	  if("${msg }" != "")
	  {
		  layer.msg("${msg }");
	  }
		//转换静态表格
		table.init('demo', {
			limit : 10,
			page : true,
			toolbar : true
		});
		//转换静态表格
		table.init('demo2', {
			limit : 10,
			page : true,
			toolbar : true,
			done : function(res, curr, count) {
				$('#tableId').css('display', 'block');
			}
		});
	});
	function onEdit(vaaf301)
	{
		 var vform = document.getElementById("myform");
		 vform.action="<%=path%>/af/af03findById.html?aaf301="+vaaf301;
		 vform.submit();
	}
</script>
</body>
</html>