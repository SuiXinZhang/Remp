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
        <c:param name="menu" value="ad11"/>
     </c:import>
  <div class="layui-body">
    <!-- 内容主体区域 -->
    <div class="layui-anim layui-anim-scale"
				style="padding: 15px; margin: 10px 10px;">
				<fieldset class="layui-elem-field layui-filed-title" style="margin-top: 20px;">
					<legend><h2>合同记录</h2></legend>
					<br>
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
		<td lay-data="{field:'userphone',width:120}">签署日期</td>
		<td lay-data="{field:'empname',width:120}">合同总价</td>
		<td lay-data="{field:'style',width:88}">合同币种</td>
		<td lay-data="{field:'date',sort:true,width:115}">业务员</td>
		<td lay-data="{field:'grade',sort:true,width:100}">合同状态</td>
		<td lay-data="{field:'state',width:100}">付款方式</td>
		<td lay-data="{field:'opt',fixed:'right'}">操作</td>
	  </tr>
	 </thead>
	 <tbody>
	  <c:choose>
	     <c:when test="${rows!=null }">
		     <c:forEach items="${rows }" var="ins" varStatus="vs">
	    	   	  <tr>
				    <td>${vs.count }</td>
				    <td>${ins.aad703}</td>
				    <td>${ins.aad702 }</td>
				    <td>${ins.aad716 }</td>
				    <td>${ins.aad711 }</td>
				    <td>${ins.baad712 }</td>
				    <td>${ins.aad720 }</td>
				    <td>${ins.daad719 }</td>
				    <td>${ins.caad704 }</td>
				    <td>
				    <c:choose>
				    <c:when test="${ins.daad719=='作废'}">
				    <a class="layui-btn layui-btn-xs layui-btn-disabled" href="#" onclick="">
				    	<i class="layui-icon layui-icon-edit"></i>查看
				    </a>
				    <a class="layui-btn layui-btn-xs layui-btn-disabled" href="#" onclick="">
				    	<i class="layui-icon layui-icon-link"></i>申请变更
				    </a>
				    <a class="layui-btn layui-btn-xs layui-btn-disabled" href="#" onclick="">
				    	<i class="layui-icon layui-icon-link"></i>生成付款详情
				    </a>
				    <a class="layui-btn layui-btn-xs layui-btn-danger layui-btn-disabled" href="#" onclick="">
				    	<i class="layui-icon layui-icon-close-fill"></i>作废
				    </a>
				    </c:when>
				    <c:otherwise>
				    <a class="layui-btn layui-btn-xs" href="#" onclick="onSelect('${ins.aad701}')">
				    	<i class="layui-icon layui-icon-edit"></i>查看
				    </a>
				    <a class="layui-btn layui-btn-xs" href="#" onclick="onChange('${ins.aad701}')">
				    	<i class="layui-icon layui-icon-link"></i>申请变更
				    </a>
				    <a class="layui-btn layui-btn-xs" href="#" onclick="onReceipt('${ins.aad701}')">
				    	<i class="layui-icon layui-icon-link"></i>生成付款详情
				    </a>
				    <a class="layui-btn layui-btn-xs layui-btn-danger" href="#" onclick="onCancel('${ins.aad701}')">
				    	<i class="layui-icon layui-icon-close-fill"></i>作废
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
	<div class="layui-form-item" align="center">
  		<input class="layui-btn layui-btn-normal" type="submit" name="next" value="生成售后服务"
  	 		formaction="<%=path%>/ae/ae01query.html">
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
  	 vform.action="<%=path%>/af/af03AgreeTurnReceipt.html?aad701="+vaad701;
  	 vform.submit();
    }
</script>
</body>
</html>