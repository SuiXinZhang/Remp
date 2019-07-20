<%@ page language="java" pageEncoding="GBK"%>
<%@include file="/base/taglib.jsp" %>
<html>
<head>
	<jsp:include   page="/base/head.jsp"/>
</head>
<body class="layui-layout-body">
<div class="layui-layout layui-layout-admin">
  	<jsp:include   page="/base/header.jsp"/>
	<jsp:include   page="/ad/menu.jsp"/>
  <div class="layui-body">
    <!-- ������������ -->
    <div style="padding: 15px;">
    <form class="layui-form" action="<%=path %>/ad/ad05add.html" method="post">
	<div class="layui-form-item" align="center">
			<div class="layui-inline">
				<label class="layui-form-label">�ͻ�����</label>
				<div class="layui-input-inline">
					<input type="text" name="aad508" required lay-verify="true" value="${ins.aad508 }"
					 autocomplete="off" class="layui-input">
				</div>
			</div>
			<div class="layui-inline">
				<label class="layui-form-label">�������</label>
				<div class="layui-input-inline">
					<input id="room" type="text" name="aad502" required lay-verify="true" value="${ins.aad502 }"
					 onclick="selectRoom()" readonly="readonly" class="layui-input">
					<input id="roomNo" type="hidden" name="aaa801" value="${ins.aaa801 }">
				</div>
			</div>
	</div>
	<div class="layui-form-item" align="center">
			<div class="layui-inline">
				<label class="layui-form-label">ǩ������</label>
				<div class="layui-input-inline">
					<input type="text" name="aad503" id="date1" required lay-verify="true" value="${ins.aad503 }"
					 autocomplete="off" class="layui-input">
				</div>
			</div>
			<div class="layui-inline">
				<label class="layui-form-label">ʧЧ����</label>
				<div class="layui-input-inline">
					<input type="text" name="aad504" id="date2" required lay-verify="true" value="${ins.aad504 }"
					autocomplete="off" class="layui-input">
				</div>
			</div>
	</div>
	<div class="layui-form-item" align="center">
			<div class="layui-inline">
				<label class="layui-form-label">ҵ��Ա</label>
				<div class="layui-input-inline">
					<input type="text" name="aad505" required lay-verify="true" value="${ins.aad505 }"
					 autocomplete="off" class="layui-input">
				</div>
			</div>
			<div class="layui-inline">
				<label class="layui-form-label">Ԥ��״̬</label>
				<div class="layui-input-inline">
					<input type="text" name="aad507" required lay-verify="true" value="${ins.aad507 }"
					autocomplete="off" class="layui-input">
				</div>
			</div>
	</div>
	<div class="layui-form-item" align="center">
			<div class="layui-inline">
				<label class="layui-form-label">��ע</label>
				<div class="layui-input-inline">
					<input type="text" name="aad506" required lay-verify="true" value="${ins.aad506 }"
					 autocomplete="off" class="layui-input">
				</div>
			</div>
	</div>
    <div class="layui-form-item" align="center">  	
    	<input type="submit" name="next" value="${empty param.aad501?'���':'�޸�' }" class="layui-btn layui-btn-normal" 
    	    formaction="${empty param.aad501?'ad05add':'ad05modify' }.html">
    	<input type="submit" name="next" value="�鿴" class="layui-btn layui-btn-normal" 
    		formnovalidate="formnovalidate" formaction="<%=path %>/ad/ad05query.html">
	</div>
<input type="hidden" name="aaa801" value="${ins.aaa801 }">
<input type="hidden" name="aac401" value="${ins.aac401 }">
<input type="hidden" name="aad501" value="${param.aad501 }">
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
//JavaScript��������
	layui.use(['layer', 'form','element'], function(){
	  var layer = layui.layer
      ,form = layui.form
	  ,element = layui.element;
	  if("${msg }" != "")
		{
			layer.msg('${msg }');	  
		}
	});
</script>
</body>
</html>