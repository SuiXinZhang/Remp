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
	<div id="tableId" style="display: none">
	<table id="idData"  lay-filter="demo">
	<thead>
	  <tr>
	  	<td lay-data="{field:'sort1',width:60}">序号</td>
		<td lay-data="{field:'projectname',width:125}">客户名称</td>
		<td lay-data="{field:'username'}">房间</td>
		<td lay-data="{field:'userphone'}">签署日期</td>
		<td lay-data="{field:'empname'}">失效日期</td>
		<td lay-data="{field:'style',width:88}">业务员</td>
		<td lay-data="{field:'date',sort:true,width:115}">预留状态</td>
		<td lay-data="{field:'grade',sort:true,width:100}">备注</td>
		<td lay-data="{field:'opt',fixed:'right',width:100}">操作</td>
	  </tr>
	 </thead>
	 <tbody>
	  <c:choose>
	     <c:when test="${rows!=null }">
	         <!-- 显示实际查询到的数据 -->
		     <c:forEach items="${rows }" var="ins" varStatus="vs">
	    	   	  <tr>
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
	     </c:when>
	   </c:choose>
	   </tbody>
	  </table>
	  <div class="layui-form-item" align="center">
	       <input type="submit" class="layui-btn layui-btn-normal" name="next" value="查询">
	  </div>
	  </div>
</form>
    </div>
  </div>
  
  <div class="layui-footer">
    <!-- 底部固定区域 -->
  </div>
</div>
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