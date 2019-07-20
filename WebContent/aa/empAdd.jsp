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
 	<legend style="color:black"><h2>员工${empty param.aaa401?'添加':'修改' }</h2></legend>
  		<div class="layui-field-box">
	    <form action="" lay-filter="form" class="layui-form"  method="post">	
    	<!-- 表单提交区 -->	
	    <div class="layui-form-item" align="center">
	    	<div class="layui-inline">
	    		<label class="layui-form-label" >
	    			<i class="layui-icon layui-icon-face-smile" style="font-size: 20px; color: black;"></i>
	    			姓&#8195;&#8195;名
	    		</label>
		      	<div class="layui-input-block">
		        	<input type="text" name="aaa403" required="required" value="${ins.aaa403 }" autocomplete="off" class="layui-input"  style="width:250px;">
	      		</div>
	    	</div>

		    <div class="layui-inline">
		      	<label class="layui-form-label" >
	    			<i class="layui-icon layui-icon-senior" style="font-size: 20px; color: black;"></i>
	    			岗&#8195;&#8195;位
	    		</label>
		      	<div class="layui-input-block">
		        	<input type="text" name="aaa404"  required="required" value="${ins.aaa404 }" 
		        				autocomplete="off" class="layui-input"  style="width:250px;">
	      		</div>
	    	</div>
	    </div>
	    
	    <div class="layui-form-item" align="center">
		    <div class="layui-inline">
		      	<label class="layui-form-label" >
	    			<i class="layui-icon layui-icon-home" style="font-size: 20px; color: black;"></i>
	    			所属部门
	    		</label>
		      	<div class="layui-input-block"  style="width:250px;">
		      		<%
						if(request.getAttribute("ins")!=null)
						{
					%> 
						<e:select value="${ins.allaaa302 }" name="upaaa301" required="true" defval="${ins.aaa301}" />
					<%
						}
						else{
					%>
						<input type="text" name="aaa405" required="required" value="${param.aaa405 }" readonly="readonly" autocomplete="off" class="layui-input"  style="width:250px;">
					<%
						}
					%>
	      		</div>
	    	</div>

		    <div class="layui-inline">
		      	<label class="layui-form-label">
	    			<i class="layui-icon layui-icon-rate-half" style="font-size: 20px; color: black;"></i>
	    			性&#8195;&#8195;别
	    		</label>
				<div class="layui-input-block"  style="width: 250px;">
					<input type="radio" name="aaa407" value="男"  title="男" checked="">
      				<input type="radio" name="aaa407" value="女" title="女" >
      				<input type="radio" name="aaa407" value="不确定" title="不确定">
	      		</div>
	    	</div>
	    </div>
	    
	    <div class="layui-form-item" align="center">
		    <div class="layui-inline">
		      	<label class="layui-form-label">
	    			<i class="layui-icon layui-icon-user" style="font-size: 20px; color: black;"></i>
	    			民&#8195;&#8195;族
	    		</label>
				<div class="layui-input-block">
		        	<input type="text" name="aaa406" required="required" value="${ins.aaa406 }" autocomplete="off" class="layui-input"  style="width:250px;">
	      		</div>
	    	</div>

		    <div class="layui-inline">
		      	<label class="layui-form-label" >
	    			<i class="layui-icon layui-icon-date" style="font-size: 20px; color: black;"></i>
	    			生&#8195;&#8195;日
	    		</label>
		      	<div class="layui-input-block">
	      			<input type="text"  name="aaa411" id="date" value="${ins.aaa411 }" lay-verify="date" 
	      				 autocomplete="off" class="layui-input" style="width:250px;">
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
		        	<input type="text" name="aaa408" required="required" value="${ins.aaa408 }" autocomplete="off" class="layui-input"  style="width:250px;">
	      		</div>
	    	</div>

		    <div class="layui-inline">
		      	<label class="layui-form-label">
	    			<i class="layui-icon layui-icon-location" style="font-size: 20px; color: black;"></i>
	    			住&#8195;&#8195;址
	    		</label>
				<div class="layui-input-block">
		        	<input type="text" name="aaa409" required="required" value="${ins.aaa409 }" autocomplete="off" class="layui-input"  style="width:250px;">
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
						<input class="layui-btn" name="next" type="submit" value="${empty ins.aaa401?'添加':'修改'}"
							formaction="<%=path %>/aa/${empty ins.aaa401?'aa04Add.html':'aa04Modify.html' }">
						<input class="layui-btn layui-btn-warm" type="submit" value="返回"
						formaction="<%=path %>/aa/aa04Query.html" formnovalidate="formnovalidate">
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
		<input type="hidden" name="aaa301" value="${param.aaa301 }"> 
		<input type="hidden" name="aaa401" value="${ins.aaa401 }"> 
		<input type="hidden" name="aaa302" value="${param.aaa405 }">
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