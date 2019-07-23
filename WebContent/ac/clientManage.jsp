<!DOCTYPE html>
<%@ page language="java" pageEncoding="GBK"%>
<%@include file="/base/taglib.jsp"%>
<html>
<head>
	<jsp:include page="/base/head.jsp" />
</head>
<body class="layui-layout-body">
	<div class="layui-layout layui-layout-admin">
		<jsp:include page="/base/header.jsp" />
		<c:import url="/ac/menu.jsp">
  		 	<c:param name="menu" value="ac08"/>
  		</c:import>
		
		<div class="layui-body">
			<div class="layui-anim layui-anim-scale"
				style="padding: 15px; margin: 30px 80px;">
				<fieldset class="layui-elem-field layui-filed-title" style="margin-top: 20px;padding-top: 20px">
					<legend>客户台账管理</legend>
					<form action="<%=path%>/ac/ac04Query.html" lay-filter="form"
						class="layui-form" id="myform" method="post">


						<div align="left">
							<div class="layui-form-item">
								<div class="layui-inline">
									<label class="layui-form-label">客&ensp;户&ensp;名</label>
									<div class="layui-input-inline">
										<input type="text" name="qaac403" value="${param.qaac403 }"
											autocomplete="off" class="layui-input">
									</div>
								</div>
								<div class="layui-inline">
									<label class="layui-form-label">客户编号</label>
									<div class="layui-input-inline">
										<input type="text" name="qaac402" value="${param.qaac402 }"
											autocomplete="off" class="layui-input">
									</div>
								</div>
								<div class="layui-inline">
									<label class="layui-form-label">联系电话</label>
									<div class="layui-input-inline">
										<input type="text" name="qaac405" value="${param.qaac405 }"
											autocomplete="off" class="layui-input">
									</div>
								</div>
								<div class="layui-inline">
									<button class="layui-btn layuiadmin-btn-useradmin" type="submit">
											<i class="layui-icon layui-icon-search layuiadmin-button-btn"></i>
									</button>
								</div>
							</div>

					</div>


				

						<div id="tableId" style="display: none">
							<table id="idData"  lay-filter="demo">
								<thead>
									<tr>
										<td lay-data="{field:'sort1',width:60,fixed:'left'}">序号</td>
										<td lay-data="{field:'username',width:90}">客户名</td>
										<td lay-data="{field:'projectname'}">客户编号</td>
										<td lay-data="{field:'userphone'}">联系电话</td>
										<td lay-data="{field:'empname',width:58}">性别</td>
										<td lay-data="{field:'style',width:58}">民族</td>
										<td lay-data="{field:'date',width:58}">职业</td>
										<td lay-data="{field:'grade',width:100}">经济状况</td>
										<td lay-data="{field:'state',width:170}">邮箱</td>
										<td lay-data="{field:'opt',fixed:'right',width:180}">操作</td>
									</tr>
								</thead>
								<tbody>
									<c:choose>
										<c:when test="${rows!= null }">
											<c:forEach items="${rows }" var="ins" varStatus="vs">
												<tr>
													<td>${vs.count } </td>
													<td>${ins.aac403 }</td>
													<td>${ins.aac402 }</td>
													<td>${ins.aac407 }</td>
													<td>${ins.cnaac404 }</td>
													<td>${ins.cnaac406 }</td>
													<td>${ins.aac413 }</td>
													<td>${ins.aac410 }</td>
													<td>${ins.aac408 }</td>
													<td>
													
													<a class="layui-btn layui-btn-xs " 
													href="<%=path%>/ac04FindById.html?aac401=${ins.aac401 }" >
													<i class="layui-icon layui-icon-edit"></i>编辑
													</a> 
													
													<a class="layui-btn layui-btn-xs layui-btn-danger" href="#"
														onClick="onFollow('${ins.aac401}','${ins.aac402 }','${ins.aac403 }')">
														<i class="layui-icon layui-icon-release"></i>添加跟进
													</a> 
													</td>		
												</tr>
											</c:forEach>
										</c:when>

									</c:choose>
								</tbody>
							</table>
						</div>
						<input type="hidden" name="aac403" id="vaac403" value=""> 
					</form>
			</div>
			</fieldset>
		</div>
		</div>
<script type="text/javascript">
function onEdit(vaac401)
{
	var myform = document.getElementById("myform");
	myform.action = "<%=path%>/ac04FindById.html?aac401=" + vaac401;
	myform.submit();
}
function onDel(vaac401)
{
	var myform = document.getElementById("myform");
	myform.action = "<%=path%>/ac04DelById.html?aac401=" + vaac401;
	myform.submit();
}
function onFollow(vaac401,vaac402,vaac403)
{
	var aac403 = document.getElementById("vaac403");
	aac403.value = vaac403;
	console.log(aac403); 
	var myform = document.getElementById("myform");
	myform.action = "<%=path%>/ac/addFollow.jsp?aac401=" + vaac401+ "&aac402=" + vaac402 ;
	myform.submit();
}
</script>
<script>
//JavaScript代码区域
	layui.use(['layer', 'form','element','table'], function(){
	  var layer = layui.layer
	  ,form = layui.form
	  ,element = layui.element
	  ,table = layui.table;
	  
	  if("${msg }" != "")
	  {
		  layer.msg("${msg }");
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
</script>
</body>
</html>