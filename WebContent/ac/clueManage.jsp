<%@ page language="java" pageEncoding="GBK"%>
<%@include file="/base/taglib.jsp"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css"
	href="/remp/static/css/ac/clueManageCss.css">
<meta name="renderer" content="webkit">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<jsp:include page="/base/head.jsp" />
<script type="text/javascript">
function submitExcel()
{
	var file = document.getElementById("fileUpload").value;
	var form = document.getElementById("excForm");
	var pos = file.lastIndexOf(".");  
    var lastname = file.substring(pos,file.length);  
    var resultName=lastname.toLowerCase(); 
	console.log(resultName);
	if('.xlsx' == resultName || '.xls' == resultName)
	{
		form.submit();
		layui.use('layer',function(){
			var layer = layui.layer;
			layer.load(0, {time: 5*1000}); //又换了种风格，并且设定最长等待10秒   
		})
	}
	else
	{
		layui.use('layer',function(){
			var layer = layui.layer;
			layer.open({
				title:'提示',
				content:'请选择Excel文件!',
				skin: 'layui-layer-molv'
			});
		})
	}
}
</script>
</head>
<body class="layui-layout-body">
	<div class="layui-layout layui-layout-admin">
		<jsp:include page="/base/header.jsp" />
		<c:import url="/ac/menu.jsp">
  		 <c:param name="menu" value="ac02"/>
  		</c:import>
		<div class="layui-body">
			<div class="layui-anim layui-anim-scale"
				style="padding: 15px; margin: 20px 80px;">
				<fieldset class="layui-elem-field layui-filed-title" style="margin-top: 20px;padding-top: 20px">
					<legend>线索管理</legend>
<form action="<%=request.getContextPath() %>/UploadHandleServlet" id="excForm" enctype="multipart/form-data" method="post">
     <div class="layui-form-item" align="left">
      	<div class="layui-inline" >
      	<label class="layui-form-label" style="width:100px">
	    Excel导入
	    </label>
	    </div>
	    <div class="layui-inline" >
			<button type="button" onclick="$('input[id=fileUpload]').click();" class="layui-btn layui-btn-normal">
			<i class="layui-icon layui-icon-template-1" style="font-size: 20px;color:white;"></i>
			选择文件</button>
			<input type="file" id="fileUpload"  name="excelfilename" style="display:none">
	   	</div>
	   	<div class="layui-inline" >
			<button type="button" onclick="submitExcel()" class="layui-btn layui-btn-normal">
			<i class="layui-icon layui-icon-upload-drag" style="font-size: 20px; color:white"></i>
			导入数据</button>
	   	</div>
	  </div>
</form>
					<form action="<%=path%>/ac/ac01Query.html" lay-filter="form"
						class="layui-form" id="myform" method="post">
						<div align="left">
							<div class="layui-form-item">
								<div class="layui-inline">
									<label class="layui-form-label" style="padding-left: 32px">客&ensp;户&ensp;名</label>
									<div class="layui-input-inline">
										<input type="text" name="qaac105" value="${param.qaac105 }"
											autocomplete="off" class="layui-input">
									</div>
								</div>
								<div class="layui-inline">
									<label class="layui-form-label" style="width: 100px">项&emsp;目&emsp;名&emsp;称</label>
									<div class="layui-input-inline">
										<%-- <input type="text" name="qaac104" value="${param.qaac104 }"
											autocomplete="off" class="layui-input"> --%>
										<select name="qaac104">
											<option value="" selected="selected">不限</option>
											<c:forEach items='<%=session.getAttribute("prjs")%>'
												var="ins">
												<option value="${ins.aaa202 }">${ins.aaa202 }</option>
											</c:forEach>
										</select>
									</div>
								</div>
								<div class="layui-inline">
									<label class="layui-form-label">来访方式</label>
									<div class="layui-input-inline">
										<select name="qaac103">
											<option value="" selected="">不限</option>
											<option value="电话">电话</option>
											<option value="走访">走访</option>
										</select>
									</div>
								</div>
							</div>


							<div class="layui-form-item" >
								<div class="layui-inline">
									<label class="layui-form-label" style="padding-left: 32px">跟进级别</label>
									<div class="layui-input-inline">
										<select name="qaac109">
											<option value="" selected="">不限</option>
											<option value="1">1</option>
											<option value="2">2</option>
											<option value="3">3</option>
											<option value="4">4</option>
											<option value="5">5</option>
										</select>
									</div>
								</div>
								<div class="layui-inline" style="padding-left: 0px">
									<label class="layui-form-label" style="width: 100px">转销售机会状态</label>
									<div class="layui-input-inline">
										<select name="qaac111">
											<option value="">不限</option>
											<option value="未转" selected="">未转</option>
											<option value="已转">已转</option>
										</select>
									</div>
								</div>
							</div>

							<div class="layui-form-item">
								<div class="layui-inline">
									<label class="layui-form-label" style="padding-left: 32px">来访日期</label>
									<div class="layui-input-inline">
										<input type="text" name="baac102" id="date"
											placeholder="B" lay-verify="date" value="${param.baac102 }"
											autocomplete="off" class="layui-input">
									</div>
									<div class="layui-form-mid" id="toCenter">----</div>
									<div class="layui-input-inline">
										<input type="text" name="eaac102" id="date1"
											placeholder="E" lay-verify="date" value="${param.eaac102 }"
											autocomplete="off" class="layui-input">
									</div>
								</div>
								<div class="layui-inline">
									<div class="layui-inline" style="padding-left: 40px">
										<button class="layui-btn layuiadmin-btn-useradmin"
											type="submit">
											<i class="layui-icon layui-icon-search layuiadmin-button-btn"></i>
											查询
										</button>
									</div>
								</div>

							</div>

						</div>

						<div id="tableId" style="display: none">
							<table id="idData" lay-filter="demo">
								<thead>
									<tr>
										<td lay-data="{field:'sort1',width:60}">序号</td>
										<td lay-data="{field:'projectname',width:125}">项目名称</td>
										<td lay-data="{field:'username'}">客户名</td>
										<td lay-data="{field:'userphone'}">联系电话</td>
										<td lay-data="{field:'empname'}">记录人</td>
										<td lay-data="{field:'style',width:88}">来访方式</td>
										<td lay-data="{field:'date',sort:true,width:115}">来访日期</td>
										<td lay-data="{field:'grade',sort:true,width:100}">跟进级别</td>
										<td lay-data="{field:'state',width:120}">销售机会状态</td>
										<td lay-data="{field:'opt',fixed:'right',width:200}">操作</td>
									</tr>
								</thead>
								<tbody>
									<c:choose>
										<c:when test="${rows!= null }">
											<c:forEach items="${rows }" var="ins" varStatus="vs">
												<tr>
													<td>${vs.count }</td>
													<td>${ins.aac104 }</td>
													<td>${ins.aac105 }</td>
													<td>${ins.aac106 }</td>
													<td>${ins.aac108 }</td>
													<td>${ins.aac103 }</td>
													<td>${ins.aac102 }</td>
													<td>${ins.aac109 }</td>
													<td>${ins.aac111 }</td>
													<td><a class="layui-btn layui-btn-xs "
														href="<%=path%>/ac01FindById.html?aac101=${ins.aac101 }">
															<i class="layui-icon layui-icon-edit"></i>编辑
													</a> <a class="layui-btn layui-btn-xs layui-btn-danger"
														href="#" onClick="onOpportunities('${ins.aac101}','${ins.aac111}')"> <i
															class="layui-icon layui-icon-release"></i>转销售机会
													</a></td>
												</tr>
											</c:forEach>
										</c:when>

									</c:choose>
								</tbody>
							</table>
						</div>
					</form></div>
			</fieldset>
		</div>
	</div>
<script src="https://cdn.staticfile.org/jquery/1.10.2/jquery.min.js"></script>
<script type="text/javascript">
function onEdit(vaac101)
{
	var myform = document.getElementById("myform");
	myform.action = "<%=path%>/ac01FindById.html?aac101=" + vaac101;
	myform.submit();
}
function onDel(vaac101)
{
	var myform = document.getElementById("myform");
	myform.action = "<%=path%>/ac01DelById.html?aac101=" + vaac101;
	myform.submit();
}
function onOpportunities(vaac101,vaac111)
{
	if(vaac111 == '未转')
	{
		var myform = document.getElementById("myform");
		myform.action = "<%=path%>/ac04ChangeOpport.html?tag=1&aac101="+ vaac101;
		myform.submit();
	}else
	{
		layui.use('layer',function(){
			var layer = layui.layer;
			layer.open({
				title:'提示',
				content:'只有未转线索才可以转销售机会!',
				skin: 'layui-layer-molv'
			});
		})
	}
	
}
function getCheckBox(str)
{
	var ha =$(str).find(".layui-form-checkbox");
	var list=[];
	ha.each(function(){
		if($(this).hasClass("layui-form-checked")){
			list.push($(this).parent().parent().next().find("#idlist").val())
		}
	})
}
</script>
<script>
//JavaScript代码区域
layui.use([ 'element', 'form', 'laydate', 'layedit', 'table' ],function() {
					var element = layui.element
					, form = layui.form
					, layer = layui.layer
					, layedit = layui.layedit
					, laydate = layui.laydate
					, table = layui.table;
					
					if("${msg }" != "")
					  {
						  layer.msg("${msg }");
					  }

					//日期
					laydate.render({
						elem : '#date'
					});
					laydate.render({
						elem : '#date1'
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

					form.val('form', {
						"qaac111" : "${param.qaac111 }",
						"qaac103" : "${param.qaac103 }",
						"qaac109" : "${param.qaac109 }",
						"qaac104" : "${param.qaac104 }"
					});
})
</script>
</body>
</html>