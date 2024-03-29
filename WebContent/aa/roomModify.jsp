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
    <div class="layui-anim layui-anim-scale" style="padding: 15px;margin:50px 100px;" >
   	<fieldset class="layui-elem-field">
 	<legend style="color:black"><h2>房间信息修改</h2></legend>
  		<div class="layui-field-box">
	    <form action="" lay-filter="form" class="layui-form"  method="post">	
    	<!-- 表单提交区 -->	
	    <div class="layui-form-item" align="center">
	    	<div class="layui-inline">
	    		<label class="layui-form-label" >
	    			<i class="layui-icon layui-icon-face-smile" style="font-size: 20px; color: black;"></i>
	    			房&ensp;间&ensp;号
	    		</label>
		      	<div class="layui-input-block">
		        	<input type="text" name="aaa803" required="required" value="${ins.aaa803 }" autocomplete="off" class="layui-input"  style="width:250px;">
	      		</div>
	    	</div>

	    	<div class="layui-inline">
	    		<label class="layui-form-label" >
	    			<i class="layui-icon layui-icon-flag" style="font-size: 20px; color: black;"></i>
	    			房间编码
	    		</label>
		      	<div class="layui-input-block">
		        	<input type="text" name="aaa802" required="required" value="${ins.aaa802 }" autocomplete="off" class="layui-input"  style="width:250px;">
	      		</div>
	    	</div>
	    </div>
	    
	    
	    <div class="layui-form-item" align="center">
		    <div class="layui-inline">
		      	<label class="layui-form-label">
	    			<i class="layui-icon layui-icon-location" style="font-size: 20px; color: black;"></i>
	    			地&emsp;&emsp;址
	    		</label>
				<div class="layui-input-block">
		        	<input type="text" name="aaa804" required="required" value="${ins.aaa804 }" autocomplete="off" class="layui-input"  style="width:250px;">
	      		</div>
	    	</div>
	    	
	    	<div class="layui-inline">
		      	<label class="layui-form-label">
	    			<i class="layui-icon layui-icon-templeate-1" style="font-size: 20px; color: black;"></i>
	    			户&emsp;&emsp;型
	    		</label>
				<div class="layui-input-block" style="width:250px;">
		        	<e:select value="${ins.aaa502 }" name="aaa807" required="true" defval="${ins.aaa807 }" />
	      		</div>
	    	</div>
	    </div>
	    
	    <div class="layui-form-item" align="center">
		    <div class="layui-inline">
		      	<label class="layui-form-label">
	    			<i class="layui-icon layui-icon-release" style="font-size: 20px; color: black;"></i>
	    			租售类型
	    		</label>
				<div class="layui-input-block" style="width: 250px;">
					<input type="radio" name="aaa806" value="可租" title="可租">
      				<input type="radio" name="aaa806" value="可售" title="可售" >
      				<input type="radio" name="aaa806" value="租售" title="租售">
	      		</div>
	    	</div>
	    	
	    	<div class="layui-inline">
		      	<label class="layui-form-label">
	    			<i class="layui-icon layui-icon-engine" style="font-size: 20px; color: black;"></i>
	    			状&emsp;&emsp;态
	    		</label>
				<div class="layui-input-block" style="width: 250px;">
					<input type="radio" name="aaa805" value="01" title="等待">
      				<input type="radio" name="aaa805" value="02" title="签约" >
      				<input type="radio" name="aaa805" value="03" title="已租">
	      		</div>
	    	</div>
	    </div>
	    
	    <div class="layui-form-item" align="center">
		    <div class="layui-inline">
		      	<label class="layui-form-label">
	    			<i class="layui-icon layui-icon-rmb" style="font-size: 20px; color: black;"></i>
	    			建筑单价
	    		</label>
				<div class="layui-input-block">
		        	<input type="number" name="aaa808" required="required" value="${ins.aaa808 }" autocomplete="off" class="layui-input"  
		        			style="width:250px;" step="0.01" min="0">
	      		</div>
	    	</div>

		    <div class="layui-inline">
		      	<label class="layui-form-label">
	    			<i class="layui-icon layui-icon-rmb" style="font-size: 20px; color: black;"></i>
	    			套内单价
	    		</label>
				<div class="layui-input-block">
		        	<input type="number" name="aaa810" required="required" value="${ins.aaa810 }" 
		        		autocomplete="off" class="layui-input"  style="width:250px;"  step="0.01" min="0">
	      		</div>
	    	</div>
	    </div>
	    


    	<div class="layui-form-item layui-form-text" align="center">
	    	<div class="layui-inline">
		      	<label class="layui-form-label" >
	    			<i class="layui-icon layui-icon-edit" style="font-size: 20px; color: black;"></i>
	    			备&#8195;&#8195;注
	    		</label>
		      	<div class="layui-input-block" >
		        <textarea cols="82" name="aaa812" class="layui-textarea">${ins.aaa812 }</textarea>
	      		</div>
	    	</div>
    	</div>

    	<div class="layui-form-item" align="left"  style="padding-left:450px">
				<div class="layui-inline">
						<input class="layui-btn" name="next" type="submit" value="修改"
							formaction="<%=path %>/aa/aa08ModifyById.html">
						<input class="layui-btn layui-btn-warm" type="submit" value="返回"
						formaction="<%=path %>/aa/aa08Query.html" formnovalidate="formnovalidate">
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
		<input type="hidden" name="aaa701" value="${param.aaa701 }"> 
		<input type="hidden" name="aaa801" value="${ins.aaa801 }"> 
		<input type="hidden" name="aaa601" value="${param.aaa601 }"> 
		<input type="hidden" name="aaa708" value="${param.aaa602 }">
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
	 
	  form.val('form',{
		  "aaa805":"${ins.aaa805}",
		  "aaa806":"${ins.aaa806}"
	  });

	});

</script>
</body>