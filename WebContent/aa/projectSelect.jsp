<%@ page language="java" pageEncoding="GBK"%>
<%@include file="/../base/taglib.jsp" %>
<html>
<head>
	<jsp:include   page="/base/head.jsp"/>
</head>
<body class="layui-layout-body">
<div class="layui-layout layui-layout-admin">
	<jsp:include   page="/base/header.jsp"/>
	<jsp:include   page="/aa/menu.jsp"/>
  <div class="layui-body">
    <div class="layui-anim layui-anim-scale" style="padding: 15px; margin:100px 100px;">
   	<fieldset class="layui-elem-field">
 	<legend style="color:black"><h2>选择项目</h2></legend>
 		<form action="" lay-filter="form" class="layui-form"  method="post">
			<div class="layui-form-item" align="center">
				<div class="layui-inline">
		       			<label class="layui-form-label"  style="font-size: 15px;">
			    			<i class="layui-icon layui-icon-component" style="font-size: 15px; color: black;"></i>
			    			项目
			    		</label>
					    <div class="layui-input-block" style="width:150px">
					      <select name="aaa201" lay-verify="required">
	      			      			<c:forEach  items="${rows }" var="ins" varStatus="vs">
	  								    <option value="${ins.aaa201 }">${ins.aaa202 }</option>
	  		                    	</c:forEach>
					      </select>
					    </div>
					  
	            </div>	

				<div class="layui-inline" style="margin-left:100px">
						<input class="layui-btn" name="next" type="submit" value="管理"
							formaction="<%=path %>/aa/aa${param.action }Query.html" formnovalidate="formnovalidate">
				</div>
			</div>
 		</form>
	</fieldset>
	</div>
  </div>
  
  <div class="layui-footer">
  </div>
</div>

<script>
layui.use(['layer', 'form','element'], function(){
	var element = layui.element;
	  var form = layui.form
	  ,layer = layui.layer
	  ,layedit = layui.layedit;

});	  
</script>