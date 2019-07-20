<%@ page language="java" pageEncoding="GBK"%>
<%@include file="/base/taglib.jsp" %>
<html>
<head>
	<jsp:include   page="/base/head.jsp"/>
</head>
<body class="layui-layout-body">
<div class="layui-layout layui-layout-admin">
  	<jsp:include   page="/base/header.jsp"/>
	<jsp:include   page="/ab/menu.jsp"/>
  <div class="layui-body">
    <!-- ������������ -->
    <div style="padding: 15px;">
    
    	<form class="layui-form" lay-filter="myform" action="<%=path%>/ab/ab03Add.html" method="post">
		
			<fieldset class="layui-elem-field layui-field-title" style="margin-top: 20px;">
				<legend>${empty param.aab101?'����':'�޸�' }Ӫ������</legend>
			</fieldset>
			
			<div class="layui-form-item">
				<label class="layui-form-label">��������</label>
				<div class="layui-input-block">
					<input type="text" name="aab302" value="${ins.aab302 }" required="true" autofocus="true" class="layui-input">
				</div>
			</div>
			
			<div class="layui-form-item">
				<label class="layui-form-label">Ԥ�����</label>
				<div class="layui-input-block">
					<input type="number" step="0.01" name="aab303" value="${ins.aab303 }" required="true" class="layui-input">
				</div>
			</div>
			
			<div class="layui-form-item">
				<label class="layui-form-label">״̬</label>
				<div class="layui-input-block">
					<select name="aab304" lay-verify="">
						<option value="">��ѡ�񷽰�״̬</option>
						<option value="01" selected="selected">�ƻ���</option>
						<option value="02">ִ����</option>
						<option value="03">�����</option>
					</select>
				</div>
			</div>
			
			<div class="layui-form-item">
				<div class="layui-inline">
					<label class="layui-form-label">�ƶ�����</label>
					<div class="layui-input-inline">
						<input type="text" name="aab305" required="true" value="${ins.aab305 }" class="layui-input" id="test29" placeholder="yyyy-MM-dd">
					</div>
				</div>
			</div>
			
			<div class="layui-form-item">
				<label class="layui-form-label">�ƶ���</label>
				<div class="layui-input-block">
					<input name="aab306" required="true" value="${ins.aab306 }" class="layui-input">
				</div>
			</div>
			
			<div class="layui-form-item layui-form-text">
				<label class="layui-form-label">��������</label>
				<div class="layui-input-block">
					<textarea placeholder="����������" name="aab307" value="${ins.aab307 }" class="layui-textarea"></textarea>
				</div>
			</div>
				
			<div class="layui-form-item" align="center">
				<input type="submit" name="next" value="${empty param.aab301?'���':'�޸�' }" 
				formaction="<%=path%>/${empty param.aab301?'ab/ab03Add':'ab/ab03Modify' }.html" class="layui-btn"/>
				<input type="submit" name="next" value="����"
				formaction="<%=path %>/ab/ab03Query.html"
				formnovalidate="formnovalidate" class="layui-btn">
			
				<!-- <input id="layer" type="submit" name="next" value="�༭Ӫ���"
					formaction="<%=path %>/ab/ab04FindById.html"> -->	
			</div>	 
		 	
			<input type="hidden" name="aab301" value="${param.aab301 }">
	</form>
    
    </div>
    
  </div>
  
  <div class="layui-footer">
    <!-- �ײ��̶����� -->
    ? layui.com - �ײ��̶�����
  </div>
</div>
<script ></script>
<script>

window.onload=function()
{
	var obj = document.getElementById("layer");
	if(${empty ins})
	{
		obj.style.display = "none";
	} 
}

//JavaScript��������
	layui.use(['layer','element','form'], function(){
		var element = layui.element;
		  var layer = layui.layer
		  ,form = layui.form;
		  
		  layer.msg('Hello World');
		  form.val('myform',{
			  "aab304":"${ins.aab304}"
		  });
		});
	
	//״̬������Ĭ��ֵ����	
	
	  
	//����ѡ���
	  layui.use('laydate', function() {
	  	var laydate = layui.laydate;
	  	//ī������
	  	laydate.render({
	  		elem: '#test29',
	  		theme: 'molv',
	  	});
	  });
</script>
</body>
</html>