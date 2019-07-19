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
    <form class="layui-form" lay-filter="myform" action="<%=path%>/ac/ac01Add.html" method="post">

   �ͻ�����

	<div class="layui-form-item" align="center">
		<div class="layui-inline">
			<label class="layui-form-label">�ͻ�����</label>
				<div class="layui-input-inline">
					<input type="text" name="aac105" required lay-verify="true" value="${ins.aac105 }"
					 autofocus="autofocus" autocomplete="off" class="layui-input">
				</div>
		</div>
	</div>
	<div class="layui-form-item" align="center">
		<div class="layui-inline">
			<label class="layui-form-label">��ϵ�绰</label>
				<div class="layui-input-inline">
					<input type="text" name="aac106" required lay-verify="true" value="${ins.aac106 }"
					 autocomplete="off" class="layui-input">
				</div>
		</div>
	</div>
	<div class="layui-form-item" align="center">
		<div class="layui-inline">
			<label class="layui-form-label">���÷�ʽ</label>
				<div class="layui-input-inline">
					<input type="radio" name="aac103" value="�绰" title="�绰" checked>
					<input type="radio" name="aac103" value="�߷�" title="�߷�">
				</div>
		</div>
	</div>
	<div class="layui-form-item" align="center">
		<div class="layui-inline">
			<label class="layui-form-label">����ʱ��</label>
				<div class="layui-input-inline">
					<input type="text" name="aac102" id="date" required lay-verify="true" value="${ins.aac102 }"
					 autocomplete="off" class="layui-input">
				</div>
		</div>
	</div>
	<div class="layui-form-item" align="center">
		<div class="layui-inline">
			<label class="layui-form-label">��Ŀ����</label>
				<div class="layui-input-inline">
					<input type="text" name="aac104" required lay-verify="true" value="${ins.aac104 }"
					 autocomplete="off" class="layui-input">
				</div>
		</div>
	</div>
	<div class="layui-form-item" align="center">
		<div class="layui-inline">
			<label class="layui-form-label">��������</label>
				<div class="layui-input-inline">
					<select name="aac109">
						<option value="1" selected>1</option>
						<option value="2">2</option>
						<option value="3">3</option>
						<option value="4">4</option>
						<option value="5">5</option>
					</select>
				</div>
		</div>
	</div>
	<div class="layui-form-item" align="center">
		<div class="layui-inline">
			<label class="layui-form-label">��¼��</label>
				<div class="layui-input-inline">
					<input type="text" name="aac107" required lay-verify="true" value="${ins.aac107 }"
					 autocomplete="off" class="layui-input">
				</div>
		</div>
	</div>
	<div class="layui-form-item" align="center">
		<div class="layui-inline">
			<label class="layui-form-label">��¼�˱��</label>
				<div class="layui-input-inline">
					<input type="text" name="aac108" required lay-verify="true" value="${ins.aac108 }"
					 autocomplete="off" class="layui-input">
				</div>
		</div>
	</div>
	<div class="layui-form-item" align="center">
		<div class="layui-inline">
			<label class="layui-form-label">��ע</label>
				<div class="layui-input-inline">
					<textarea name="aac110" value="${ins.aac110 } class="layui-textarea"></textarea>
				</div>
		</div>
	</div>
    <div class="layui-form-item" align="center">
       <input type="submit" name="next" value="${empty param.aac101?'���':'�޸�'}" class="layui-btn layui-btn-normal"
        formaction="<%=path %>/ac/${empty param.aac101?'ac01Add.html':'ac01Modify.html' }">
       <input type="submit" name="next" value="����" class="layui-btn layui-btn-normal"
       formaction="<%=path %>/ac/ac01Query.html" formnovalidate="formnovalidate">
    </div>

<!-- ����Ĭ����Ŀ��,���ڴ�session�еõ� -->
<input type="hidden" name="aaa201" value="1"/>


<input type="hidden" name="aac101" value="${param.aac101 }">
<!--<input type="hidden" name="qaac102" value="{param. }">  -->
<e:hidden name="qaac111"/>
<e:hidden name="qaac109"/>
<e:hidden name="qaac103"/>
<e:hidden name="qaac105"/>
<e:hidden name="qaac104"/>
<e:hidden name="baac102"/>
<e:hidden name="eaac102"/>
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
		  "aac103":"${ins.aac103}",
		  "aac109":"${ins.aac109}"
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