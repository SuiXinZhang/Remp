<%@ page language="java" pageEncoding="GBK"%>
<%@include file="/base/taglib.jsp" %>
<html>
	<head>
		<jsp:include page="/base/head.jsp" />
		
	</head>
	<body class="layui-layout-body">
		<div class="layui-layout layui-layout-admin">
			<jsp:include page="/base/header.jsp" />
			<c:import url="/ab/menu.jsp">
	    		<c:param name="menu" value="ab01q"/>
	   	    </c:import>
			<div class="layui-body">
				<!-- 内容主体区域 -->
				<div class="layui-anim layui-anim-scale"
				style="padding: 15px; margin: 30px 80px;">
					<fieldset class="layui-elem-field layui-filed-title" style="margin-top: 20px;">
						<legend style="color:black;"><h2>销售计划列表</h2></legend>				
				
					<form class="layui-form" id="myform" action="<%=path%>/ab/ab01Query.html" method="post">

						<!------------------ 查询条件区---------------------->
					<div align="center">
					
						<div class="layui-form-item">
							<div class="layui-inline">
								<label class="layui-form-label">项目名称</label>
								<div class="layui-input-inline">
									<select name="qaab102">
										<option value="" selected="selected">请选择项目名称</option>
									    <c:forEach items='<%=session.getAttribute("prjs")%>' var="ins">
									    	<option value="${ins.aaa202 }">${ins.aaa202 }</option>
									    </c:forEach>
									</select>
								</div>
							</div>
							<div class="layui-inline">
							<label class="layui-form-label">年份</label>
							<div class="layui-input-inline">
								<input type="text" name="year" placeholder="年份" autocomplete="off" class="layui-input">
							</div>
						</div>
					
				
						<div class="layui-form-item" align="left">
							<div class="layui-inline" style="padding-left:248px">
							<label class="layui-form-label">月份</label>
							<div class="layui-input-inline">
								<input type="text" name="month" placeholder="月份" autocomplete="off" class="layui-input">
							</div>
							</div>
							<div class="layui-inline" style="padding-left:110px">
								<button class="layui-btn " type="submit">
									<i class="layui-icon layui-icon-search layuiadmin-button-btn"></i>查询
								</button>
								<button class="layui-btn layuiadmin-btn-useradmin" type="submit" 
									formaction="<%=path%>/ab/ab01Add.jsp">
									<i class="layui-icon layui-icon-add-1"></i>添加
								</button>
								<!-- <input type="submit" name="next" value="查询" class="layui-btn"> 
								<input type="submit" name="next" value="添加" formaction="<%=path%>/ab/ab01Add.jsp" class="layui-btn">
								-->
							</div>
						</div>
						
					</div>
						

						<!-----------------数据迭代区 -------------------->
						<div id="tableId" style="display: none">
						<table id="idData"  lay-filter="demo" height="50px">
						<thead>
							<tr>
								<td lay-data="{field:'sort1',width:60}">序号</td>
								<td lay-data="{field:'projectname',width:125}">项目名称</td>
								<td lay-data="{field:'username',sort:true}">时间</td>
								<td lay-data="{field:'userphone'}">计划销售面积</td>
								<td lay-data="{field:'empname'}">计划销售套数</td>
								<td lay-data="{field:'style'}">计划销售金额</td>
								<td lay-data="{field:'date',sort:true}">计划销售均价</td>
								<td lay-data="{field:'grade',sort:true}">计划回款金额</td>
								<td lay-data="{field:'opt',fixed:'right'}">操作</td>
							</tr>
						</thead>
						<tbody>
							<c:choose>
								<c:when test="${rows!=null }">
									<!-- 显示查询到的数据 -->
									<c:forEach items="${rows }" var="ins" varStatus="vs">
										<tr>
											<!-- <td>
												<input type="checkbox" name="idlist" value="${ins.aab101 }" onclick="onSelect(this.checked)">
											</td> -->
											<td>
												${vs.count }
											</td>
											<td>
												<a href="#" style="color:orange" onclick="onEdit('${ins.aab101}')">${ins.aab102 }</a>
											</td>
											<td>${ins.aab103 }</td>
											<td>${ins.aab105 }</td>
											<td>${ins.aab106 }</td>
											<td>${ins.aab107 }</td>
											<td>${ins.aab108 }</td>
											<td>${ins.aab109 }</td>
											<td>
												<a href="#" onclick="createOrFindAb02('${ins.aab101}')"
												class="layui-btn layui-btn-xs">
												<i class="layui-icon layui-icon-edit"></i>编辑销售明细
												</a>
											</td>
											<!-- <td>
												<a href="#" onclick="onDel('${ins.aab101}')" class="layui-btn">删除</a>
											</td> -->
											
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
								<!--  
								<input type="submit" id="del" name="next" value="删除" formaction="<%=path%>/ab/ab01DelPlan.html" disabled="disabled" class="layui-btn">
								-->
						</div>
						</div>
					</form>
					</fieldset>
				</div>
			</div>

			<div class="layui-footer">
				<!-- 底部固定区域 -->
			</div>
		</div>
				<script type="text/javascript">
		
			//JavaScript代码区域
			layui.use('element', function(){
			  var element = layui.element;
			  
			});
			var count=0;
			function onSelect(vstate)
			{
				vstate?count++:count--;
				var vdel=document.getElementById("del");
				vdel.disabled=(count==0);
			}
			
			function onEdit(vaab101)
			{
				var vform = document.getElementById("myform");
			  	 vform.action="<%=path%>/ab/ab01FindById.html?aab101="+vaab101;
			  	 vform.submit();
			}
			
			function onDel(vaab101)
		    {
		  	 var vform = document.getElementById("myform");
		  	 vform.action="<%=path%>/ab/ab01DelById.html?aab101="+vaab101;
		  	 vform.submit();
		    }
			
			function createOrFindAb02(vaab101)
		    {
		  	 var vform = document.getElementById("myform");
		  	 vform.action="<%=path%>/ab/ab02Query.html?aab101="+vaab101;
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
				

				if("${msg }" != "")
				{
					layer.msg('${msg }');	  
				}
			});
			
		</script>
	</body>
</html>
