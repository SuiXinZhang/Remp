<%@ page language="java" pageEncoding="GBK"%>
<%@include file="/base/taglib.jsp"%>
<html>
<head>
	<jsp:include page="/base/head.jsp" />
</head>
<body class="layui-layout-body">
	<div class="layui-layout layui-layout-admin">
		<jsp:include page="/base/header.jsp" />
		<jsp:include page="/af/menu.jsp" />
		<div class="layui-body">
				<div class="layui-anim layui-anim-scale"
				style="padding: 15px; margin: 30px 80px;">
				<fieldset class="layui-elem-field layui-filed-title" style="margin-top: 20px;padding-top: 20px">
					<legend> ����Ʊ��</legend>
    <form class="layui-form" lay-filter="myform" action= "<%=path%>/ac/af02WriteOffNote.html" method="post">
  
	<div class="layui-form-item" align="left">
	
		<div class="layui-inline" style="padding-left:237px">
			<label class="layui-form-label" style="width:100px">
			<i class="layui-icon layui-icon-auz" style="font-size: 20px; color: black;"></i>
			Ʊ�����κ�
			</label>
				<div class="layui-input-inline">
					<input type="text" name="aaf202" required lay-verify="true" value="${param.aaf202 }"
					 autocomplete="off" readonly="readonly" class="layui-input">
				</div>
		</div>
	</div>
	
	<div class="layui-form-item" align="center">
		<div class="layui-inline">
			<label class="layui-form-label" style="width:100px">
			<i class="layui-icon layui-icon-prev" style="font-size: 20px; color: black;"></i>
			&thinsp;��&thinsp;ʼ&thinsp;��&thinsp;��&thinsp;
			</label>
				<div class="layui-input-inline">
					<input type="number" name="aaf203" required lay-verify="true" value="${param.aaf203 }"
					 autocomplete="off" step="1" class="layui-input">
				</div>
		</div>
	
		<div class="layui-inline">
			<label class="layui-form-label" >
			<i class="layui-icon layui-icon-next" style="font-size: 20px; color: black;"></i>
			��ֹ���
			</label>
				<div class="layui-input-inline">
					<input type="number" name="aaf204" required lay-verify="true" value="${param.aaf204 }"
					 autocomplete="off" step="1" class="layui-input">
				</div>
		</div>
	</div>
	
	<div class="layui-form-item" align="center">
		<div class="layui-inline">
			<label class="layui-form-label" style="width:100px">
			<i class="layui-icon layui-icon-user" style="font-size: 20px; color: black;"></i>
			��&emsp;��&emsp;��
			</label>
				<div class="layui-input-inline">
					<input type="text" name="aaf205" required lay-verify="true" value="${param.aaf205 }"
					 autocomplete="off" class="layui-input">
				</div>
		</div>
	
		<div class="layui-inline">
			<label class="layui-form-label">
			<i class="layui-icon layui-icon-date" style="font-size: 20px; color: black;"></i>
			��������
			</label>
				<div class="layui-input-inline">
					<input type="text" name="aaf206" id="date" required lay-verify="true" value="${param.aaf206 }"
					 autocomplete="off" class="layui-input">
				</div>
		</div>
	</div>
	
	<div class="layui-form-item" align="center">
		<div class="layui-inline">
			<label class="layui-form-label" style="width:100px">
			<i class="layui-icon layui-icon-username" style="font-size: 20px; color: black;"></i>
			��&emsp;Ʊ&emsp;��
			</label>
				<div class="layui-input-inline">
					<input type="text" name="aaf210" required lay-verify="true" 
					 autocomplete="off" class="layui-input">
				</div>
		</div>
		<div class="layui-inline" >
			<label class="layui-form-label" >
			<i class="layui-icon layui-icon-date" style="font-size: 20px; color: black;"></i>
			��Ʊ����
			</label>
				<div class="layui-input-inline">
					<input type="text" name="aaf211" id="date1" required lay-verify="true" 
					 autocomplete="off" class="layui-input">
				</div>
		</div>
		
	</div>
	
	<div class="layui-form-item" align="left">
		<div class="layui-inline" style="padding-left:237px">
			<label class="layui-form-label" style="width:100px">
			<i class="layui-icon layui-icon-rmb" style="font-size: 20px; color: black;"></i>
			&thinsp;��&thinsp;Ʊ&thinsp;��&thinsp;��&thinsp;
			</label>
				<div class="layui-input-inline">
					<input type="text" name="aaf209" required lay-verify="true" 
					 autocomplete="off" class="layui-input">
				</div>
		</div>
	</div>
	
	<div class="layui-form-item" align="center">
		<div class="layui-inline">
			<label class="layui-form-label" style="width:100px">
			<i class="layui-icon layui-icon-component" style="font-size: 20px; color: black;"></i>
			��&emsp;��&emsp;��
			</label>
				<div class="layui-input-inline">
					<input type="text" name="aaf213" required lay-verify="true" 
					 autocomplete="off" class="layui-input">
				</div>
		</div>
	
		<div class="layui-inline">
			<label class="layui-form-label">
			<i class="layui-icon layui-icon-date" style="font-size: 20px; color: black;"></i>
			��������
			</label>
				<div class="layui-input-inline">
					<input type="text" name="aaf214" id="date2" required lay-verify="true" 
					 autocomplete="off" class="layui-input">
				</div>
		</div>
	</div>
	
    <div class="layui-form-item" align="center">
	<div class="layui-inline">
			<button class="layui-btn " name="next" type="submit" >
			<i class="layui-icon layui-icon-ok"></i>ȷ�Ϻ���
			</button>
	</div>
	<div class="layui-inline">
			<button class="layui-btn " name="next" type="submit" formnovalidate="formnovalidate"
			formaction="<%=path%>/af/af02Query.html">
			<i class="layui-icon layui-icon-return"></i>����
			</button>
	</div>
    </div>
<e:hidden name="aaf201" value="${param.aaf201 }"/>
<input type="hidden" name="qaaf207" value="3" />
</form>
</fieldset>
		</div>
	</div>
	<script>
//JavaScript��������
	layui.use(['layer', 'form','element','laydate'], function(){
	  var element = layui.element
	  ,layer = layui.layer
	  ,form = layui.form
	  ,laydate = layui.laydate;
	  
	  if("${msg }" != "")
	  {
		  layer.msg("${msg }");
	  }
	
	  //ִ��һ��laydateʵ��
	  /* laydate.render({
	    elem: '#date'  //ָ��Ԫ��
	    ,trigger: 'click'
	  }); */
	  laydate.render({
		    elem: '#date1'  //ָ��Ԫ��
		    ,trigger: 'click'
	  });
	  laydate.render({
		    elem: '#date2'  //ָ��Ԫ��
		    ,trigger: 'click'
	  });
	});
</script>
</body>
</html>