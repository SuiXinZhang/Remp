<!DOCTYPE html>
<%@ page language="java" pageEncoding="GBK"%>
<%@include file="/base/taglib.jsp"%>
<html>
<head>
	<jsp:include page="/base/head.jsp" />
	<link rel="stylesheet" type="text/css"
	href="/remp/static/css/ac/clueManageCss.css">
</head>
<body class="layui-layout-body">
	<div class="layui-layout layui-layout-admin">
		<jsp:include page="/base/header.jsp" />
		<c:import url="/ac/menu.jsp">
  		 	<c:param name="menu" value="ac10"/>
  		</c:import>
		<div class="layui-body">
			<div class="layui-anim layui-anim-scale"
				style="padding: 15px; margin: 30px 80px;">
				<fieldset class="layui-elem-field layui-filed-title" style="margin-top: 20px;padding-top: 20px">
					<legend>客户关怀管理</legend>
					<form action="<%=path%>/ac/ac05Query.html" lay-filter="form"
						class="layui-form" id="myform" method="post">


						<div align="center">


							<div class="layui-form-item">
								<div class="layui-inline">
									<label class="layui-form-label">&ensp;客&ensp;户&ensp;名&ensp;</label>
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
								<label class="layui-form-label">发送类型</label>
								<div class="layui-input-inline">
										<select name="qaac509">
											<option value="" selected="">不限</option>
											<option value="1">短信</option>
											<option value="2">邮箱</option>
										</select>
									</div>
							</div>
							</div>

							<div class="layui-form-item">
								<div class="layui-inline">
									<label class="layui-form-label">制定业务员</label>
									<div class="layui-input-inline">
										<input type="text" name="qaac507" value="${param.qaac507 }"
											autocomplete="off" class="layui-input">
									</div>
								</div>
								<div class="layui-inline">
									<label class="layui-form-label">业务员编号</label>
									<div class="layui-input-inline">
										<input type="text" name="qaac503" value="${param.qaac503 }"
											autocomplete="off" class="layui-input">
									</div>
								</div>
								<div class="layui-inline">
									<label class="layui-form-label">执行状态</label>
									<div class="layui-input-inline">
										<select name="qaac504">
											<option value="" selected="">不限</option>
											<option value="01">未执行</option>
											<option value="02">已执行</option>
											<option value="03">已废弃</option>
										</select>
									</div>
							</div>
							</div>
							
							<div class="layui-form-item" align="left">
								<div class="layui-inline" style="padding-left:85px">
									<label class="layui-form-label">&thinsp;制&thinsp;定&thinsp;时&thinsp;间&thinsp;</label>
									<div class="layui-input-inline">
										<input type="text" name="baac508" id="date"
											placeholder="B" lay-verify="date"
											autocomplete="off" class="layui-input">
									</div>
									<div class="layui-form-mid" id="toCenter2">----</div>
									<div class="layui-input-inline">
										<input type="text" name="eaac508" id="date1"
											placeholder="E" lay-verify="date"
											autocomplete="off" class="layui-input">
									</div>
								</div>
								<div class="layui-inline" style="padding-left:110px">
									<button class="layui-btn layuiadmin-btn-useradmin" type="submit">
											<i class="layui-icon layui-icon-search layuiadmin-button-btn"></i>查询
									</button>
								</div>
								<div class="layui-inline" style="padding-left:8px">
									<button class="layui-btn layui-btn-disabled"  id="mod" disabled="disabled"
									formaction="<%=path %>/ac/ac05Delete.html"  type="submit">
									<i class="layui-icon layui-icon-delete"></i>删除
									</button>
							</div>
							</div>
					</div>

						<div id="tableId" style="display: none">
							<table id="idData"  lay-filter="demo">
								<thead>
									<tr>
										<td lay-data="{field:'check',width:50}"></td>
										<td lay-data="{field:'sort1',width:60}">序号</td>
										<td lay-data="{field:'username'}">客户名</td>
										<td lay-data="{field:'number',width:125}">客户编号</td>
										<td lay-data="{field:'userphone'}">消息主题</td>
										<td lay-data="{field:'style',width:88}">执行状态</td>
										<td lay-data="{field:'date',width:115}">发送类型</td>
										<td lay-data="{field:'grade',width:100}">发送时间</td>
										<td lay-data="{field:'makeemp',width:120}">制定业务员</td>
										<td lay-data="{field:'opt',fixed:'right',width:200}">操作</td>
									</tr>
								</thead>
								<tbody>
									<c:choose>
										<c:when test="${rows!= null }">
											<c:forEach items="${rows }" var="ins" varStatus="vs">
												<tr>
													<td>
													<input type="checkbox" lay-skin="primary" lay-filter="check" name="idlist" value="${ins.aac601 }" >
													</td>
													<td>${vs.count } </td>
													<td>${ins.aac403 }</td>
													<td>${ins.aac402 }</td>
													<td>${ins.aac502 }</td>
													<td>${ins.cnaac504 }</td>
													<td>${ins.cnaac509 }</td>
													<td>${ins.aac505 }</td>
													<td>${ins.aac507 }</td>
													<td>
													
													<a class="layui-btn layui-btn-xs " 
													href="<%=path%>/ac05FindById.html?aac501=${ins.aac501 }" >
													<i class="layui-icon layui-icon-search"></i>查看
													</a> 
													
													<a class="layui-btn layui-btn-xs layui-btn-danger" href="#"
														onClick="onDel('${ins.aac601}')">
														<i class="layui-icon layui-icon-delete"></i>删除
													</a> 
													</td>		
												</tr>
											</c:forEach>
										</c:when>

									</c:choose>
								</tbody>
							</table>
						</div>
					</form>
			</div>
			</fieldset>
		</div>
	</div>
<script type="text/javascript">
function onDel(vaac601)
{
	var myform = document.getElementById("myform");
	myform.action = "<%=path%>/ac05DelById.html?aac601=" + vaac601;
	myform.submit();
}
</script>
<script>
//JavaScript代码区域
	layui.use(['layer', 'form','element','laydate','table'], function(){
	  var layer = layui.layer
	  ,form = layui.form
	  ,element = layui.element
	  ,laydate = layui.laydate
	  ,table = layui.table;
	  
	  if("${msg }" != "")
	  {
		  layer.msg("${msg }");
	  }
		//日期
		laydate.render({
			elem : '#date'
			,type: 'datetime'
			,trigger: 'click'
		});
		laydate.render({
			elem : '#date1'
			,type: 'datetime'
			,trigger: 'click'
		});
	  
		form.val('form', {
			"qaac504" : "${param.qaac504 }",
			"qaac509" : "${param.qaac509 }",
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
		var count = 0;
		form.on('checkbox(check)', function(data){
	          if(data.elem.checked==true){
	               	count++;
	               	if(count!=0){
	               		document.getElementById("mod").className="layui-btn";
	               	}else{
	               		document.getElementById("mod").className="layui-btn layui-btn-disabled";
	               	}
	               	document.getElementById("mod").disabled=(count==0)
	               		
	          }else{
	        	  count--;
	       		  if(count!=0){
	       				document.getElementById("mod").className="layui-btn";
	       		  }else{
	             		document.getElementById("mod").className="layui-btn layui-btn-disabled";
	             }
	       		document.getElementById("mod").disabled=(count==0)
	          }
	      });
	});
</script>
</body>
</html>