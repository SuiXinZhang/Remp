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
 	<legend style="color:black"><h2>楼栋${empty param.aaa701?'添加':'修改' }</h2></legend>
  		<div class="layui-field-box">
	    <form action="" lay-filter="form" class="layui-form"  method="post">	
    	<!-- 表单提交区 -->	
	    <div class="layui-form-item" align="center">
	    	<div class="layui-inline">
	    		<label class="layui-form-label" >
	    			<i class="layui-icon layui-icon-face-smile" style="font-size: 20px; color: black;"></i>
	    			楼栋名称
	    		</label>
		      	<div class="layui-input-block">
		      		<c:if test="${empty ins.aaa701 }">
		      			<input type="text" name="aaa702" required="required" value="${ins.aaa702 }" autocomplete="off" class="layui-input"  style="width:250px;">
	    			</c:if>
	    			<c:if test="${!empty ins.aaa701 }">
		      			<input type="text" name="aaa702" required="required" readonly="readonly" value="${ins.aaa702 }" autocomplete="off" class="layui-input"  style="width:250px;">
	    			</c:if>
		        	
	      		</div>
	    	</div>
	    </div>
	    
	    <div class="layui-form-item" align="center">
		    <div class="layui-inline">
		      	<label class="layui-form-label" >
	    			<i class="layui-icon layui-icon-tree" style="font-size: 20px; color: black;"></i>
	    			建筑性质
	    		</label>
		      	<div class="layui-input-block">
		        	<input type="text" name="aaa703" required="required" value="${ins.aaa703 }" autocomplete="off" class="layui-input"  style="width:250px;">
	      		</div>
	    	</div>
	    </div>
	    
	    <div class="layui-form-item" align="center">
		    <div class="layui-inline">
		      	<label class="layui-form-label" >
	    			<i class="layui-icon layui-icon-location" style="font-size: 20px; color: black;"></i>
	    			所属区域
	    		</label>
		      	<div class="layui-input-block">
		      		<c:if test="${empty ins.aaa701 }">
		        		<input type="text" name="aaa708" required="required" value="${param.aaa708}" autocomplete="off" class="layui-input"  style="width:250px;">
	      			</c:if>
	      			<c:if test="${!empty ins.aaa701 }">
		        		<input type="text" name="aaa708" readonly="readonly" value="${ins.aaa602}" autocomplete="off" class="layui-input"  style="width:250px;">
	      			</c:if>
	      		</div>
	    	</div>
	    </div>
	    
	    <div class="layui-form-item" align="center">
		    <div class="layui-inline">
		      	<label class="layui-form-label" style="padding-left:25px">
	    			<i class="layui-icon layui-icon-home" style="font-size: 20px; color: black;"></i>
	    			楼栋结构
	    		</label>
		      	<div class="layui-input-block" style="padding-left:10px">
		      		<div class="layui-input-inline" style="width: 70px;">
		        		<input type="text" name="aaa705" required="required" value="${ins.aaa705 }"  placeholder="单元数"
		        			autocomplete="off" class="layui-input" id="aaa705" onkeyup="this.value=this.value.replace(/\D|^0/g,'')" onafterpaste="this.value=this.value.replace(/\D|^0/g,'')">
		        	</div>
		        	<div class="layui-form-mid">-</div>
		        	<div class="layui-input-inline" style="width: 70px;">
		        		<input type="text" name="aaa704" required="required" value="${ins.aaa704 }"  placeholder="楼层数"
		        			autocomplete="off" class="layui-input" id="aaa704" onkeyup="this.value=this.value.replace(/\D|^0/g,'')" onafterpaste="this.value=this.value.replace(/\D|^0/g,'')">
		        	</div>
		        	<div class="layui-form-mid">-</div>
		        	<div class="layui-input-inline" style="width: 60px;">
		        		<input type="text" name="aaa706" required="required" value="${ins.aaa706 }"  placeholder="户数"
		        			autocomplete="off" class="layui-input" id="aaa706" onkeyup="this.value=this.value.replace(/\D|^0/g,'')" onafterpaste="this.value=this.value.replace(/\D|^0/g,'')">
		        	</div>
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
		        <textarea cols="30" name="aaa707" class="layui-textarea" placeholder="请输入内容">${ins.aaa707 }</textarea>
	      		</div>
	    	</div>
    	</div>

    	<div class="layui-form-item"  align="left"  style="padding-left:450px">
				<div class="layui-inline">
						<input class="layui-btn" name="next" type="submit" value="${empty ins.aaa701?'添加':'修改'}"
							formaction="<%=path %>/aa/${empty ins.aaa701?'aa07Add.html':'aa07Modify.html' }">
						<input class="layui-btn layui-btn-warm" type="submit" value="返回"
						formaction="<%=path %>/aa/aa07Query.html" formnovalidate="formnovalidate">
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
		<input type="hidden" name="aaa601" value="${param.aaa601 }"> 
		<input type="hidden" name="aaa701" value="${ins.aaa701 }"> 
		<input type="hidden" name="aaa602" value="${param.aaa708 }">
	</form>
	</div>
	</fieldset>
	</div>
  </div>
  
  <div class="layui-footer">
  </div>
</div>
<script type="text/javascript">
	window.onload=function(){
		if(${ins.aaa701}!=null){
			var aaa704 = document.getElementById("aaa704");
			var aaa705 = document.getElementById("aaa705");
			var aaa706 = document.getElementById("aaa706");
			aaa704.readOnly = true; 
			aaa705.readOnly = true; 
			aaa706.readOnly = true; 
		}
	}
</script>
<script>
layui.use(['layer', 'form'], function(){
	  var layer = layui.layer
	  form = layui.form;
	});

</script>
</body>