<%@ page language="java" pageEncoding="GBK"%>
<%@include file="/base/taglib.jsp" %>
<html>
<head>
	<jsp:include   page="/base/head.jsp"/>
</head>
<body class="layui-layout-body">
<div class="layui-layout layui-layout-admin">
  	<jsp:include   page="/base/header.jsp"/>
	<jsp:include   page="/af/menu.jsp"/>
  <div class="layui-body">
    <!-- 内容主体区域 -->
    <div style="padding: 15px;">
    <form class="layui-form" lay-filter="myform" action="<%=path %>/af/af03add.html" method="post">
    票据管理
    <div class="layui-form-item" align="center">
			<div class="layui-inline">
				<label class="layui-form-label">项目名称</label>
				<div class="layui-input-inline">
					<%-- <input type="text" name="aaf303" required lay-verify="true" value="${ins.aaf303 }"
					 autocomplete="off" class="layui-input"> --%>
					 <select name="aaf303" required>
					    <c:forEach items='<%=session.getAttribute("prjs")%>' var="ins">
					    	<option value="${ins.aaa202 }">${ins.aaa202 }</option>
					    </c:forEach>
					</select>
				</div>
			</div>
			<div class="layui-inline">
				<label class="layui-form-label">客户名称</label>
				<div class="layui-input-inline">
					<input type="text" name="aaf302" required lay-verify="true" value="${ins.aad403 }"
					 autocomplete="off" class="layui-input">
				</div>
			</div>
	</div>
	<div class="layui-form-item" align="center">
			<div class="layui-inline">
				<label class="layui-form-label">票据编号</label>
				<div class="layui-input-inline">
					<input type="text" name="aaf304" required lay-verify="true" value="${ins.aaf304 }"
					 autocomplete="off" class="layui-input">
				</div>
			</div>
			<div class="layui-inline">
				<label class="layui-form-label">交款人</label>
				<div class="layui-input-inline">
					<input type="text" name="aaf305" required lay-verify="true" value="${ins.aaf305 }"
					 autocomplete="off" class="layui-input">
				</div>
			</div>
	</div>
	<div class="layui-form-item" align="center">
			<div class="layui-inline">
				<label class="layui-form-label">开票人</label>
				<div class="layui-input-inline">
					<input type="text" name="aaf306" required lay-verify="true" value="${ins.aaf306 }"
					 autocomplete="off" class="layui-input">
				</div>
			</div>
			<div class="layui-inline">
				<label class="layui-form-label">开票日期</label>
				<div class="layui-input-inline">
					<input type="text" name="aaf307" id="date1" required lay-verify="true" value="${ins.aaf307 }"
					 autocomplete="off" class="layui-input">
				</div>
			</div>
	</div>
	<div class="layui-form-item" align="center">
			<div class="layui-inline">
				<label class="layui-form-label">票据类型</label>
				<div class="layui-input-inline">
					<input type="radio" name="aaf308" value="收据" title="收据" checked>
					<input type="radio" name="aaf308" value="发票" title="发票">
					<input type="radio" name="aaf308" value="无票据" title="无票据"> 
				</div>
			</div>
			<div class="layui-inline">
				<label class="layui-form-label">票据状态</label>
				<div class="layui-input-inline">
					<input type="text" name="aaf309" required lay-verify="true" value="${ins.aaf309 }"
					 autocomplete="off" class="layui-input">
				</div>
			</div>
	</div>
	<div class="layui-form-item" align="center">
			<div class="layui-inline">
				<label class="layui-form-label">审核人</label>
				<div class="layui-input-inline">
					<input type="text" name="aaf310" required lay-verify="true" value="${ins.aaf310 }"
					 autocomplete="off" class="layui-input">
				</div>
			</div>
			<div class="layui-inline">
				<label class="layui-form-label">审核日期</label>
				<div class="layui-input-inline">
					<input type="text" name="aaf311" id="date2" required lay-verify="true" value="${ins.aaf311 }"
					 autocomplete="off" class="layui-input">
				</div>
			</div>
	</div>
	<div class="layui-form-item" align="center">
			<div class="layui-inline">
				<label class="layui-form-label">审核人编号</label>
				<div class="layui-input-inline">
					<input type="text" name="aaf312" required lay-verify="true" value="${ins.aaf312 }"
					 autocomplete="off" class="layui-input">
				</div>
			</div>
	</div>
<div id="tableId" style="">
<table id="idData" class="layui-table"  lay-filter="demo">
	<thead>
	<tr>
	<td lay-data="{field:'projectname',width:125}">款项类型</td>
	<td lay-data="{field:'username'}">款项名称</td>
	<td lay-data="{field:'userphone'}">金额</td>
	<td lay-data="{field:'empname'}">币种</td>
	<td lay-data="{field:'style'}">汇率</td>
	<td lay-data="{field:'date'}">折人民币金额</td>
	<td lay-data="{field:'grade'}">支付方式</td>
	<td lay-data="{field:'state'}">备注</td>
	</tr>
	</thead>
	<tbody>
	<tr>
	<td><e:select name="aaf403" value="非贷款类房款:非贷款类房款,贷款类房款:贷款类房款,全款:全款,其它:其它,"/></td>
	<td><e:select name="aaf409" value="定金:定金,预约金:预约金,房款:房款"/></td>
	<td><e:number step="0.01" name="aaf404" defval="${ins.aad413 }"/></td>
	<td><e:select name="aaf405" value="人民币:01,美元:02,英镑:03,日元:04,欧元:05"/></td>
	<td><e:number step="0.01" name="aaf410"/></td>
	<td><e:number step="0.01" name="aaf406"/></td>
	<td><e:select value="现金:现金,银行卡:银行卡,第三方支付:第三方支付" name="aaf407"/></td>
	<td><e:text name="aaf408"/></td>
	</tr>
	</tbody>
</table>
	<div class="layui-form-item" align="center">
		<input type="submit" name="text" value="${empty param.aaf301?'添加':'修改' }"
		 class="layui-btn layui-btn-normal" formaction="${empty param.aaf301?'af03add':'af03modify' }.html">
		<input type="submit" name="text" value="查看" class="layui-btn layui-btn-normal"
		 formnovalidate="formnovalidate" formaction="<%=path%>/af03query.html">
	</div>
<input type="hidden" name="aaf301" value="${param.aaf301 }">
</div>
</form>
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
	  var element = layui.element;
	  var layer = layui.layer
	  ,form = layui.form
	  ,table = layui.table;
	  if("${msg }" != "")
	  {
		  layer.msg("${msg }");
	  }
		
	  form.val('myform',{
		  "aaf308":"${ins.aaf308}",
		  "aaf303":"${ins.aaf303}"
	  });
	});
	layui.use('laydate', function(){
		  var laydate = layui.laydate;
		 
		  //执行一个laydate实例
		  laydate.render({
		    elem: '#date1'  //指定元素
		  });
		  laydate.render({
			elem: '#date2'  //指定元素
			  });
		});
</script>
</body>
</html>