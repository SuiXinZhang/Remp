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
        <c:param name="menu" value="ad03"/>
     </c:import>
  <div class="layui-body">
    <!-- 内容主体区域 -->
    <div class="layui-anim layui-anim-scale"
				style="padding: 15px; margin: 30px 80px;">
				<fieldset class="layui-elem-field layui-filed-title" style="margin-top: 20px;">
					<legend>退号查询</legend>
	<form class="layui-form" action="<%=path %>/ad/ad02queryWithdrawOrder.html" method="post">
	<div class="layui-form-item" align="center">
		<div class="layui-inline">
				<label class="layui-form-label">客户名称</label>
				<div class="layui-input-inline">
					<input type="text" name="qaad103" value="${param.qaad103 }" autocomplete="off" class="layui-input">
				</div>
			</div>
			<div class="layui-inline">
				<label class="layui-form-label">退号日期</label>
				<div class="layui-input-inline">
					<input type="text" id="date" name="qaad202" value="${param.qaad202 }" autocomplete="off" class="layui-input">
				</div>
			</div>
			<div class="layui-inline">
	       		<input type="submit" name="next" class="layui-btn layui-btn-normal" value="查询">
	       	</div>
		</div>
	<div id="tableId" style="display: none">
	<table id="idData"  lay-filter="demo">
	<thead>
	  <tr>
	  	<td lay-data="{field:'sort1',width:60}">序号</td>
		<td lay-data="{field:'projectname',width:125}">项目名称</td>
		<td lay-data="{field:'username'}">客户名</td>
		<td lay-data="{field:'userphone'}">实际排号</td>
		<td lay-data="{field:'empname'}">预约日期</td>
		<td lay-data="{field:'style'}">权益人</td>
		<td lay-data="{field:'date',sort:true,width:115}">房间</td>
		<td lay-data="{field:'grade',sort:true,width:100}">应收预约金</td>
		<td lay-data="{field:'state',width:100}">实收预约金</td>
		<td lay-data="{field:'date',sort:true,width:100}">退号日期</td>
		<td lay-data="{field:'season',width:100}">退号原因</td>
	  </tr>
	 </thead>
	 <tbody>
	  	<c:choose>
	     <c:when test="${rows!=null }">
		     <c:forEach items="${rows }" var="ins" varStatus="vs">
	    	   	  <tr>
				    <td>${vs.count }</td>
				    <td>${ins.aad102 }</td>
				    <td>${ins.aad103 }</td>
				    <td>${ins.aad104 }</td>
				    <td>${ins.aad105 }</td>
				    <td>${ins.aad109 }</td>
				    <td>${ins.aad110 }</td>
				    <td>${ins.aad111 }</td>
				    <td>${ins.aad113 }</td>
				    <td>${ins.aad202 }</td>
				    <td>${ins.aad203 }</td>
				  </tr>
		      </c:forEach>
	     </c:when>
	   </c:choose>
	  </tbody>
	</table>
	<input type="hidden" name="aaa101" value="${param.aad101 }">
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
	layui.use('laydate', function(){
		  var laydate = layui.laydate;
		 
		  //执行一个laydate实例
		  laydate.render({
		    elem: '#date'  //指定元素
		  });
		});
</script>
</body>
</html>