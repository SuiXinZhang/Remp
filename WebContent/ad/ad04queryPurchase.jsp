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
        <c:param name="menu" value="ad07"/>
     </c:import>
  <div class="layui-body">
    <!-- 内容主体区域 -->
    <div class="layui-anim layui-anim-scale"
				style="padding: 15px; margin: 30px 40px;">
				<fieldset class="layui-elem-field layui-filed-title" style="margin-top: 20px;">
					<legend>订单记录</legend>
    <form id="myform" class="layui-form" action="<%=path %>/ad/ad04queryPurchase.html" method="post">
    <div class="layui-form-item" align="center">
			<div class="layui-inline">
				<label class="layui-form-label">房间号码</label>
				<div class="layui-input-inline">
					<input type="text" name="qaad403" value="${param.qaad403 }" autocomplete="off" class="layui-input">
				</div>
			</div>
			<div class="layui-inline">
				<label class="layui-form-label">客户名称</label>
				<div class="layui-input-inline">
					<input type="text" name="qaad402" value="${param.qaad402 }" autocomplete="off" class="layui-input">
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
		<td lay-data="{field:'projectname',width:125}">房间</td>
		<td lay-data="{field:'username',width:90}">客户名</td>
		<td lay-data="{field:'userphone',width:100}">订单状态</td>
		<td lay-data="{field:'empname',sort:true,width:100}">签署日期</td>
		<td lay-data="{field:'style',sort:true,width:88}">协议总价</td>
		<td lay-data="{field:'grade',width:100}">业务员</td>
		<td lay-data="{field:'state',width:100}">订单类型</td>
		<td lay-data="{field:'pay',width:100}">付款方式</td>
		<td lay-data="{field:'opt',fixed:'right'}">操作</td>
	  </tr>
	 </thead>
	 <tbody>
	  <c:choose>
	     <c:when test="${rows!=null }">
		     <c:forEach items="${rows }" var="ins" varStatus="vs">
	    	   	  <tr>
				    <td>${vs.count }</td>
				    <td>${ins.aad403}</td>
				    <td>${ins.aad402 }</td>
				    <td>${ins.aad422 }</td>
				    <td>${ins.aad415 }</td>
				    <td>${ins.aad410 }</td>
				    <td>${ins.aad419 }</td>
				    <td>${ins.daad418 }</td>
				    <td>${ins.caad404 }</td>
				    <td>
				    <a class="layui-btn layui-btn-xs layui-btn-normal" href="#" onclick="onSelect('${ins.aad401}')">
				    	<i class="layui-icon layui-icon-edit"></i>查看
				    </a>
				    <c:choose>
				    <c:when test="${ins.aad422=='已激活' }">
				    <a class="layui-btn layui-btn-xs layui-btn-danger layui-btn-disabled" href="#" onclick="">
				    	<i class="layui-icon layui-icon-delete"></i>删除
				    </a>
				    <a class="layui-btn layui-btn-xs layui-btn-disabled" href="#" onclick="">
				    	<i class="layui-icon layui-icon-link"></i>转签约
				    </a>
				    <a class="layui-btn layui-btn-xs layui-btn-disabled" href="#" onclick="">
				    	<i class="layui-icon layui-icon-rmb"></i>生成付款详情
				    </a>
				    </c:when>
				    <c:otherwise>
				    <a class="layui-btn layui-btn-xs layui-btn-danger" href="#" onclick="onDel('${ins.aad401}')">
				    	<i class="layui-icon layui-icon-delete"></i>删除
				    </a>
				    <a class="layui-btn layui-btn-xs" href="#" onclick="onAgree('${ins.aad401}')">
				    	<i class="layui-icon layui-icon-link"></i>转签约
				    </a>
				    <a class="layui-btn layui-btn-xs" href="#" onclick="onReceipt('${ins.aad401}')">
				    	<i class="layui-icon layui-icon-rmb"></i>生成付款详情
				    </a>
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
	function onSelect(vaad401)
    {
  	 var vform = document.getElementById("myform");
  	 vform.action="<%=path%>/ad/ad04findByIdPurchase.html?aad401="+vaad401;
  	 vform.submit();
    }
    function onDel(vaad401)
    {
  	 var vform = document.getElementById("myform");
  	 vform.action="<%=path%>/ad/ad04deleteByIdPurchase.html?aad401="+vaad401;
  	 vform.submit();
    }
    function onReceipt(vaad401)
    {
  	 var vform = document.getElementById("myform");
  	 vform.action="<%=path%>/af/af03turnReceipt.html?aad401="+vaad401;
  	 vform.submit();
    }
    function onAgree(vaad401)
    {
  	 var vform = document.getElementById("myform");
  	 vform.action="<%=path%>/ad/ad07turnAgreement.html?aad401="+vaad401;
  	 vform.submit();
    }
</script>
</body>
</html>