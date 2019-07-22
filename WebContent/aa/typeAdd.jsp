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
 	<legend style="color:black"><h2>户型${empty param.aaa501?'添加':'修改' }</h2></legend>
  		<div class="layui-field-box">
	    <form action="" lay-filter="form" class="layui-form"  method="post">	
    	<!-- 表单提交区 -->	
	    <div class="layui-form-item" align="center">
	    	<div class="layui-inline">
	    		<label class="layui-form-label" >
	    			<i class="layui-icon layui-icon-face-smile" style="font-size: 20px; color: black;"></i>
	    			户型编号
	    		</label>
		      	<div class="layui-input-block">
		        	<input type="text" name="aaa502" required="required" value="${ins.aaa502 }" autocomplete="off" class="layui-input"  style="width:250px;">
	      		</div>
	    	</div>

		    <div class="layui-inline">
		      	<label class="layui-form-label" >
	    			<i class="layui-icon layui-icon-release" style="font-size: 20px; color: black;"></i>
	    			产品类型
	    		</label>
		      	<div class="layui-input-block">
		        	<input type="text" name="aaa503"  required="required" value="${ins.aaa503 }" 
		        				autocomplete="off" class="layui-input"  style="width:250px;">
	      		</div>
	    	</div>
	    </div>
	    
	    
	    <div class="layui-form-item" align="center">
		    <div class="layui-inline">
		      	<label class="layui-form-label">
	    			<i class="layui-icon layui-icon-table" style="font-size: 20px; color: black;"></i>
	    			建筑面积
	    		</label>
				<div class="layui-input-block">
		        	<input type="text" name="aaa505" required="required" value="${ins.aaa505 }" autocomplete="off" class="layui-input"  
		        			style="width:250px;" onkeyup="this.value=this.value.replace(/\D|^0/g,'')" onafterpaste="this.value=this.value.replace(/\D|^0/g,'')">
	      		</div>
	    	</div>

		    <div class="layui-inline">
		      	<label class="layui-form-label">
	    			<i class="layui-icon layui-icon-table" style="font-size: 20px; color: black;"></i>
	    			套内面积
	    		</label>
				<div class="layui-input-block">
		        	<input type="text" name="aaa506" required="required" value="${ins.aaa506 }" autocomplete="off" class="layui-input"  style="width:250px;">
	      		</div>
	    	</div>
	    </div>
	    
		<div class="layui-form-item" align="center">
			<div class="layui-inline">
		      	<label class="layui-form-label" >
	    			<i class="layui-icon layui-icon-component" style="font-size: 20px; color: black;"></i>
	    			房间结构
	    		</label>
		      	<div class="layui-input-block">
		        	<input type="text" name="aaa504"  required="required" value="${ins.aaa504 }" 
		        				autocomplete="off" class="layui-input"  style="width:250px;">
	      		</div>
	    	</div>
	    	<div class="layui-inline">
	    		<label class="layui-form-label" >
	    			<i class="layui-icon layui-icon-picture" style="font-size: 20px; color: black;"></i>
	    			平&ensp;面&ensp;图
	    		</label>
		      	<div class="layui-input-block">
		        	<input type="text" name="aaa507"  value="${ins.aaa507 }" autocomplete="off" class="layui-input"  style="width:250px;">
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
		        <textarea cols="82" name="aaa410" class="layui-textarea">${ins.aaa410 }</textarea>
	      		</div>
	    	</div>
    	</div>

    	<div class="layui-form-item" align="left"  style="padding-left:450px">
				<div class="layui-inline">
						<input class="layui-btn" name="next" type="submit" value="${empty ins.aaa501?'添加':'修改'}"
							formaction="<%=path %>/aa/${empty ins.aaa501?'aa05Add.html':'aa05Modify.html' }">
						<input class="layui-btn layui-btn-warm" type="submit" value="返回"
							formaction="<%=path %>/aa/aa05Query.html" formnovalidate="formnovalidate">
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
			
		<input type="hidden" name="aaa201" value="1"> 
		<input type="hidden" name="aaa501" value="${ins.aaa501 }">
	</form>
	</div>
	</fieldset>
	</div>
  </div>
  
  <div class="layui-footer">
  </div>
</div>
<script>
layui.use(['layer', 'form','element', 'laydate'], function(){
	var element = layui.element;
	  var form = layui.form
	  ,layer = layui.layer
	  ,layedit = layui.layedit
	  ,laydate = layui.laydate;
	  
	  //日期
	  laydate.render({
	    elem: '#date'
	    ,trigger: 'click'
	  });
	  
	  form.val('form',{
		  "aaa407":"${ins.aaa407}"
	  });
	  
	  var count=0;
	  form.on('checkbox(check)', function(data){
        if(data.elem.checked==true){
             	count++;
             	if(count!=0){
             		document.getElementById("del").className="layui-btn";
             	}else{
             		document.getElementById("del").className="layui-btn layui-btn-disabled";
             	}
             	document.getElementById("del").disabled=(count==0)
             		
        }else{
      	  count--;
     		  if(count!=0){
     				document.getElementById("del").className="layui-btn";
     		  }else{
           		document.getElementById("del").className="layui-btn layui-btn-disabled";
           }
     		document.getElementById("del").disabled=(count==0)
        }
    });
	});
</script>
</body>