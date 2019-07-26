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
        <c:param name="menu" value="ad05"/>
     </c:import>
  <div class="layui-body">
    <!-- 内容主体区域 -->
    <div class="layui-anim layui-anim-scale"
				style="padding: 15px; margin: 30px 80px;">
				<fieldset class="layui-elem-field layui-filed-title" style="margin-top: 20px;">
					<legend><h2>看房记录</h2></legend>
					<br>
    <form id="myform" class="layui-form" action="<%=path %>/ad/ad03query.html" method="post">
    <div class="layui-form-item" align="center">
			<div class="layui-inline">
				<label class="layui-form-label">客户名称</label>
				<div class="layui-input-inline">
					<input type="text" name="qaad305" value="${param.qaad305 }" autocomplete="off" class="layui-input">
				</div>
			</div>
			<div class="layui-inline">
				<label class="layui-form-label">选房时间</label>
				<div class="layui-input-inline">
					<input type="text" id="date" name="qaad307" value="${param.qaad307 }" autocomplete="off" class="layui-input">

				</div>
			</div>
			<div class="layui-inline">
				<label class="layui-form-label">房间号码</label>
				<div class="layui-input-inline">
					<input type="text" name="qaad302" value="${param.qaad302 }" autocomplete="off" class="layui-input">
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
		<td lay-data="{field:'projectname',width:150}">房间号码</td>
		<td lay-data="{field:'state',width:90}">看房状态</td>
		<td lay-data="{field:'username',width:90}">房间状态</td>
		<td lay-data="{field:'userphone',width:90}">选房单号</td>
		<td lay-data="{field:'emphao',sort:true,width:90}">实际排号</td>
		<td lay-data="{field:'empname',width:90}">客户名</td>
		<td lay-data="{field:'style',width:88}">经办人</td>
		<td lay-data="{field:'date',sort:true,width:115}">选房时间</td>
		<td lay-data="{field:'opt',fixed:'right'}">操作</td>
	  </tr>
	 </thead>
	 <tbody>
	   <c:choose>
	     <c:when test="${rows!=null }">
		     <c:forEach items="${rows }" var="ins" varStatus="vs">
	    	   	  <tr>
				    <td>${vs.count }</td>
				    <td>${ins.aad302 }</td>
				    <td>${ins.aad308 }</td>
				    <td>${ins.caaa805 }</td>
				    <td>${ins.aad303 }</td>
				    <td>${ins.aad304 }</td>
				    <td>${ins.aad305 }</td>
				    <td>${ins.aad306 }</td>
				    <td>${ins.aad307 }</td>
				    <td>
				    <c:choose>
				    <c:when test="${ins.aad308=='无效'}">
				    <a class="layui-btn layui-btn-xs layui-btn-disabled" href="#"  onclick="">
						<i class="layui-icon layui-icon-close-fill"></i>取消选房
					</a>
					<a class="layui-btn layui-btn-xs layui-btn-disabled" href="#"  onclick="">
						<i class="layui-icon layui-icon-link"></i>转认购
					</a>
					<a class="layui-btn layui-btn-xs layui-btn-disabled" href="#"  onclick="">
						<i class="layui-icon layui-icon-link"></i>转签约
					</a>
				    </c:when>
				    <c:otherwise>
				    <c:if test="${ins.aad304=='0000' }">
				    <a class="layui-btn layui-btn-xs layui-btn-danger" href="#" onclick="onCancelReserve('${ins.aad301}')">
				    	<i class="layui-icon layui-icon-close-fill"></i>取消选房
				    </a>
				    <a class="layui-btn layui-btn-xs" href="#" onclick="onSubscribe('${ins.aad301}')">
				    	<i class="layui-icon layui-icon-link"></i>转认购
				    </a>
				    <a class="layui-btn layui-btn-xs" href="#" onclick="onSigning('${ins.aad301}')">
				    	<i class="layui-icon layui-icon-link"></i>转签约
				    </a>
				    </c:if>
				    <c:if test="${ins.aad304!='0000' }">
				    <a class="layui-btn layui-btn-xs layui-btn-danger" href="#" onclick="onCancel('${ins.aad301}')">
				    	<i class="layui-icon layui-icon-close-fill"></i>取消选房
				    </a>
				    <a class="layui-btn layui-btn-xs" href="#" onclick="onSubscribe('${ins.aad301}')">
				    	<i class="layui-icon layui-icon-link"></i>转认购
				    </a>
				    <a class="layui-btn layui-btn-xs" href="#" onclick="onSigning('${ins.aad301}')">
				    	<i class="layui-icon layui-icon-link"></i>转签约
				    </a>
				    </c:if>
				    </c:otherwise>
				    </c:choose>
				    </td>
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
	function onCancel(vaad301)
    {
  	 var vform = document.getElementById("myform");
  	 vform.action="<%=path%>/ad/ad03cancel.html?aad301="+vaad301;
  	 vform.submit();
    }
	function onSubscribe(vaad301)
	{
		var vform = document.getElementById("myform");
	  	vform.action="<%=path%>/ad/ad04subscribePurchase.html?aad301="+vaad301;
	  	vform.submit();
	}
	function onSigning(vaad301)
	{
		var vform = document.getElementById("myform");
	  	vform.action="<%=path%>/ad/ad07roomTurn.html?aad301="+vaad301;
	  	vform.submit();
	}
	function onCancelReserve(vaad301)
    {
  	 var vform = document.getElementById("myform");
  	 vform.action="<%=path%>/ad/ad03cancelReserve.html?aad301="+vaad301;
  	 vform.submit();
    }
</script>
</body>
</html>