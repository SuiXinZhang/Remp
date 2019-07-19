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
 	<legend style="color:black"><h2>公司信息${empty param.aaa101?'添加':'修改' }</h2></legend>
		<c:if test="${!empty msg }">
   	    	<label class="layui-form-label"  style="font-size: 18px; color:#009688;width:300px;" >
   			<i class="layui-icon layui-icon-set" style="font-size: 24px;"></i>
   			${msg }
   			</label>
   		</c:if>
  		<div class="layui-field-box">
	    <form action="" lay-filter="form" class="layui-form"  method="post">	
    	<!-- 表单提交区 -->	
	    <div class="layui-form-item" align="center">
	    	<div class="layui-inline">
	    		<label class="layui-form-label" >
	    			<i class="layui-icon layui-icon-face-smile" style="font-size: 20px; color: black;"></i>
	    			公司名称
	    		</label>
		      	<div class="layui-input-block">
		        	<input type="text" name="aaa102" required="required" value="${ins.aaa102 }" autocomplete="off" class="layui-input"  style="width:250px;">
	      		</div>
	    	</div>
	    </div>
	    
	    <div class="layui-form-item" align="center">
		    <div class="layui-inline">
		      	<label class="layui-form-label" >
	    			<i class="layui-icon layui-icon-date" style="font-size: 20px; color: black;"></i>
	    			成立时间
	    		</label>
		      	<div class="layui-input-block">
		        	<input type="text" name="aaa103" id="date" lay-verify="date" required="required" value="${ins.aaa103 }" 
		        				autocomplete="off" class="layui-input"  style="width:250px;">
	      		</div>
	    	</div>
	    </div>
	    
	    <div class="layui-form-item" align="center">
		    <div class="layui-inline">
		      	<label class="layui-form-label" >
	    			<i class="layui-icon layui-icon-location" style="font-size: 20px; color: black;"></i>
	    			公司地址
	    		</label>
		      	<div class="layui-input-block">
		        	<input type="text" name="aaa104" required="required" value="${ins.aaa104 }" autocomplete="off" class="layui-input"  style="width:250px;">
	      		</div>
	    	</div>
	    </div>
	    
	    <div class="layui-form-item" align="center">
		    <div class="layui-inline">
		      	<label class="layui-form-label">
	    			<i class="layui-icon layui-icon-username" style="font-size: 20px; color: black;"></i>
	    			法人代表
	    		</label>
				<div class="layui-input-block">
		        	<input type="text" name="aaa105" required="required" value="${ins.aaa105 }" autocomplete="off" class="layui-input"  style="width:250px;">
	      		</div>
	    	</div>
	    </div>
	    
	    <div class="layui-form-item" align="center">
		    <div class="layui-inline">
		      	<label class="layui-form-label">
	    			<i class="layui-icon layui-icon-cellphone" style="font-size: 20px; color: black;"></i>
	    			联系电话
	    		</label>
				<div class="layui-input-block">
		        	<input type="text" name="aaa106" required="required" value="${ins.aaa106 }" autocomplete="off" class="layui-input"  style="width:250px;">
	      		</div>
	    	</div>
	    </div>
	    
	    <div class="layui-form-item" align="center">
		    <div class="layui-inline">
		      	<label class="layui-form-label">
	    			<i class="layui-icon layui-icon-rmb" style="font-size: 20px; color: black;"></i>
	    			注册资本
	    		</label>
				<div class="layui-input-block">
		        	<input type="text" name="aaa107" required="required" value="${ins.aaa107 }" autocomplete="off" class="layui-input"  
		        			style="width:250px;" onkeyup="this.value=this.value.replace(/\D|^0/g,'')" onafterpaste="this.value=this.value.replace(/\D|^0/g,'')">
	      		</div>
	    	</div>
	    </div>
	    
	    <div class="layui-form-item" align="center">
		    <div class="layui-inline">
		      	<label class="layui-form-label">
	    			<i class="layui-icon layui-icon-tree" style="font-size: 20px; color: black;"></i>
	    			企业资质
	    		</label>
				<div class="layui-input-block">
		        	<input type="text" name="aaa108" required="required" value="${ins.aaa108 }" autocomplete="off" class="layui-input"  style="width:250px;">
	      		</div>
	    	</div>
	    </div>
	    

    	<div class="layui-form-item layui-form-text" align="center">
	    	<div class="layui-inline">
		      	<label class="layui-form-label" >
	    			<i class="layui-icon layui-icon-edit" style="font-size: 20px; color: black;"></i>
	    			添加备注
	    		</label>
		      	<div class="layui-input-block" >
		        <textarea cols="30" name="aaa109" class="layui-textarea">${ins.aaa109 }</textarea>
	      		</div>
	    	</div>
    	</div>

    	<div class="layui-form-item" align="center">
				<div class="layui-inline">
						<input class="layui-btn" name="next" type="submit" value="${empty ins.aaa101?'添加':'修改'}"
							formaction="<%=path %>/aa/${empty param.aaa101?'aa01Add.html':'aa01Modify.html' }">
						<input class="layui-btn layui-btn-warm" type="submit" value="返回"
						formaction="<%=path %>/aa/companyManage.jsp" formnovalidate="formnovalidate">
				</div>
			</div>
			
		<input type="hidden" name="aaa101" value="${ins.aaa101 }">
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
layui.use('laydate',function(){
	 var laydate = layui.laydate;
	  laydate.render({
		  elem:'#date'
		  ,trigger: 'click'
	  });
});
</script>
</body>