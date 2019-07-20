<%@ page language="java" pageEncoding="GBK"%>
<%@include file="/../base/taglib.jsp" %>
<html>
<head>
	<jsp:include   page="/base/head.jsp"/>
</head>
<body class="layui-layout-body">
<div class="layui-layout layui-layout-admin">
	<jsp:include   page="/base/header.jsp"/>
	<jsp:include   page="/ae/menu.jsp"/>
  <div class="layui-body">
  <h1 align="center">面积补差明细</h1>
    <div style="padding: 15px;">
	    <form action="<%=path %>/ae05Modify.html" lay-filter="form" class="layui-form"  method="post">
	    <div align="center">
		    <div class="layui-form-item">
		    	<div class="layui-inline">
			      	<label class="layui-form-label">客户</label>
			      	<div class="layui-input-inline">
			        	<input required="required" name="aae707" class="layui-input" type="text" value="${ins.aae707 }" readonly="readonly">
		      		</div>
		    	</div>
			    <div class="layui-inline">
			      	<label class="layui-form-label">房间</label>
			      	<div class="layui-input-inline">
			        	<input required="required" name="aae709" class="layui-input" type="text" value="${ins.aae709 }" readonly="readonly">
		      		</div>
		    	</div>
	    	</div>
	    	
	    	<div class="layui-form-item">
	    	 <div class="layui-inline">
			      	<label class="layui-form-label">合同面积</label>
			      	<div class="layui-input-inline">
			        <input required="required" name="aae702" class="layui-input" value="${ins.aae702 }" type="number" step="0.01" readonly="readonly">
		      		</div>
		    	</div>
		      	<div class="layui-inline">
		      		<label class="layui-form-label">套内面积</label>
	                <div class="layui-input-inline" >
	                	<input required="required" class="layui-input" name="aae703" value="${ins.aae703 }" type="number" step="0.01" readonly="readonly">
	                </div>
	            </div>
	    	</div>
	    	<div class="layui-form-item">
		    	<div class="layui-inline">
			      	<label class="layui-form-label">参差补差款</label>
			      	<div class="layui-input-inline">
			        	<input required="required" name="aae504" class="layui-input" step="0.01" type="number" value="${ins.aae504 }" readonly="readonly">
		      		</div>
		    	</div>
			    <div class="layui-inline">
			      	<label class="layui-form-label">实际补差款</label>
			      	<div class="layui-input-inline">
				       <input required="required" name="aae505" class="layui-input" step="0.01" type="number" value="${ins.aae505 }">
		      		</div>
		    	</div>
	    	</div>
	    	<div class="layui-form-item">
				<div class="layui-inline">
						<input class="layui-btn" name="next" type="submit" value="修改"
							formaction="<%=path%>/ae/ae05Modify.html">
						<input class="layui-btn" type="submit" value="返回"
						formaction="<%=path%>/ae/ae05query.html" formnovalidate="formnovalidate" >
				</div>
			</div>
		<input type="hidden" name="aae501" value="${param.aae501 }">
		</div>
	</form>
	</div>
  </div>
  
  <div class="layui-footer">
  </div>
</div>

<script>
layui.use(['layer', 'form','element'], function(){
	var element = layui.element;
	var $ = layui.jquery;
	var layer = layui.layer
	,form = layui.form;
	})
</script>
</body>
</html>