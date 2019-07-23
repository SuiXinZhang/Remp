<!DOCTYPE html>
<%@ page language="java" pageEncoding="GBK"%>
<%@include file="/base/taglib.jsp" %>
<html>
<head>
	<jsp:include   page="/base/head.jsp"/>
	<link rel="stylesheet" type="text/css"
	href="/remp/static/css/ac/clueManageCss.css">
</head>
<script>
function onload1()
{
	var showAac203 = document.getElementsByClassName("showAac203");
	for(var i =0 ; i< showAac203.length;i++)
	{
		switch(showAac203[i].getAttribute("value"))
		{
		case "01":showAac203[i].innerHTML = "25%";break;
		case "02":showAac203[i].innerHTML = "50%";break;
		case "03":showAac203[i].innerHTML = "75%";break;
		case "04":showAac203[i].innerHTML = "90%";break;
		case "05":showAac203[i].innerHTML = "100%";break;
		}
	}
	
	var showAac206 = document.getElementsByClassName("showAac206");
	for(var i =0 ; i< showAac206.length;i++)
	{
	switch(showAac206[i].getAttribute("value"))
	{
	case "01":showAac206[i].innerHTML = "差";break;
	case "02":showAac206[i].innerHTML = "中等";break;
	case "03":showAac206[i].innerHTML = "良";break;
	case "04":showAac206[i].innerHTML = "优";break;
	}
	}
	
	var showAac207 = document.getElementsByClassName("showAac207");
	for(var i =0 ; i< showAac207.length;i++)
	{
	switch(showAac207[i].getAttribute("value"))
	{
	case "01":showAac207[i].innerHTML = "两室一厅";break;
	case "02":showAac207[i].innerHTML = "两室两厅";break;
	case "03":showAac207[i].innerHTML = "三室两厅";break;
	}
	}
}
</script>
<body class="layui-layout-body">
<div class="layui-layout layui-layout-admin">
  	<jsp:include   page="/base/header.jsp"/>
	<c:import url="/ac/menu.jsp">
  		 <c:param name="menu" value="ac04"/>
  	</c:import>
  <div class="layui-body">
    <div class="layui-anim layui-anim-scale"
				style="padding: 15px; margin: 30px 80px;">
				<fieldset class="layui-elem-field layui-filed-title" style="margin-top: 20px;padding-top: 20px">
					<legend>销售机会管理</legend>
    <form class="layui-form" lay-filter="myform" action="<%=path%>/ac/ac02Query.html" id="myform" method="post">
		
	<div class="layui-form-item" align="center">
		<div class="layui-inline">
			<label class="layui-form-label">客户名称</label>
				<div class="layui-input-inline">
					<input type="text" name="qaac202" value="${param.qaac202 }"
					 autocomplete="off" class="layui-input">
				</div>
		</div>
		<div class="layui-inline">
			<label class="layui-form-label" style="width:120px">可能购买时间</label>
			<div class="layui-input-inline">
				<input type="text" name="baac204" id="date1"
					placeholder="B" lay-verify="date" value="${param.baac204 }"
					autocomplete="off" class="layui-input">
			</div>
			<div class="layui-form-mid" id="toCenter3">----</div>
			<div class="layui-input-inline">
				<input type="text" name="eaac204" id="date2"
					placeholder="E" lay-verify="date" value="${param.eaac204 }"
					autocomplete="off" class="layui-input">
			</div>
		</div>
	</div>
	
	
	<div class="layui-form-item" align="center">
		<div class="layui-inline">
			<label class="layui-form-label">客户编号</label>
				<div class="layui-input-inline">
					<input type="text" name="qaac402" value="${param.qaac402 }"
					 autocomplete="off" class="layui-input">
				</div>
		</div>
		<div class="layui-inline">
			<label class="layui-form-label" style="width:120px">意&ensp;向&ensp;价&ensp;格</label>
			<div class="layui-input-inline">
				<input type="number" name="baac209" 
					placeholder="L"  value="${param.baac209 }"
					autocomplete="off" class="layui-input">
			</div>
			<div class="layui-form-mid" id="toCenter3">----</div>
			<div class="layui-input-inline">
				<input type="number" name="eaac209" 
					placeholder="H"  value="${param.eaac209 }"
					autocomplete="off" class="layui-input">
			</div>
		</div>
	</div>
	
	<div class="layui-form-item" align="center">
	<div class="layui-inline">
			<label class="layui-form-label">潜在价值</label>
				<div class="layui-input-inline">
					<select name="qaac206">
						<option value="" selected>不限定</option>
						<option value="01">差</option>
						<option value="02">中等</option>
						<option value="03">良</option>
						<option value="04">优</option>
					</select>
				</div>
		</div>
		<div class="layui-inline">
			<label class="layui-form-label" style="width:120px">意&ensp;向&ensp;面&ensp;积</label>
			<div class="layui-input-inline">
				<input type="number" name="baac208" 
					placeholder="L"  value="${param.baac208 }"
					autocomplete="off" class="layui-input">
			</div>
			<div class="layui-form-mid" id="toCenter3">----</div>
			<div class="layui-input-inline">
				<input type="number" name="eaac208" 
					placeholder="H"  value="${param.eaac208 }"
					autocomplete="off" class="layui-input">
			</div>
		</div>
	</div>
	
	<div class="layui-form-item" align="left">
	<div class="layui-inline">
			<label class="layui-form-label" style="padding-left:130px">购买可能性</label>
				<div class="layui-input-inline">
					<select name="qaac203">
						<option value="" selected>不限定</option>
						<option value="01">25%</option>
						<option value="02">50%</option>
						<option value="03">75%</option>
						<option value="04">90%</option>
						<option value="05">100%</option>
					</select>
				</div>
		</div>
		<div class="layui-inline">
			<label class="layui-form-label" style="width:120px">意向房屋类型</label>
				<div class="layui-input-inline">
					<select name="qaac207">
						<option value="" selected>不限定</option>
						<option value="01">两室一厅</option>
						<option value="02">两室两厅</option>
						<option value="03">三室两厅</option>
					</select>
				</div>
		</div>
	</div>
	
	
	
	

			<div id="tableId" style="display: none">
							<table id="idData"  lay-filter="demo">
								<thead>
									<tr>
										<td lay-data="{field:'check',width:50}"></td>
										<td lay-data="{field:'sort1',width:60}">序号</td>
										<td lay-data="{field:'projectname'}">客户名</td>
										<td lay-data="{field:'username'}">客户编号</td>
										<td lay-data="{field:'userphone'}">购买可能性</td>
										<td lay-data="{field:'empname',width:115}">可能购买时间</td>
										<td lay-data="{field:'style'}">客户潜在跟进价值</td>
										<td lay-data="{field:'date',sort:true}">意向房屋类型</td>
										<td lay-data="{field:'grade',sort:true}">意向面积</td>
										<td lay-data="{field:'state'}">意向价格</td>
										<td lay-data="{field:'opt',fixed:'right',width:150}">操作</td>
									</tr>
								</thead>
								<tbody>
									<c:choose>
										<c:when test="${rows!= null }">
											<c:forEach items="${rows }" var="ins" varStatus="vs">
												<tr>
													<td>
													<input type="checkbox" lay-skin="primary" lay-filter="check" name="idlist" value="${ins.aac201 }" ></td>
													<td>${vs.count } </td>
													<td><a
														href="<%=path%>/ac01FindById.html?aac101=${ins.aac201 }">${ins.aac202 }</a>
													</td>
													<td>${ins.aac402 }</td>
													<td class="showAac203" value="${ins.aac203 }"></td>
													<td>${ins.aac204 }</td>
													<td class="showAac206" value="${ins.aac206 }"></td>
													<td class="showAac207" value="${ins.aac207 }"></td>
													<td>${ins.aac208 }</td>
													<td>${ins.aac209 }</td>
													<td>
													<a class="layui-btn layui-btn-xs " 
													href="<%=path%>/ac02FindById.html?aac201=${ins.aac201 }" >
													<i class="layui-icon layui-icon-edit"></i>编辑
													</a> 
													<a class="layui-btn layui-btn-xs layui-btn-danger" href="#"
													onClick="onDel('${ins.aac201}')">
													<i class="layui-icon layui-icon-delete"></i>删除</a>
													</td>
												</tr>
											</c:forEach>
										</c:when>

									</c:choose>
								</tbody>
							</table>


<script type="text/javascript">
window.onload = onload1();
</script>
							<br>
							<br>
							<br>

							<div class="layui-form-item" align="center">
							<div class="layui-inline">
								<button class="layui-btn layuiadmin-btn-useradmin" type="submit">
								<i class="layui-icon layui-icon-search layuiadmin-button-btn"></i>查询
								</button>
							</div>
							<div class="layui-inline">
								<button class="layui-btn layui-btn-disabled" disabled="disabled"
								formaction="<%=path%>/ac/ac02Delete.html" id="mod" type="submit">
								<i class="layui-icon layui-icon-delete"></i>删除
								</button>
							</div>
								
							</div>

						</div>

	</form>
	</fieldset>
    </div>
  </div>
</div>
<script>
//JavaScript代码区域
	layui.use(['layer', 'form','element'], function(){
	  var layer = layui.layer
	  ,form = layui.form
	  ,element = layui.element;
	  if("${msg }" != "" )
		{
		  layer.msg("${msg }");
		}
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
	layui.use(['laydate','table'], function(){
		  var laydate = layui.laydate
		  ,table = layui.table;
		 
		  //执行一个laydate实例
		  laydate.render({
		    elem: '#date1'  //指定元素
		  });
		  laydate.render({
			elem: '#date2'  //指定元素
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
	function onEdit(vaac201)
	{
		var myform = document.getElementById("myform");
		myform.action = "<%=path%>/ac02FindById.html?aac201=" + vaac201;
		myform.submit();
	}
	function onDel(vaac201)
	{
		var myform = document.getElementById("myform");
		myform.action = "<%=path%>/ac02DelById.html?aac201=" + vaac201;
		myform.submit();
	}
	
</script>
</body>
</html>