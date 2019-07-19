<%@ page language="java" pageEncoding="GBK"%>
<%@include file="/base/taglib.jsp" %>
<html>
<head>
	<jsp:include   page="/base/head.jsp"/>
</head>
<body class="layui-layout-body">
<div class="layui-layout layui-layout-admin">
  	<jsp:include   page="/base/header.jsp"/>
	<jsp:include   page="/ac/menu.jsp"/>
  <div class="layui-body">
    	
    <div style="padding: 15px;">
    <form class="layui-form" lay-filter="myform" action="<%=path%>/ac/ac03Add.html" id="form" method="post">
				�ͻ�����

	<div class="layui-form-item" align="center">
		<div class="layui-inline">
			<label class="layui-form-label">�ͻ�����</label>
				<div class="layui-input-inline">
					<input type="text" name="aac403" required lay-verify="true" value="${empty param.aac401?ins.aac403:param.aac403 }"
					 readonly="readonly" autocomplete="off" class="layui-input">
				</div>
		</div>
	</div>
	<div class="layui-form-item" align="center">
		<div class="layui-inline">
			<label class="layui-form-label">�ͻ����</label>
				<div class="layui-input-inline">
					<input type="text" name="aac402" required lay-verify="true" value="${empty param.aac401?ins.aac402:param.aac402 }"
					 readonly="readonly" autocomplete="off" class="layui-input">
				</div>
		</div>
	</div>
	<div class="layui-form-item" align="center">
		<div class="layui-inline">
			<label class="layui-form-label">����״̬</label>
				<div class="layui-input-inline">
					<select name="aac304">
						<option value="01" selected>δ����</option>
						<option value="02">�Ѹ���</option>
						<option value="03">���ٴθ���</option>
					</select>
				</div>
		</div>
	</div>
	<div class="layui-form-item" align="center">
		<div class="layui-inline">
			<label class="layui-form-label">��������</label>
				<div class="layui-input-inline">
					<textarea name="aac303" required lay-verify="true" value="${ins.aac303 }"
					 class="layui-textarea"></textarea>
				</div>
		</div>
	</div>
	<div class="layui-form-item" align="center">
		<div class="layui-inline">
			<label class="layui-form-label">��������</label>
				<div class="layui-input-inline">
					<input type="text" name="aac303" required lay-verify="true" value="${ins.aac303 }"
					 autocomplete="off" class="layui-input">
				</div>
		</div>
	</div>
	<div class="layui-form-item" align="center">
		<div class="layui-inline">
			<label class="layui-form-label">����ʱ��</label>
				<div class="layui-input-inline">
					<input type="text" name="aac305" id="date" required lay-verify="true" value="${ins.aac305 }"
					 autocomplete="off" class="layui-input">
				</div>
		</div>
	</div>
	<div class="layui-form-item" align="center">
		<div class="layui-inline">
			<label class="layui-form-label">����ҵ��Ա</label>
				<div class="layui-input-inline">
					<input type="text" name="aac306" required lay-verify="true" value="${ins.aac306 }"
					 autocomplete="off" class="layui-input">
				</div>
		</div>
	</div>
	<div class="layui-form-item" align="center">
		<div class="layui-inline">
			<label class="layui-form-label">Ա�����</label>
				<div class="layui-input-inline">
					<input type="text" name="aac307" required lay-verify="true" value="1"
					 readonly="readonly" autocomplete="off" class="layui-input">
				</div>
		</div>
	</div>
			
	<div class="layui-form-item" align="center">			
		<input type="submit" name="next" class="layui-btn layui-btn-normal"
		value="${empty ins.aac301?'���':'�޸�'}"
		formaction="<%=path %>/ac/${empty ins.aac301?'ac03Add.html':'ac03Modify.html' }">
	</div>				
		<input type="hidden" name="aac301" value="${ins.aac301 }"> 
		<input type="hidden" name="aac401" value="${empty param.aac401?ins.aac401:param.aac401 }">
		<e:hidden name="qaac301" />
		<e:hidden name="qaac307" />
		<e:hidden name="qaac305" />
		<e:hidden name="qaac303" />
		<e:hidden name="qaac302" />
	</form>
    </div>
  </div>
  
  <div class="layui-footer">
    <!-- �ײ��̶����� -->
  </div>
</div>
<script>
//JavaScript��������
	layui.use(['layer', 'form','element'], function(){
	  var layer = layui.layer
	  ,form = layui.form;
	  var element = layui.element();
	  layer.msg('Hello World');
	  form.val('myform',{
		  "aac304":"${ins.cnaac304}"
	  });
	});
	layui.use('laydate', function(){
		  var laydate = layui.laydate;
		 
		  //ִ��һ��laydateʵ��
		  laydate.render({
		    elem: '#date'  //ָ��Ԫ��
		  });
		});
</script>
</body>
</html>