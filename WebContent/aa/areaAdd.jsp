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
    <div class="layui-anim layui-anim-scale" style="padding: 15px; margin:50px 100px;">
   	<fieldset class="layui-elem-field">
 	<legend style="color:black"><h2>区域${empty param.aaa601?'添加':'修改' }</h2></legend>
  		<div class="layui-field-box">
	    <form action="" lay-filter="form" class="layui-form"  method="post">	
	    <div class="layui-form-item" align="center">
	    	<div class="layui-inline">
	    		<label class="layui-form-label"  style="font-size: 18px;">
	    			<i class="layui-icon layui-icon-face-smile" style="font-size: 20px; color: black;"></i>
	    			名称
	    		</label>
		      	<div class="layui-input-block">
		      		<c:if test="${empty ins.aaa601 }">
		        		<input type="text" name="aaa602" required="required" value="${ins.aaa602 }" autocomplete="off" class="layui-input"  style="width:250px;">
	      			</c:if>
	      			<c:if test="${!empty ins.aaa601 }">
	      				<input type="text" name="aaa602" readonly="readonly" required="required" value="${ins.aaa602 }" autocomplete="off" class="layui-input"  style="width:250px;">
	      			</c:if>
	      		</div>
	    	</div>
	    </div>
	    <div class="layui-form-item" align="center">
		    <div class="layui-inline">
		      	<label class="layui-form-label"  style="font-size: 18px;">
	    			<i class="layui-icon layui-icon-location" style="font-size: 20px; color: black;"></i>
	    			地址
	    		</label>
		      	<div class="layui-input-block">
		        	<input type="text" name="aaa603" required="required" value="${ins.aaa603 }" autocomplete="off" class="layui-input"  style="width:250px;">
	      		</div>
	    	</div>
	    </div>
	    <div class="layui-form-item" align="center">
	    	<div class="layui-inline">
		      	<label class="layui-form-label"  style="font-size: 18px;">
	    			<i class="layui-icon layui-icon-table" style="font-size: 20px; color: black;"></i>
	    			面积
	    		</label>
		      	<div class="layui-input-block">
		        	<input type="number" name="aaa604" required="required" step="0.1" value="${ins.aaa604 }" 
		        			autocomplete="off" class="layui-input" style="width:250px;">
	      		</div>
	    	</div>
    	</div>

    	<div class="layui-form-item layui-form-text" align="center">
	    	<div class="layui-inline">
		      	<label class="layui-form-label"  style="font-size: 18px;">
	    			<i class="layui-icon layui-icon-edit" style="font-size: 20px; color: black;"></i>
	    			备注
	    		</label>
		      	<div class="layui-input-block" >
		        <textarea cols="30" name="aaa605" class="layui-textarea" placeholder="请输入内容">${ins.aaa605 }</textarea>
	      		</div>
	    	</div>
    	</div>

    	<div class="layui-form-item" align="left"  style="padding-left:450px">
				<div class="layui-inline">
						<input class="layui-btn" name="next" type="submit" value="${empty ins.aaa601?'添加':'修改' }"
							formaction="<%=path %>/aa/${empty ins.aaa601?'aa06Add.html':'aa06Modify.html' }">
						<input class="layui-btn layui-btn-warm" type="submit" value="返回"
						formaction="<%=path %>/aa/aa06Query.html" formnovalidate="formnovalidate">
				</div>
				<div class="layui-inline">
					<c:if test="${!empty msg }">
			   	    	<label class="layui-form-label"  style="font-size: 18px; color:#009688;width:300px;" >
			   			<i class="layui-icon layui-icon-set" style="font-size: 24px;"></i>
			   			${msg }
			   			</label>
			   		</c:if>
				</div>
			</div>
			
		<input type="hidden" name="aaa201" value="${param.aaa201 }"> 
		<input type="hidden" name="aaa601" value="${ins.aaa601 }">
	</form>
	</div>
	</fieldset>
	</div>
  </div>
  
  <div class="layui-footer">
  </div>
</div>
<script>
layui.use(['layer', 'form'], function(){
	  var layer = layui.layer
	  form = layui.form;
	 
	});

</script>
</body>
</html>