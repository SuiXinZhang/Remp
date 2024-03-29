<%@ page language="java" pageEncoding="GBK"%>
<%@include file="/base/taglib.jsp"%>
<html>
<head>
	<jsp:include page="/base/head.jsp" />
</head>
<body class="layui-layout-body">
	<div class="layui-layout layui-layout-admin">
		<jsp:include page="/base/header.jsp" />
		<c:import url="/af/menu.jsp">
	    	<c:param name="menu" value="af05a"/>
	    </c:import>
		<div class="layui-body">
			<div class="layui-anim layui-anim-scale"
			style="padding: 15px; margin: 30px 80px;">
			<fieldset class="layui-elem-field layui-filed-title" style="margin-top: 20px;">
				<legend style="color:black;"><h2>银行批量放款列表</h2></legend>
			
			<form class="layui-form" id="myform" layfilter="form" 
			action="<%=path%>/af/af06Query.html" method="post">
			
			<div align="center">
	
	<!------------------ 查询条件区---------------------->
				
				<div class="layui-form-item">
					<div class="layui-inline">
						<label class="layui-form-label">项目名称</label>
						<div class="layui-input-inline">
							<select name="qaaf612">
								<option value="" selected="selected">请选择项目名称</option>
							    <c:forEach items='<%=session.getAttribute("prjs")%>' var="ins">
							    	<option value="${ins.aaa202 }">${ins.aaa202 }</option>
							    </c:forEach>
							</select>
							<!-- <input type="text" name="qaaf612" class="layui-input"> -->
						</div>
					</div>
					<div class="layui-inline">
						<label class="layui-form-label">贷款银行</label>
						<div class="layui-input-inline">
							<input type="text" name="qaaf604" class="layui-input">
						</div>
					</div>
					<div class="layui-inline">
						<label class="layui-form-label">放款单号</label>
						<div class="layui-input-inline">
							<input type="text" name="qaaf602" class="layui-input">
						</div>
					</div>
				</div>
				
				<div class="layui-form-item" align="left">
					<div class="layui-inline" style="padding-left:85px">
						<label class="layui-form-label">放款日期[B]</label>
						<div class="layui-input-inline">
							<input type="text" name="bdate" class="layui-input" id="test29" placeholder="yyyy-MM-dd">
						</div>
					</div>
					<div class="layui-inline">
						<label class="layui-form-label">放款日期[E]</label>
						<div class="layui-input-inline">
							<input type="text" name="edate" class="layui-input" id="test30" placeholder="yyyy-MM-dd">
						</div>
					</div>
					<div class="layui-inline">
						<label class="layui-form-label">审核状态</label>
						<div class="layui-input-inline">
							<select name="qaaf609" lay-verify="">
								<option value="" selected="selected">请选择审核状态</option>
								<option value="01">未审核</option>
								<option value="02">已审核</option>
							</select>
						</div>
					</div>
				</div>
				
			</div>

		
		<!-----------------数据迭代区 -------------------->
		<div id="tableId" style="display: none">
		<table lay-filter="demo" border="1" width="95%" align="center">
		<thead>
			<tr>
			<td lay-data="{field:'sort1',width:60}">序号</td>
			<td lay-data="{field:'projectname',width:125}">放款单号</td>
			<td lay-data="{field:'username'}">放款银行</td>
			<td lay-data="{field:'userphone'}">项目名称</td>
			<td lay-data="{field:'empname',sort:true}">放款日期</td>
			<td lay-data="{field:'style',width:88}">登记人</td>
			<td lay-data="{field:'state',width:88}">审核状态</td>
			<td lay-data="{field:'date',sort:true,width:115}">审核人</td>
			<td lay-data="{field:'date2',sort:true,width:115}">审核日期</td>
			<td lay-data="{field:'opt',fixed:'right'}">操作</td>
			</tr>
	  </thead>
	  <tbody>
	  <c:choose>
	  	<c:when test="${rows!=null }">
	  		<!-- 显示查询到的数据 -->
	  		<c:forEach items="${rows }" var="ins" varStatus="vs">
	  			<tr>
	  				<td>
	  					${vs.count }
	  				</td>
	  				<td>${ins.aaf602 }</td>
	  				<td>${ins.aaf604 }</td>
	  				<td>${ins.aaf612 }</td>
				    <td>${ins.aaf605 }</td>
				    <td>${ins.aaf603 }</td>
				    <td>${ins.cnaaf609 }</td>
				    <td>${ins.aaf606 }</td>
				    <td>${ins.aaf607 }</td>
				    <c:choose>
					    <c:when test="${ins.cnaaf609=='未审核' }">
					    <td>
					    	<a href="#" onclick="onEdit('${ins.aaf601}')"
							class="layui-btn layui-btn-xs">
							<i class="layui-icon layui-icon-edit"></i>审核
							</a>
							</td>
					    </c:when>
					    <c:otherwise>
					    <td>
					    	<a href="#" onclick=""
							class="layui-btn layui-btn-xs layui-btn-disabled">
							<i class="layui-icon layui-icon-edit"></i>审核
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
	  		<button class="layui-btn " type="submit">
				<i class="layui-icon layui-icon-search layuiadmin-button-btn"></i>查询
			</button>
	  		<button class="layui-btn layuiadmin-btn-useradmin" type="submit" 
				formaction="<%=path%>/af/af06Add.jsp">
				<i class="layui-icon layui-icon-add-1"></i>添加
			</button>
		</div>
		</div>
	</form>
	</fieldset>
	</div>
			
		</div>

	</div>
	
	<script type="text/javascript">

	var count=0;
	function onSelect(vstate)
	{
		vstate?count++:count--;
		var vdel=document.getElementById("del");
		vdel.disabled=(count==0);
	}
	
	function onEdit(vaaf601)
	{
		var vform = document.getElementById("myform");
	  	 vform.action="<%=path%>/af/af06FindById.html?aaf601="+vaaf601;
	  	 vform.submit();
	}
	
	function onDel(vaaf601)
    {
  	 var vform = document.getElementById("myform");
  	 vform.action="<%=path%>/af/af06DelById.html?aaf601="+vaaf601;
  	 vform.submit();
    }

</script>
	<script>
//JavaScript代码区域
	layui.use(['layer', 'form','element','table'], function(){
	  var element = layui.element;
	  var layer = layui.layer
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
	
	//日期选择框
	  layui.use('laydate', function() {
	  	var laydate = layui.laydate;
	  
	  	laydate.render({
	  		elem: '#test29',
	  		theme: 'molv',
			trigger: 'click'
	  	});
		
		laydate.render({
			elem: '#test30',
			theme: 'molv',
			trigger: 'click'
		});
	  });
</script>
</body>
</html>
