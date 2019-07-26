<%@ page language="java" pageEncoding="GBK"%>
<%@include file="/base/taglib.jsp" %>
<html>
<head>
	<jsp:include   page="/base/head.jsp"/>
</head>
<body class="layui-layout-body">
<div class="layui-layout layui-layout-admin">
  	<jsp:include   page="/base/header.jsp"/>
	<c:import url="/af/menu.jsp">
        <c:param name="menu" value="af04"/>
     </c:import>
  <div class="layui-body">
    <!-- 内容主体区域 -->
    <div class="layui-anim layui-anim-scale" style="padding: 15px; margin:50px 100px;">
    <fieldset class="layui-elem-field">
 	<legend style="color:black"><h2>楼款详情</h2></legend>
  		<div class="layui-field-box">
    <form class="layui-form" lay-filter="myform" action="<%=path %>/af/af03add.html" method="post">
    <div class="layui-form-item" align="center">
			<div class="layui-inline">
				<label class="layui-form-label">
					<i class="layui-icon layui-icon-face-smile" style="font-size: 20px; color: black;"></i>
					项目名称
				</label>
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
				<label class="layui-form-label">
					<i class="layui-icon layui-icon-home" style="font-size: 20px; color: black;"></i>
					房间号码
				</label>
				<div class="layui-input-inline">
					<input id="room" type="text" name="aaf302" required lay-verify="true" value="${ins.aad703 }"
					   onclick="selectRoom()" readonly="readonly" class="layui-input">
					<input id="roomNo" type="hidden" name="aaa801" value="${ins.aaa801 }">
				</div>
			</div>
			<div class="layui-inline">
				<label class="layui-form-label">
					<i class="layui-icon layui-icon-release" style="font-size: 20px; color: black;"></i>
					票据编号
				</label>
				<div class="layui-input-inline">
					<input type="text" name="aaf304" required lay-verify="true" value="${ins.aaf304 }"
					 autocomplete="off" class="layui-input">
				</div>
			</div>
	</div>
	<div class="layui-form-item" align="center">
			<div class="layui-inline">
				<label class="layui-form-label">
					<i class="layui-icon layui-icon-username" style="font-size: 20px; color: black;"></i>
					交&ensp;款&ensp;人
				</label>
				<div class="layui-input-inline">
					<input type="text" name="aaf305" required lay-verify="true" value="${ins.aaf305 }"
					 autocomplete="off" class="layui-input">
				</div>
			</div>
			<div class="layui-inline">
				<label class="layui-form-label">
					<i class="layui-icon layui-icon-user" style="font-size: 20px; color: black;"></i>
					开&ensp;票&ensp;人
				</label>
				<div class="layui-input-inline">
					<input type="text" name="aaf306" required lay-verify="true" value="${ins.aaf306 }"
					 autocomplete="off" class="layui-input">
				</div>
			</div>
			<div class="layui-inline">
				<label class="layui-form-label">
					<i class="layui-icon layui-icon-date" style="font-size: 20px; color: black;"></i>
					开票日期
				</label>
				<div class="layui-input-inline">
					<input type="text" name="aaf307" id="date1" required lay-verify="true" value="${ins.aaf307 }"
					 autocomplete="off" class="layui-input">
				</div>
			</div>
	</div>
	<div class="layui-form-item" align="center">
			<div class="layui-inline">
				<label class="layui-form-label">
					<i class="layui-icon layui-icon-tips" style="font-size: 20px; color: black;"></i>
					票据状态
				</label>
				<div class="layui-input-inline">
					<input type="text" name="aaf309" required lay-verify="true" value="${ins.aaf309 }"
					 autocomplete="off" class="layui-input">
				</div>
			</div>
			<div class="layui-inline">
				<label class="layui-form-label">
					<i class="layui-icon layui-icon-user" style="font-size: 20px; color: black;"></i>
					审&ensp;核&ensp;人
				</label>
				<div class="layui-input-inline">
					<input type="text" name="aaf310" required lay-verify="true" value="${ins.aaf310 }"
					 autocomplete="off" class="layui-input">
				</div>
			</div>
			<div class="layui-inline">
				<label class="layui-form-label">
					<i class="layui-icon layui-icon-tips" style="font-size: 20px; color: black;"></i>
					审核人编号
				</label>
				<div class="layui-input-inline">
					<input type="text" name="aaf312" required lay-verify="true" value="${ins.aaf312 }"
					 autocomplete="off" class="layui-input">
				</div>
			</div>
	</div>
	<div class="layui-form-item" align="center">
			<div class="layui-inline">
				<label class="layui-form-label">
					<i class="layui-icon layui-icon-tips" style="font-size: 20px; color: black;"></i>
					票据类型
				</label>
				<div class="layui-input-block">
					<input type="radio" name="aaf308" value="收据" title="收据" checked>
					<input type="radio" name="aaf308" value="发票" title="发票">
					<input type="radio" name="aaf308" value="无票据" title="无票据"> 
				</div>
			</div>
			<div class="layui-inline">
				<label class="layui-form-label">
					<i class="layui-icon layui-icon-date" style="font-size: 20px; color: black;"></i>
					审核日期
				</label>
				<div class="layui-input-inline">
					<input type="text" name="aaf311" id="date2" required lay-verify="true" value="${ins.aaf311 }"
					 autocomplete="off" class="layui-input">
				</div>
			</div>
	</div>
<div id="tableId" style="">
<table class="layui-table" lay-size="sm">
	<thead>
	<tr>
	<td>款项类型</td>
	<td>款项名称</td>
	<td>金额</td>
	<td>币种</td>
	<td>汇率</td>
	<td>折人民币金额</td>
	<td>支付方式</td>
	<td>备注</td>
	</tr>
	</thead>
	<tbody>
	<tr>
	<td><e:select name="aaf403" value="非贷款类房款:非贷款类房款,贷款类房款:贷款类房款,全款:全款,其它:其它,"/></td>
	<td><e:select name="aaf409" value="定金:定金,预约金:预约金,首付:首付,楼款:楼款,银行按揭:银行按揭,补差款:补差款"/></td>
	<td><e:number step="0.01" required="true" name="aaf404" defval="${ins.aad413 }"/></td>
	<td><e:select name="aaf405" value="人民币:人民币,美元:美元,英镑:英镑,日元:日元,欧元:欧元"/></td>
	<td><e:number step="0.01" required="true" name="aaf410"/></td>
	<td><e:number step="0.01" required="true" name="aaf406"/></td>
	<td><e:select value="现金:现金,银行卡:银行卡,第三方支付:第三方支付" name="aaf407"/></td>
	<td><e:text name="aaf408"/></td>
	</tr>
	</tbody>
</table>
	<div class="layui-form-item" align="center">
		<input type="submit" name="text" value="${empty param.aaf301?'添加':'修改' }"
		 class="layui-btn layui-btn-normal" formaction="${empty param.aaf301?'af03add':'af03modify' }.html">
		<input type="submit" name="text" value="查看" class="layui-btn layui-btn-normal"
		 formnovalidate="formnovalidate" formaction="<%=path%>/af/af03query.html">
		 <input type="submit" name="text" value="返回" class="layui-btn layui-btn-normal"
		 formnovalidate="formnovalidate" formaction="<%=path%>/ad/ad07queryAgreement.html">
	</div>
<input type="hidden" name="aaf301" value="${param.aaf301 }">
</div>
</form>
	</div>
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
	function selectRoom(e)
	{
		layer.open({
			 type: 2
			,title: '房间选择'
			,area:['800px', '500px']
			,maxmin: true
			,content: '<%=path%>/base/room.html'
			,btn: ['确定','关闭'],
			yes: function(index){
				var res = window["layui-layer-iframe" + index].callbackdata();
				//打印返回的值，看是否有我们想返回的值
				console.log(res);
				$("#room").attr("value",res[0])
				$("#roomNo").attr("value",res[1])
				layer.close(index);
				}
			});  
	}
</script>
</body>
</html>