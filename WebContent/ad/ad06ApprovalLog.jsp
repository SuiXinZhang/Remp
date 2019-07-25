<!DOCTYPE html>
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
        <c:param name="menu" value="ad14"/>
     </c:import>
  <div class="layui-body">
    <!-- 内容主体区域 -->
    <div class="layui-anim layui-anim-scale"
				style="padding: 15px; margin: 30px 80px;">
				<fieldset class="layui-elem-field layui-filed-title" style="margin-top: 20px;">
					<legend><h2>变更申请日志</h2></legend>
					<br>
    <form id="myform" lay-filter="myform" class="layui-form" action="<%=path %>/ad/ad06queryApproval.html" method="post">
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
			<div class="layui-inline">
	       		<input type="submit" class="layui-btn layui-btn-normal" name="next" value="查询">
	 		</div>
	</div>
	<div id="tableId" style="display: none">
	<table id="idData"  lay-filter="demo">
	<thead>
	  <tr>
	  	<td lay-data="{field:'sort1',width:60}">序号</td>
		<td lay-data="{field:'projectname',width:125}">审批状态</td>
		<td lay-data="{field:'username',width:100}">客户名称</td>
		<td lay-data="{field:'userphone',width:125}">房间号</td>
		<td lay-data="{field:'empname',width:125}">申请类型</td>
		<td lay-data="{field:'style'}">原因分类</td>
		<td lay-data="{field:'date',sort:true,width:115}">申请人</td>
		<td lay-data="{field:'grade',sort:true}">申请日期</td>
		<td lay-data="{field:'date2',sort:true}">审批日期</td>
		<td lay-data="{field:'boss',sort:true}">审批人</td>
	  </tr>
	 </thead>
	 <tbody>
	  <c:choose>
	     <c:when test="${rows!=null }">
		     <c:forEach items="${rows }" var="ins" varStatus="vs">
	    	   	  <tr>
				    <td>${vs.count }</td>
				    <td>${ins.aad603}</td>
				    <td>${ins.aad611 }</td>
				    <td>${ins.aad610 }</td>
				    <td>${ins.baad602 }</td>
				    <td>${ins.caad604 }</td>
				    <td>${ins.aad605 }</td>
				    <td>${ins.aad606 }</td>
				    <td>${ins.aad608 }</td>
				    <td>${ins.aad607 }</td>
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
  </div>
</div>
<script ></script>
<script>
//JavaScript代码区域
	layui.use(['layer', 'form','element','table'], function(){
	  var layer = layui.layer
      ,form = layui.form
	  ,element = layui.element
	  ,table = layui.table;
	  if("${msg }" != "")
		{
			layer.msg('${msg }');	  
		}
	  form.val('myform',{
		  "qaad602":"${param.qaad602}"
	  });
		//转换静态表格
		table.init('demo', {
			limit : 10,
			page : true,
			toolbar : true,
			done : function(res, curr, count) {
				$('#tableId').css('display', 'block');
			}
		});
	});
</script>
</body>
</html>