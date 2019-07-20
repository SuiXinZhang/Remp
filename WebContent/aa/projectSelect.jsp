<%@ page language="java" pageEncoding="GBK"%>
<%@include file="/../base/taglib.jsp" %>
<html>
<head>
	<jsp:include   page="/base/head.jsp"/>
	<link rel="stylesheet" href="<%=path %>/static/css/404/style.css">
</head>
<body class="layui-layout-body">
<div class="layui-layout layui-layout-admin">
	<jsp:include   page="/base/header.jsp"/>
	<jsp:include   page="/aa/menu.jsp"/>
  <div class="layui-body">
  	<div class="layui-form-item" align="center">
 			<svg width="380px" height="500px" viewBox="0 0 837 1045" version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:sketch="http://www.bohemiancoding.com/sketch/ns">
			    <g id="Page-1" stroke="none" stroke-width="1" fill="none" fill-rule="evenodd" sketch:type="MSPage">
			        <path d="M353,9 L626.664028,170 L626.664028,487 L353,642 L79.3359724,487 L79.3359724,170 L353,9 Z" id="Polygon-1" stroke="#007FB2" stroke-width="6" sketch:type="MSShapeGroup"></path>
			        <path d="M78.5,529 L147,569.186414 L147,648.311216 L78.5,687 L10,648.311216 L10,569.186414 L78.5,529 Z" id="Polygon-2" stroke="#EF4A5B" stroke-width="6" sketch:type="MSShapeGroup"></path>
			        <path d="M773,186 L827,217.538705 L827,279.636651 L773,310 L719,279.636651 L719,217.538705 L773,186 Z" id="Polygon-3" stroke="#795D9C" stroke-width="6" sketch:type="MSShapeGroup"></path>
			        <path d="M639,529 L773,607.846761 L773,763.091627 L639,839 L505,763.091627 L505,607.846761 L639,529 Z" id="Polygon-4" stroke="#F2773F" stroke-width="6" sketch:type="MSShapeGroup"></path>
			        <path d="M281,801 L383,861.025276 L383,979.21169 L281,1037 L179,979.21169 L179,861.025276 L281,801 Z" id="Polygon-5" stroke="#36B455" stroke-width="6" sketch:type="MSShapeGroup"></path>
			    </g>
			</svg>
			<div class="message-box" style="color:black;width:450px;;height:400px;">
					<div class="layui-anim layui-anim-scale" style="padding: 0px; margin:0px 0px;">
				   	<fieldset class="layui-elem-field">
				 	<legend style="color:#00aaf0;">
				 		<h2><i class="layui-icon layui-icon-component" style="padding-right:10px;font-size:28px;color:#00aaf0;"></i>选择项目</h2>
				 	</legend>
				 		<form action="" lay-filter="form" class="layui-form"  method="post">
							<div class="layui-form-item" align="center" style="padding-top:50px;padding-bottom:50px;">
								
								<div class="layui-input-inline"  >
									    <div class="layui-input-block" style="width:120px">
									      <select name="aaa201" lay-verify="required">
					      			      			<c:forEach  items="${rows }" var="ins" varStatus="vs">
					  								    <option value="${ins.aaa201 }">${ins.aaa202 }</option>
					  		                    	</c:forEach>
									      </select>
									    </div>
									  
					            </div>	
				
								<div class="layui-inline" style="margin-right:50px">
										<input class="layui-btn" style="background-color:#8cc63f" name="next" type="submit" value="管理"
											formaction="<%=path %>/aa/aa${param.action }Query.html" formnovalidate="formnovalidate">
								</div>
							</div>
				 		</form>
					</fieldset>
					</div>
			</div>
  	</div>
  	
  

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