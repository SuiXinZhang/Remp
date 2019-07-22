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
			${msg }
			<div class="layui-anim layui-anim-scale"
			style="padding: 15px; margin: 30px 80px;">
			<fieldset class="layui-elem-field layui-filed-title" style="margin-top: 20px;">
				<legend>银行批量放款列表</legend>
			
			<form class="layui-form" id="myform" layfilter="form" 
			action="<%=path%>/af/af06Query.html" method="post">
			
			<div align="center">
	
	<!------------------ 查询条件区---------------------->
				
				<div class="layui-form-item">
					<div class="layui-inline">
						<label class="layui-form-label">项目名称</label>
						<div class="layui-input-inline">
							<input type="text" name="qaaf612" class="layui-input">
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
					<div class="layui-inline" style="padding-left:78px">
						<label class="layui-form-label">起始日期</label>
						<div class="layui-input-inline">
							<input type="text" name="bdate" class="layui-input" id="test29" placeholder="yyyy-MM-dd">
						</div>
					</div>
					<div class="layui-inline">
						<label class="layui-form-label">截止日期</label>
						<div class="layui-input-inline">
							<input type="text" name="edate" class="layui-input" id="test30" placeholder="yyyy-MM-dd">
						</div>
					</div>
					<div class="layui-inline" style=" padding-left:110px">
						<input type="submit" name="next" value="查询" class="layui-btn">
					</div>
					
				</div>
				
			</div>

		
		<!-----------------数据迭代区 -------------------->
		<table class="layui-table" border="1" width="95%" align="center">
			<tr>
			  <td>序号</td>
			  <td>放款单号</td>
			  <td>放款银行</td>
			  <td>项目名称</td>
			  <td>放款日期</td>
			  <td>登记人</td>
			  <td>审核人</td>
			  <td></td>
			</tr>
	  
	  <c:choose>
	  	<c:when test="${rows!=null }">
	  		<!-- 显示查询到的数据 -->
	  		<c:forEach items="${rows }" var="ins" varStatus="vs">
	  			<tr>
	  				<!-- <td>
	  					<input type="checkbox" name="idlist" value="${ins.aaf601 }"
	  						onclick="onSelect(this.checked)" >
	  				</td> -->
	  				<td>
	  					${vs.count }
	  				</td>
	  				<td>${ins.aaf602 }</td>
	  				<td>${ins.aaf604 }</td>
	  				<td>${ins.aaf612 }</td>
				    <td>${ins.aaf605 }</td>
				    <td>${ins.aaf603 }</td>
				    <td>${ins.aaf606 }</td>
				    <td>
					    <a href="#" onclick="onEdit('${ins.aaf601}')"
						class="layui-btn layui-btn-xs">
						<i class="layui-icon layui-icon-edit"></i>审核
						</a>
				    </td>
	  			</tr>
	  		</c:forEach>
	  		
	  	</c:when>
	  	<c:otherwise>
	       
	     </c:otherwise>
	  </c:choose>
	  </table>
	  
	  	<!-- 功能按钮区 -->
	  	<div class="layui-form-item" align="center">
		       <input type="submit" name="next" value="添加" 
		              formaction="<%=path%>/af/af06Add.jsp" class="layui-btn">
		       <%-- 
		       <input type="submit" id="del" name="next" value="审核" 
		              formaction="<%=path%>/af06Modify.html"  disabled="disabled">
		       --%>
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
	layui.use(['layer', 'form','element'], function(){
	  var element = layui.element;
	  var layer = layui.layer
	  ,form = layui.form;
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
