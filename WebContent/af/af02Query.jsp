<%@ page language="java" pageEncoding="GBK"%>
<%@include file="/base/taglib.jsp"%>
<html>
<head>
	<jsp:include page="/base/head.jsp" />
</head>
<body class="layui-layout-body">
	<div class="layui-layout layui-layout-admin">
		<jsp:include page="/base/header.jsp" />
		<jsp:include page="/af/menu.jsp" />
		<div class="layui-body">
    <div class="layui-anim layui-anim-scale"
				style="padding: 15px; margin: 30px 80px;">
				<fieldset class="layui-elem-field layui-filed-title" style="margin-top: 20px; padding-top: 20px">
					<legend>票据管理</legend>
    <form id="myform" lay-filter="myform" class="layui-form" action="<%=path%>/af/af02Query.html" method="post">
		
	<div class="layui-form-item" align="center">
		<div class="layui-inline">
			<label class="layui-form-label">票据状态</label>
				<div class="layui-input-inline">
					<select name="qaaf207">
						<option value="">不限定</option>
						<option value="1">未开</option>
						<option value="2">已领用</option>
						<option value="3">已核销</option>
						<option value="4">已废弃</option>
					</select>
				</div>
		</div>
		<div class="layui-inline" >
			<button class="layui-btn layuiadmin-btn-useradmin" type="submit">
					<i class="layui-icon layui-icon-search layuiadmin-button-btn"></i>
					查询
			</button>
		</div>
	
	</div>
	
	<div id="tableId" style="display: none">
			<table id="idData"  lay-filter="demo">
				<thead>
					<tr>
						<td lay-data="{field:'sort1',width:60}">序号</td>
						<td lay-data="{field:'username',width:90}">票据批次号</td>
						<td lay-data="{field:'state',width:90}">票据状态</td>
						<td lay-data="{field:'number',width:90}">起始编号</td>
						<td lay-data="{field:'userphone',width:90}">截止编号</td>
						<td lay-data="{field:'style'}">领用人</td>
						<td lay-data="{field:'date',width:115}">领用日期</td>
						<td lay-data="{field:'grade',width:90}">开票金额</td>
						<td lay-data="{field:'makeemp'}">开票人</td>
						<td lay-data="{field:'notedate',width:120}">开票日期</td>
						<td lay-data="{field:'opt',fixed:'right',width:285}">操作</td>
					</tr>
				</thead>
				<tbody>
					<c:choose>
						<c:when test="${rows!= null }">
							<c:forEach items="${rows }" var="ins" varStatus="vs">
								<tr>
									<td>${vs.count }</td>
									<td>${ins.aaf202 }</td>
									<td>${ins.cnaaf207 }</td>
									<td>${ins.aaf203 }</td>
									<td>${ins.aaf204 }</td>
									<td>${ins.aaf205 }</td>
									<td>${ins.aaf206 }</td>
									<td>${ins.aaf209 }</td>
									<td>${ins.aaf210 }</td>
									<td>${ins.aaf211 }</td>
									<td>
									
									<a class="layui-btn layui-btn-xs" 
									onclick="onReceive('${ins.aaf201}','${ins.aaf202}','${ins.aaf203}','${ins.aaf204}','${ins.aaf205}','${ins.aaf206}','${ins.aaf207 }')"  >
									<i class="layui-icon layui-icon-ok"></i>领用票据
									</a> 
									
									<a class="layui-btn layui-btn-xs " 
									onclick="onWrite('${ins.aaf201}','${ins.aaf202}','${ins.aaf203}','${ins.aaf204}','${ins.aaf205}','${ins.aaf206}','${ins.aaf207 }')"  >
									<i class="layui-icon layui-icon-ok-circle"></i>核销票据
									</a>
									
									<a class="layui-btn layui-btn-xs layui-btn-danger " 
									onclick="onDiscard('${ins.aaf201}','${ins.aaf202}','${ins.aaf203}','${ins.aaf204}','${ins.aaf205}','${ins.aaf206}','${ins.aaf207 }')"  >
									<i class="layui-icon layui-icon-close-fill"></i>废弃票据
									</a>
									</td>		
								</tr>
							</c:forEach>
						</c:when>

					</c:choose>
				</tbody>
			</table>
		</div>
		<e:hidden name="aaf202" id="aaf202" value=""/>
		<e:hidden name="aaf203" id="aaf203" value=""/>
		<e:hidden name="aaf204" id="aaf204" value=""/>
		<e:hidden name="aaf205" id="aaf205" value=""/>
		<e:hidden name="aaf206" id="aaf206" value=""/>
	</form>
	</fieldset>
    </div>
  </div>

</div>
<script>
function onReceive(vaaf201,vaaf202,vaaf203,vaaf204,vaaf205,vaaf206,vaac207)
{
	if(vaac207 == "1")
	{
		onSetValue(vaaf202,vaaf203,vaaf204,vaaf205,vaaf206);
		var myform = document.getElementById("myform");
		myform.action = "<%=path%>/af/af02ReceiveNote.jsp?aaf201=" + vaaf201 ;
		myform.submit();
	}else
	{
		layui.use('layer',function(){
			var layer = layui.layer;
			layer.open({
				title:'提示',
				content:'只有未开票据才可以领用!',
				skin: 'layui-layer-molv'
			});
		})
	}

}
function onWrite(vaaf201,vaaf202,vaaf203,vaaf204,vaaf205,vaaf206,vaac207)
{
	if(vaac207 == "2")
	{
	onSetValue(vaaf202,vaaf203,vaaf204,vaaf205,vaaf206);
	var myform = document.getElementById("myform");
	myform.action = "<%=path%>/af/af02WriteOffNote.jsp?aaf201=" + vaaf201 ;
	myform.submit();
	}else
	{
	layui.use('layer',function(){
		var layer = layui.layer;
		layer.open({
			title:'提示',
			content:'只有领用票据才可以核销!',
			skin: 'layui-layer-molv'
		});
	})
	}
}
function onDiscard(vaaf201,vaaf202,vaaf203,vaaf204,vaaf205,vaaf206,vaaf207)
{
	if(vaaf207 == "2")
	{
		onSetValue(vaaf202,vaaf203,vaaf204,vaaf205,vaaf206);
		var myform = document.getElementById("myform");
		myform.action = "<%=path%>/af/af02DiscardNote.jsp?aaf201=" + vaaf201 ;
		myform.submit();
	}else
	{
	layui.use('layer',function(){
		var layer = layui.layer;
		layer.open({
			title:'提示',
			content:'只有领用票据才可以作废!',
			skin: 'layui-layer-molv'
		});
	})
	}
}
function onSetValue(vaaf202,vaaf203,vaaf204,vaaf205,vaaf206)
{
	var aaf202 = document.getElementById("aaf202");
	aaf202.value = vaaf202;
	var aaf203 = document.getElementById("aaf203");
	aaf203.value = vaaf203;
	var aaf204 = document.getElementById("aaf204");
	aaf204.value = vaaf204;
	var aaf205 = document.getElementById("aaf205");
	aaf205.value = vaaf205;
	var aaf206 = document.getElementById("aaf206");
	aaf206.value = vaaf206;
}
</script>
<script>
//JavaScript代码区域
	layui.use(['layer', 'form','element','table'], function(){
	  var element = layui.element
	  ,layer = layui.layer
	  ,form = layui.form
	  ,table = layui.table;
	  
	  if("${msg }" != "")
	  {
		  layer.msg("${msg }");
	  }
	  
	  form.val('myform',{
		  "qaaf207":"${param.qaaf207}"
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