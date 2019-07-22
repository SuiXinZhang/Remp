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
 	<legend style="color:black"><h2>������Ϣ�����޸�</h2></legend>
  		<div class="layui-field-box">
	    <form action="" lay-filter="form" class="layui-form"  method="post">	
    	<!-- ���ύ�� -->	
	    <div class="layui-form-item" align="center">

	    	
	    	<div class="layui-inline">
		      	<label class="layui-form-label">
	    			<i class="layui-icon layui-icon-templeate-1" style="font-size: 20px; color: black;"></i>
	    			��&emsp;&emsp;��
	    		</label>
				<div class="layui-input-block" style="width:250px;">
					<e:select value="${ins.aaa502 }" header="true" name="aaa807" required="true" defval="${ins.aaa807 }" />
	      		</div>
	    	</div>
	    </div>
	    
	    <div class="layui-form-item" align="center">
		    <div class="layui-inline">
		      	<label class="layui-form-label">
	    			<i class="layui-icon layui-icon-release" style="font-size: 20px; color: black;"></i>
	    			��������
	    		</label>
				<div class="layui-input-block" style="width: 250px;">
					<input type="radio" name="aaa806" value="����" title="����">
      				<input type="radio" name="aaa806" value="����" title="����" >
      				<input type="radio" name="aaa806" value="����" title="����">
	      		</div>
	    	</div>
	   	</div>
	    
	    <div class="layui-form-item" align="center">
	    	
	    	<div class="layui-inline">
		      	<label class="layui-form-label">
	    			<i class="layui-icon layui-icon-engine" style="font-size: 20px; color: black;"></i>
	    			״&emsp;&emsp;̬
	    		</label>
				<div class="layui-input-block" style="width: 250px;">
					<input type="radio" name="aaa805" value="01" title="�ȴ�">
      				<input type="radio" name="aaa805" value="02" title="ǩԼ" >
      				<input type="radio" name="aaa805" value="03" title="����">
	      		</div>
	    	</div>
	    </div>
	    
	    <div class="layui-form-item" align="center">
		    <div class="layui-inline">
		      	<label class="layui-form-label">
	    			<i class="layui-icon layui-icon-rmb" style="font-size: 20px; color: black;"></i>
	    			��������
	    		</label>
				<div class="layui-input-block">
		        	<input type="text" name="aaa808" required="required" autocomplete="off" class="layui-input"  
		        			style="width:250px;" onkeyup="this.value=this.value.replace(/\D|^0/g,'')" onafterpaste="this.value=this.value.replace(/\D|^0/g,'')">
	      		</div>
	    	</div>
	    </div>
	    
	    <div class="layui-form-item" align="center">

		    <div class="layui-inline">
		      	<label class="layui-form-label">
	    			<i class="layui-icon layui-icon-rmb" style="font-size: 20px; color: black;"></i>
	    			���ڵ���
	    		</label>
				<div class="layui-input-block">
		        	<input type="text" name="aaa810" required="required" autocomplete="off" class="layui-input"  style="width:250px;">
	      		</div>
	    	</div>
	    </div>
	    
    	<div class="layui-form-item layui-form-text" align="center">
	    	<div class="layui-inline">
		      	<label class="layui-form-label" >
	    			<i class="layui-icon layui-icon-edit" style="font-size: 20px; color: black;"></i>
	    			��&#8195;&#8195;ע
	    		</label>
		      	<div class="layui-input-block" >
		        <textarea cols="30" name="aaa812" class="layui-textarea"></textarea>
	      		</div>
	    	</div>
    	</div>

    	<div class="layui-form-item" align="left"  style="padding-left:450px">
				<div class="layui-inline">
						<input class="layui-btn" name="next" type="submit" value="�޸�"
							formaction="<%=path %>/aa/aa08Modify.html">
						<input class="layui-btn layui-btn-warm" type="submit" value="����"
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
		
		<div  style="display: none">
			<c:forEach items='<%= request.getParameterValues("idlist") %>' var="ins" varStatus="vs">
				<input type="checkbox" name="List" value="${ins }" checked="checked">
			</c:forEach>
		</div>


		<e:hidden name="qdanyuan" />
		<e:hidden name="qlouceng" />
		<e:hidden name="qhuhao" />
		<e:hidden name="qaaa802" />
		<e:hidden name="qaaa805" />
		<e:hidden name="qaaa806" />
		<e:hidden name="qaaa807" />
		<e:hidden name="baaa808" />
		<e:hidden name="eaaa808" />
		<e:hidden name="baaa809" />
		<e:hidden name="eaaa809" />
		<e:hidden name="baaa810" />
		<e:hidden name="eaaa810" />
		<e:hidden name="baaa811" />
		<e:hidden name="eaaa811" />

		<input type="hidden" name="aaa201" value="1"> 
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