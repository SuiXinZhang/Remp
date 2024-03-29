<!DOCTYPE html>
<%@ page language="java" pageEncoding="GBK"%>
<%@include file="/base/taglib.jsp"%>
<html>
<head>
<jsp:include page="/base/head.jsp" />

<style>
		.noBorder
		{
			background-color:transparent;
			border:0;
		}
	</style>

</head>
<body class="layui-layout-body">
	<div class="layui-layout layui-layout-admin">
		<jsp:include page="/base/header.jsp" />
		<c:import url="/af/menu.jsp">
	    	<c:param name="menu" value="af07q"/>
	    </c:import>
		<div class="layui-body">
		<div class="layui-anim layui-anim-scale"
			style="padding: 15px; margin: 30px 80px;">
			<fieldset class="layui-elem-field layui-filed-title" style="margin-top: 20px;">
				<legend style="color:black;"><h2>欠款列表</h2></legend>
		
			<form id="myform" class="layui-form" lay-filter="form"
				action="<%=path%>/af/af07Query.html" method="post">
				
				<div align="center">

				<!------------------ 查询条件区---------------------->

				<div class="layui-form-item">
					<div class="layui-inline">
						<label class="layui-form-label">客户名称</label>
						<div class="layui-input-inline">
							<input type="text" name="qaaf703" class="layui-input">
						</div>
					</div>
					<div class="layui-inline">
						<label class="layui-form-label">房间编号</label>
						<div class="layui-input-inline">
							<input type="text" name="qaaf702" class="layui-input">
						</div>
					</div>
					<div class="layui-inline">
						<label class="layui-form-label">还款状态</label>
						<div class="layui-input-inline">
							<select name="qaaf710" lay-verify="">
								<option value="">请选择还款状态</option>
								<option value="01" selected="selected">未还款</option>
								<option value="02">已还款</option>
							</select>
						</div>
					</div>
				</div>

				<div class="layui-form-item" align="left">
					<div class="layui-inline" style="padding-left:86px">
						<label class="layui-form-label">截止日期[B]</label>
						<div class="layui-input-inline">
							<input type="text" name="bdate" class="layui-input" id="test29"
								placeholder="yyyy-MM-dd">
						</div>
					</div>
					<div class="layui-inline">
						<label class="layui-form-label">截止日期[E]</label>
						<div class="layui-input-inline">
							<input type="text" name="edate" class="layui-input" id="test30"
								placeholder="yyyy-MM-dd">
						</div>
					</div>
					<div class="layui-inline" style="padding-left:110px">
						<button class="layui-btn " type="submit">
							<i class="layui-icon layui-icon-search layuiadmin-button-btn"></i>查询
						</button>
					</div>
				</div>
				</div>

				<!-----------------数据迭代区 -------------------->
				<div id="tableId" style="display: none">
				<table lay-filter="demo">
				<thead>
					<tr>
						<td lay-data="{field:'check',width:60}"></td>
						<td lay-data="{field:'sort1',width:60}">序号</td>
						<td lay-data="{field:'projectname',width:125}">房间编号</td>
						<td lay-data="{field:'username'}">客户名</td>
						<td lay-data="{field:'userphone'}">客户邮箱</td>
						<td lay-data="{field:'empname',sort:true}">还款截止日期</td>
						<td lay-data="{field:'style'}">签署金额</td>
						<td lay-data="{field:'date',sort:true,width:115}">欠款金额</td>
						<td lay-data="{field:'grade',width:100}">还款状态</td>
						<td lay-data="{field:'opt',fixed:'right'}">操作</td>
					</tr>
					</thead>
					<tbody>
					<c:choose>
						<c:when test="${rows!=null }">
							<!-- 显示查询到的数据 -->
							<c:forEach items="${rows }" var="ins" varStatus="vs">
								<tr>
									<td><input type="checkbox" lay-skin="primary" lay-filter="check" name="emailList"
										value="${ins.aaf704 }" onclick="onSelect(this.checked)">
									</td>
									<td>${vs.count }</td>
									<td>${ins.aaf702 }</td>
									<td>${ins.aaf703 }</td>
									<td>${ins.aaf704 }</td>
									<td>${ins.aaf705 }</td>
									<td>${ins.aaf706 }</td>
									<td>${ins.aaf709 }</td>
									<td>${ins.cnaaf710 }</td>
									<c:choose>
										<c:when test="${ins.cnaaf710=='未还款' }">
											<td>
												<a href="<%=path %>/af/af07State.html?aaf701=${ins.aaf701}" 
												class="layui-btn layui-btn-xs">
												<i class="layui-icon layui-icon-edit"></i>已缴费
												</a>
											</td>
										</c:when>
										<c:otherwise>
											<td>
												<a href="<%=path %>/af/af07State.html?aaf701=${ins.aaf701}" 
												class="layui-btn layui-btn-xs layui-btn-disabled">
												<i class="layui-icon layui-icon-edit"></i>已缴费
												</a>
											</td>
										</c:otherwise>
									</c:choose>
								</tr>
							</c:forEach>

						</c:when>
						<c:otherwise>
							
						</c:otherwise>
					</c:choose>
					</tbody>
				</table>

				<!-- 功能按钮区 -->
				<div class="layui-form-item" align="center">
					<button class="layui-btn layuiadmin-btn-useradmin" type="submit" 
						formaction="<%=path%>/af/af07Add.jsp">
						<i class="layui-icon layui-icon-add-1"></i>添加
					</button>
					<button class="layui-btn layui-btn-disabled" disabled="disabled"
						formaction="<%=path%>/af/af07Mail.html" id="mod" type="submit">
						<i class="layui-icon layui-icon-file"></i>邮件催款
					</button>
				</div>
				</div>
			</form>
			</fieldset>
			</div>
		</div>

	</div>
	<script type="text/javascript">
	
	function onEdit(vaaf701)
	{
		var vform = document.getElementById("myform");
	  	 vform.action="<%=path%>/af/af07FindById.html?aaf701="+vaaf701;
	  	 vform.submit();
	}
	
	function onDel(vaaf701)
    {
  	 var vform = document.getElementById("myform");
  	 vform.action="<%=path%>/af/af07DelById.html?aaf701=" + vaaf701;
			vform.submit();
		}
	</script>
	<script>
		//JavaScript代码区域
		layui.use([ 'layer', 'form', 'element','table'], function() {
			var element = layui.element
			,layer = layui.layer
			,form = layui.form
			,table = layui.table;
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
			

			if("${msg }" != "")
			{
				layer.msg('${msg }');	  
			}
		});

		//日期选择框
		layui.use('laydate', function() {
			var laydate = layui.laydate;

			laydate.render({
				elem : '#test29',
				theme : 'molv',
				trigger : 'click'
			});

			laydate.render({
				elem : '#test30',
				theme : 'molv',
				trigger : 'click'
			});
		});
	</script>
	<script type="text/javascript">
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