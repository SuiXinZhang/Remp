<!DOCTYPE html>
<%@ page language="java" pageEncoding="GBK"%>
<%@include file="/base/taglib.jsp" %>
<html>
<head>
	<jsp:include   page="/base/head.jsp"/>
	<link rel="stylesheet" type="text/css"
	href="/remp/static/css/ac/clueManageCss.css">
</head>
<body class="layui-layout-body">
<div class="layui-layout layui-layout-admin">
  	<jsp:include   page="/base/header.jsp"/>
	<c:import url="/ac/menu.jsp">
  		 <c:param name="menu" value="ac12"/>
  	</c:import>
  <div class="layui-body">
    <div class="layui-anim layui-anim-scale"
				style="padding: 15px; margin: 30px 80px;">
				<fieldset class="layui-elem-field layui-filed-title" style="margin-top: 20px;padding-top: 20px">
					<legend>客户跟进管理</legend>
    <form id="myform" lay-filter="myform" class="layui-form" action="<%=path%>/ac/ac03Query.html" method="post">
		

	<div class="layui-form-item" align="left">
		<div class="layui-inline">
			<label class="layui-form-label" style="width:126px">客&emsp;户&emsp;名&emsp;称</label>
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
			<label class="layui-form-label">跟进业务员</label>
				<div class="layui-input-inline">
					<input type="text" name="qaac306" value="${param.qaac306 }"
					 autocomplete="off" class="layui-input">
				</div>
		</div>
	</div>
	<div class="layui-form-item" align="left">
		<div class="layui-inline">
			<label class="layui-form-label" style="width:126px">跟&emsp;进&emsp;状&emsp;态</label>
				<div class="layui-input-inline">
					<select name="qaac304">
						<option value="">不限定</option>
						<option value="01">待跟进</option>
						<option value="02">已跟进</option>
						<option value="03">待再次跟进</option>
					</select>
				</div>
		</div>
		<div class="layui-inline">
			<label class="layui-form-label" >跟进时间</label>
			<div class="layui-input-inline">
				<input type="date" name="baac305" id="date1"
					placeholder="B" lay-verify="date" value="${param.baac305 }"
					autocomplete="off" class="layui-input">
			</div>
			<div class="layui-form-mid" id="toCenter2">----</div>
			<div class="layui-input-inline">
				<input type="date" name="eaac305" id="date2"
					placeholder="E" lay-verify="date" value="${param.baac305 }"
					autocomplete="off" class="layui-input">
			</div>
			<div class="layui-inline" style="padding-left:14px">
				<button class="layui-btn layuiadmin-btn-useradmin" type="submit">
				<i class="layui-icon layui-icon-search layuiadmin-button-btn"></i>查询
				</button>
			</div>
		</div>
	</div>
	<div class="layui-form-item" align="left">
	<div class="layui-inline">
			<label class="layui-form-label" style="width:126px">批量修改跟进状态</label>
				<div class="layui-input-inline">
					<select id="maac304" name="maac304">
						<option value="">不限定</option>
						<option value="01">待跟进</option>
						<option value="02">已跟进</option>
						<option value="03">待再次跟进</option>
					</select>
				</div>
		</div>
		<div class="layui-inline" style="padding-left:110px">
			<button class="layui-btn layui-btn-disabled"  id="mod2" onclick="onBatchUpdate()" 
			 disabled="disabled" type="button">
			<i class="layui-icon layui-icon-edit"></i>批量修改
			</button>
		</div>
		<div class="layui-inline" style="padding-left:194px">
				<button class="layui-btn layui-btn-disabled"  id="mod3" disabled="disabled"
				formaction="<%=path %>/ac/ac03Delete.html"  type="submit">
				<i class="layui-icon layui-icon-delete"></i>批量删除
				</button>
		</div>
	</div>
	<div class="layui-form-item" align="left">
		<div class="layui-inline">
			<label class="layui-form-label" style="width:126px">批&thinsp;量&thinsp;添&thinsp;加&thinsp;业&thinsp;务&thinsp;员</label>
				<div class="layui-input-inline">
					<input type="text" name="maac306" id="maac306" value="${param.maac306 }"
					 autocomplete="off" class="layui-input">
				</div>
		</div>
		<div class="layui-inline">
			<label class="layui-form-label">业务员编号</label>
				<div class="layui-input-inline">
					<input type="text" name="maac307" id="maac307" value="${param.maac307 }"
					 autocomplete="off" class="layui-input">
				</div>
		</div>
		<div class="layui-inline" style="padding-left:108px">
				<button class="layui-btn layui-btn-disabled"  id="mod" onclick="onBatchUpdate2()"
				 disabled="disabled" type="button">
				<i class="layui-icon layui-icon-add-1"></i>批量添加
				</button>
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
						<td lay-data="{field:'userphone'}">跟进内容</td>
						<td lay-data="{field:'style',width:88}">跟进状态</td>
						<td lay-data="{field:'date',width:115}">跟进时间</td>
						<td lay-data="{field:'grade',width:100}">跟进业务员</td>
						<td lay-data="{field:'makeemp',width:120}">业务员编号</td>
						<td lay-data="{field:'opt',fixed:'right',width:150}">操作</td>
					</tr>
				</thead>
				<tbody>
					<c:choose>
						<c:when test="${rows!= null }">
							<c:forEach items="${rows }" var="ins" varStatus="vs">
								<tr>
									<td>
									<input type="checkbox" lay-skin="primary" lay-filter="check" name="idlist" value="${ins.aac301 }" ></td>
									<td>${vs.count } </td>
									<td>${ins.aac403 }</td>
									<td>${ins.aac402 }</td>
									<td>${ins.aac303 }</td>
									<td>${ins.cnaac304 }</td>
									<td>${ins.aac305 }</td>
									<td>${ins.aac306 }</td>
									<td>${ins.aac307 }</td>
									<td>
									
									<a class="layui-btn layui-btn-xs " 
									href="<%=path%>/ac03FindById.html?aac301=${ins.aac301 }" >
									<i class="layui-icon layui-icon-edit"></i>编辑
									</a> 
									
									<a class="layui-btn layui-btn-xs layui-btn-danger" href="#"
										onClick="onDel('${ins.aac301}')">
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
	</fieldset>
    </div>
  </div>
</div>
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
	  form.val('myform',{
		  "qaac304":"${param.qaac304}",
		  "maac304":"${param.maac304}"
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
			var mod = document.getElementById("mod");
			var mod2 = document.getElementById("mod2");
			var mod3 = document.getElementById("mod3");
	          if(data.elem.checked==true){
	               	count++;
	               	if(count!=0){
	               		mod.className="layui-btn";
	               		mod2.className="layui-btn ";
	               		mod3.className="layui-btn ";
	               	}else{
	               		mod.className="layui-btn layui-btn-disabled";
	               		mod2.className="layui-btn layui-btn-disabled";
	               		mod3.className="layui-btn layui-btn-disabled";
	               	}
	               	mod.disabled=(count==0);
	               	mod2.disabled=(count==0);
	               	mod3.disabled=(count==0);
	               		
	          }else{
	        	  count--;
	       		  if(count!=0){
	       				mod.className="layui-btn";
	       				mod2.className="layui-btn ";
	       				mod3.className="layui-btn ";
	       		  }else{
	             		mod.className="layui-btn layui-btn-disabled";
	             		mod2.className="layui-btn layui-btn-disabled";
	             		mod3.className="layui-btn layui-btn-disabled";
	             }
	       		mod.disabled=(count==0);
	       		mod2.disabled=(count==0);
	       		mod3.disabled=(count==0);
	          }
	      });
	
	});
	layui.use('laydate', function(){
		  var laydate = layui.laydate;
		 
		  //执行一个laydate实例
		  laydate.render({
		    elem: '#date1',  //指定元素
		    trigger: 'click'
		  });
		  laydate.render({
			elem: '#date2',  //指定元素
			trigger: 'click'
		  });
		});
	var count = 0;
	function onSelect(vstate)
	{
		vstate?count++:count--;
		var delB = document.getElementById("del");
		var batchUpdateB = document.getElementById("update");
		var modifyFollow = document.getElementById("modifyFollow");
		modifyFollow.disabled = (count == 0);
		batchUpdateB.disabled= (count ==0);
		delB.disabled = (count == 0);
	}
	function onEdit(vaac301)
	{
		var myform = document.getElementById("myform");
		myform.action = "<%=path%>/ac03FindById.html?aac301=" + vaac301;
		myform.submit();
	}
	function onDel(vaac301)
	{
		var myform = document.getElementById("myform");
		myform.action = "<%=path%>/ac03DelById.html?aac301=" + vaac301;
		myform.submit();
	}
	function onBatchUpdate()
	{
		var myform = document.getElementById("myform");
		var maac304 = document.getElementById("maac304");
		if(maac304.value.length > 0)
		{
			myform.action = "<%=path%>/ac/ac03BatchUpdate.html";
			myform.submit();
		}
		else 
		{
			layui.use('layer', function(){
				  var layer = layui.layer;
				  layer.alert("请选择修改后的跟进状态类型");
				}); 
		}
	}
	function onBatchUpdate2()
	{
		var myform = document.getElementById("myform");
		var maac306 = document.getElementById("maac306");
		var maac307 = document.getElementById("maac307");
		if(maac306.value.length >0)
		{
			if(maac307.value.length>0)
			{
				myform.action = "<%=path%>/ac/ac03ModifyFollow.html";
				myform.submit();
			}
			else 
			{
				layui.use('layer', function(){
					  var layer = layui.layer;
					  layer.alert("请添加业务员编号");
					}); 
			}
		}
		else 
		{
			layui.use('layer', function(){
				  var layer = layui.layer;
				  layer.alert("请添加业务员名称");
				}); 
		}
	}
</script>
</body>
</html>