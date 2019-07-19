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
 	<legend style="color:black"><h2>��Ŀ${empty param.aaa201?'���':'�޸�' }</h2></legend>
		<c:if test="${!empty msg }">
   	    	<label class="layui-form-label"  style="font-size: 18px; color:#009688;width:300px;" >
   			<i class="layui-icon layui-icon-set" style="font-size: 24px;"></i>
   			${msg }
   			</label>
   		</c:if>
  		<div class="layui-field-box">
	    <form action="" lay-filter="form" class="layui-form"  method="post">	
    	<!-- ���ύ�� -->	
	    <div class="layui-form-item" align="center">
	    	<div class="layui-inline">
	    		<label class="layui-form-label" >
	    			<i class="layui-icon layui-icon-face-smile" style="font-size: 20px; color: black;"></i>
	    			��&#8195;&#8195;��
	    		</label>
		      	<div class="layui-input-block">
		        	<input type="text" name="aaa202" required="required" value="${ins.aaa202 }" autocomplete="off" class="layui-input"  style="width:250px;">
	      		</div>
	    	</div>

	    	<div class="layui-inline">
	    		<label class="layui-form-label" >
	    			<i class="layui-icon layui-icon-location" style="font-size: 20px; color: black;"></i>
	    			��&#8195;&#8195;ַ
	    		</label>
		      	<div class="layui-input-block">
		        	<input type="text" name="aaa203" required="required" value="${ins.aaa203 }" autocomplete="off" class="layui-input"  style="width:250px;">
	      		</div>
	    	</div>
	    </div>
	    
	    <div class="layui-form-item" align="center">
		    <div class="layui-inline">
		      	<label class="layui-form-label" >
	    			<i class="layui-icon layui-icon-date" style="font-size: 20px; color: black;"></i>
	    			��������
	    		</label>
		      	<div class="layui-input-block">
		        	<input type="text" name="aaa204" id="date" lay-verify="date" required="required" value="${ins.aaa204 }" 
		        				autocomplete="off" class="layui-input"  style="width:250px;">
	      		</div>
	    	</div>

		    <div class="layui-inline">
		      	<label class="layui-form-label" >
	    			<i class="layui-icon layui-icon-date" style="font-size: 20px; color: black;"></i>
	    			��������
	    		</label>
		      	<div class="layui-input-block">
		        	<input type="text" name="aaa205" id="date1" lay-verify="date" required="required" value="${ins.aaa205 }" 
		        				autocomplete="off" class="layui-input"  style="width:250px;">
	      		</div>
	    	</div>
	    </div>
	    
	    <div class="layui-form-item" align="center">
		    <div class="layui-inline">
		      	<label class="layui-form-label" >
	    			<i class="layui-icon layui-icon-date" style="font-size: 20px; color: black;"></i>
	    			��������
	    		</label>
		      	<div class="layui-input-block">
		        	<input type="text" name="aaa206" id="date2" lay-verify="date" required="required" value="${ins.aaa206 }" 
		        				autocomplete="off" class="layui-input"  style="width:250px;">
	      		</div>
	    	</div>

		    <div class="layui-inline">
		      	<label class="layui-form-label" >
	    			<i class="layui-icon layui-icon-date" style="font-size: 20px; color: black;"></i>
	    			��������
	    		</label>
		      	<div class="layui-input-block">
		        	<input type="text" name="aaa207" id="date3" lay-verify="date" required="required" value="${ins.aaa207 }" 
		        				autocomplete="off" class="layui-input"  style="width:250px;">
	      		</div>
	    	</div>
	    </div>
	    
	    <div class="layui-form-item" align="center">
		    <div class="layui-inline">
		      	<label class="layui-form-label">
	    			<i class="layui-icon layui-icon-username" style="font-size: 20px; color: black;"></i>
	    			��&ensp;��&ensp;��
	    		</label>
				<div class="layui-input-block">
		        	<input type="text" name="aaa208" required="required" value="${ins.aaa208 }" autocomplete="off" class="layui-input"  style="width:250px;">
	      		</div>
	    	</div>

		    <div class="layui-inline">
		      	<label class="layui-form-label">
	    			<i class="layui-icon layui-icon-engine" style="font-size: 20px; color: black;"></i>
	    			��Ŀ״̬
	    		</label>
				<div class="layui-input-block" style="width:250px">
					<e:select value="�ﱸ:�ﱸ,�ڽ�:�ڽ�,�᰸:�᰸" header="true" name="aaa209" required="true" defval="${ins.aaa209 }" />
	      		</div>
	    	</div>
	    </div>
	    
	    <div class="layui-form-item" align="center">
		    <div class="layui-inline">
		      	<label class="layui-form-label">
	    			<i class="layui-icon layui-icon-survey" style="font-size: 20px; color: black;"></i>
	    			��Ŀ����
	    		</label>
				<div class="layui-input-block">
		        	<input type="text" name="aaa210" required="required" value="${ins.aaa210 }" autocomplete="off" class="layui-input"  style="width:250px;">
	      		</div>
	    	</div>

		    <div class="layui-inline">
		      	<label class="layui-form-label">
	    			<i class="layui-icon layui-icon-table" style="font-size: 20px; color: black;"></i>
	    			ռ�����
	    		</label>
				<div class="layui-input-block">
		        	<input type="text" name="aaa211" required="required" value="${ins.aaa211 }" autocomplete="off" class="layui-input"  
		        			style="width:250px;" onkeyup="this.value=this.value.replace(/\D|^0/g,'')" onafterpaste="this.value=this.value.replace(/\D|^0/g,'')">
	      		</div>
	    	</div>
	    </div>
	    
	    <div class="layui-form-item" align="center">
		    <div class="layui-inline">
		      	<label class="layui-form-label">
	    			<i class="layui-icon layui-icon-table" style="font-size: 20px; color: black;"></i>
	    			�������
	    		</label>
				<div class="layui-input-block">
		        	<input type="text" name="aaa212" required="required" value="${ins.aaa212 }" autocomplete="off" class="layui-input"  
		        			style="width:250px;" onkeyup="this.value=this.value.replace(/\D|^0/g,'')" onafterpaste="this.value=this.value.replace(/\D|^0/g,'')">
	      		</div>
	    	</div>

		    <div class="layui-inline">
		      	<label class="layui-form-label">
	    			<i class="layui-icon layui-icon-table" style="font-size: 20px; color: black;"></i>
	    			�������
	    		</label>
				<div class="layui-input-block">
		        	<input type="text" name="aaa213" required="required" value="${ins.aaa213 }" autocomplete="off" class="layui-input"  style="width:250px;">
	      		</div>
	    	</div>
	    </div>
	    
	    <div class="layui-form-item" align="center">
		    <div class="layui-inline">
		      	<label class="layui-form-label">
	    			<i class="layui-icon layui-icon-chart" style="font-size: 20px; color: black;"></i>
	    			��������
	    		</label>
				<div class="layui-input-block">
		        	<input type="text" name="aaa214" required="required" value="${ins.aaa214 }" autocomplete="off" class="layui-input"  style="width:250px;">
	      		</div>
	    	</div>

		    <div class="layui-inline">
		      	<label class="layui-form-label">
	    			<i class="layui-icon layui-icon-rmb" style="font-size: 20px; color: black;"></i>
	    			���۵���
	    		</label>
				<div class="layui-input-block">
		        	<input type="text" name="aaa215" required="required" value="${ins.aaa215 }" autocomplete="off" class="layui-input"  style="width:250px;">
	      		</div>
	    	</div>
	    </div>
	    
	     <div class="layui-form-item" align="center">
		    <div class="layui-inline">
		      	<label class="layui-form-label">
	    			<i class="layui-icon layui-icon-tree" style="font-size: 20px; color: black;"></i>
	    			��Ŀ����
	    		</label>
				<div class="layui-input-block">
		        	<input type="text" name="aaa216" value="${ins.aaa216 }" autocomplete="off" class="layui-input"  style="width:250px;" >
	      		</div>
	    	</div>

	    	<div class="layui-inline">
	    		<label class="layui-form-label" >
	    			<i class="layui-icon layui-icon-edit" style="font-size: 20px; color: black;"></i>
	    			��ӱ�ע
	    		</label>
		      	<div class="layui-input-block" >
		      		<input type="text" name="aaa217" required="required" value="${ins.aaa217 }" autocomplete="off" class="layui-input"  style="width:250px;" >
		        
	      		</div>
	    	</div>
    	</div>

    	<div class="layui-form-item" align="center">
				<div class="layui-inline">
						<input class="layui-btn" name="next" type="submit" value="${empty ins.aaa201?'���':'�޸�'}"
							formaction="<%=path %>/aa/${empty ins.aaa201?'aa02Add.html':'aa02Modify.html' }">
						<input class="layui-btn layui-btn-warm" type="submit" value="����"
						formaction="<%=path %>/aa/aa02Query.html" formnovalidate="formnovalidate">
				</div>
			</div>
			
		<input type="hidden" name="aaa201" value="${ins.aaa201 }"> 
		<input type="hidden" name="aaa101" value="1">
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
	  laydate.render({
		  elem:'#date1'
		  ,trigger: 'click'
	  });
	  laydate.render({
		  elem:'#date2'
		  ,trigger: 'click'
	  });
	  laydate.render({
		  elem:'#date3'
		  ,trigger: 'click'
	  });
});
</script>
</body>