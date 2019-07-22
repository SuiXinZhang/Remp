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
 	<legend style="color:black"><h2>付款方式${empty param.aaa901?'添加':'修改' }</h2></legend>
  		<div class="layui-field-box">
	    <form action="" lay-filter="form" class="layui-form"  method="post">	
    	<!-- 表单提交区 -->	
	    <div class="layui-form-item" align="center">
	    	<div class="layui-inline">
	    		<label class="layui-form-label" >
	    			<i class="layui-icon layui-icon-face-smile" style="font-size: 20px; color: black;"></i>
	    			名&#8195;&#8195;称
	    		</label>
		      	<div class="layui-input-block">
		        	<input type="text" name="aaa902" required="required" value="${ins.aaa902 }" autocomplete="off" class="layui-input"  style="width:250px;">
	      		</div>
	    	</div>
	    </div>
	    
	    <div class="layui-form-item" align="center">
		    <div class="layui-inline">
		      	<label class="layui-form-label" >
	    			<i class="layui-icon layui-icon-senior" style="font-size: 20px; color: black;"></i>
	    			折&#8195;&#8195;扣
	    		</label>
		      	<div class="layui-input-block">
		        	<input type="number" name="aaa903" step="0.01" required="required" value="${ins.aaa903 }" autocomplete="off" 
		        			class="layui-input"  style="width:250px;" onkeyup="this.value=this.value.replace(/\D|^0/g,'')" onafterpaste="this.value=this.value.replace(/\D|^0/g,'')">
	      		</div>
	    	</div>
	    </div>
	    
	    <div class="layui-form-item" align="center">
		    <div class="layui-inline">
		      	<label class="layui-form-label" >
	    			<i class="layui-icon layui-icon-praise" style="font-size: 20px; color: black;"></i>
	    			生效日期
	    		</label>
		      	<div class="layui-input-block">
	      			<input type="text"  name="aaa904" id="date" value="${ins.aaa904 }" lay-verify="date" 
	      				 autocomplete="off" class="layui-input" style="width:250px;">
	      		</div>
	    	</div>
	    </div>
	    
	    <div class="layui-form-item" align="center">
		    <div class="layui-inline">
		      	<label class="layui-form-label" >
	    			<i class="layui-icon layui-icon-tread" style="font-size: 20px; color: black;"></i>
	    			失效日期
	    		</label>
		      	<div class="layui-input-block">
	      			<input type="text"  name="aaa905" id="date1" value="${ins.aaa905 }" lay-verify="date" 
	      				 autocomplete="off" class="layui-input" style="width:250px;">
	      		</div>
	    	</div>
	    </div>
	    
	    <div class="layui-form-item" align="center">
		    <div class="layui-inline">
		      	<label class="layui-form-label" >
	    			<i class="layui-icon layui-icon-rate-half" style="font-size: 20px; color: black;"></i>
	    			是否贷款
	    		</label>
		      	<div id="aaa906" class="layui-input-block"  style="width: 250px;">
		      		<input type="radio" name="aaa906" lay-filter="aaa906"  lay-verify="required"  value="是"  title="是"  checked="">
      				<input type="radio" name="aaa906" lay-filter="aaa906"  lay-verify="required"  value="否" title="否">
      				<input type="radio" name="aaa906" lay-filter="aaa906"  lay-verify="required"  value="不确定" title="不确定">
	      		</div>
	    	</div>
	    </div>
	    
	    
	   	<fieldset id="hidden" class="layui-elem-field" style="width:400px; margin:0 auto;">
		  <legend style=" font-size:17px;">如需贷款请填写</legend>
		  <div class="layui-field-box">
		  
	    <div  style="display:block" class="layui-form-item" align="center">
		    <div class="layui-inline" style="width:400px">
		      	<label class="layui-form-label" style="width:120px">
	    			<i class="layui-icon layui-icon-component" style="font-size: 20px; color: black;"></i>
	    			按&thinsp;&thinsp;&thinsp;揭&thinsp;&thinsp;&thinsp;银&thinsp;&thinsp;&thinsp;行
	    		</label>
				<div class="layui-input-block">
		        	<input type="text" name="aaa907"  value="${ins.aaa907 }" autocomplete="off" class="layui-input"  style="width:250px;">
	      		</div>
	    	</div>
	    </div>
	    
	    <div  style="display:block" class="layui-form-item" align="center">
		    <div class="layui-inline" style="width:400px">
		      	<label class="layui-form-label" style="width:120px">
	    			<i class="layui-icon layui-icon-more" style="font-size: 20px; color: black;"></i>
	    			按&thinsp;揭&thinsp;精&thinsp;确&thinsp;度
	    		</label>
				<div class="layui-input-block">
		        	<input type="text" name="aaa908"  value="${ins.aaa908 }" autocomplete="off" class="layui-input"  style="width:250px;">
	      		</div>
	    	</div>
	    </div>
	    
	    <div  style="display:block" class="layui-form-item" align="center">
		    <div class="layui-inline"  style="width:400px">
		      	<label class="layui-form-label" style="width:120px">
	    			<i class="layui-icon layui-icon-component" style="font-size: 20px; color: black;"></i>
	    			公&thinsp;积&thinsp;金&thinsp;银&thinsp;行
	    		</label>
				<div class="layui-input-block">
		        	<input type="text" name="aaa909" value="${ins.aaa909 }" autocomplete="off" class="layui-input"  style="width:250px;">
	      		</div>
	    	</div>
	    </div>
	    
	    <div style="visibility: visible" class="layui-form-item" align="center">
		    <div class="layui-inline" style="width:400px">
		      	<label class="layui-form-label"  style="width:120px">
	    			<i class="layui-icon layui-icon-more" style="font-size: 20px; color: black;"></i>
	    			公积金精确度
	    		</label>
				<div class="layui-input-block">
		        	<input type="text" name="aaa910" value="${ins.aaa910 }" autocomplete="off" class="layui-input"  style="width:250px;">
	      		</div>
	    	</div>
	    </div>  

		</div>
		</fieldset>

    	<div class="layui-form-item layui-form-text" align="center">
	    	<div class="layui-inline">
		      	<label class="layui-form-label" >
	    			<i class="layui-icon layui-icon-edit" style="font-size: 20px; color: black;"></i>
	    			备&#8195;&#8195;注
	    		</label>
		      	<div class="layui-input-block" >
		        <textarea cols="30" name="aaa911" class="layui-textarea">${ins.aaa911 }</textarea>
	      		</div>
	    	</div>
    	</div>

    	<div class="layui-form-item" align="left"  style="padding-left:450px">
				<div class="layui-inline">
						<input class="layui-btn" name="next" type="submit" value="${empty ins.aaa901?'添加':'修改'}"
							formaction="<%=path %>/aa/${empty ins.aaa901?'aa09Add.html':'aa09Modify.html' }">
						<input class="layui-btn layui-btn-warm" type="submit" value="返回"
						formaction="<%=path %>/aa/aa09Query.html" formnovalidate="formnovalidate">
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
		<input type="hidden" name="aaa901" value="${ins.aaa901 }">
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
	  laydate.render({
	    elem: '#date1'
	    ,trigger: 'click'
	});
	  
	  form.val('form',{
		  "aaa906":"${ins.aaa906}"
	  });
	 
	  
	  var count=0;
	  form.on('checkbox(check)',  function(data){
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
	  
	  form.on('radio(aaa906)', function(data){
		  var a = document.getElementById("aaa906").firstElementChild;
		  var hidden = document.getElementById("hidden");
		  if(a.checked==true){
			  hidden.style.display="block";
		  }else{
			  hidden.style.display="none";
		  }
		  
	  });
	  
	});
</script>

</body>