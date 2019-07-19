<%@ page language="java" pageEncoding="GBK"%>
<%@include file="/base/taglib.jsp" %>
<html>
<head>
	<jsp:include   page="/base/head.jsp"/>
<script>
     //JavaScript��������	
	//һ��ֱ��д��һ��js�ļ���
	layui.use(['layer', 'form','element'], function(){
	  var layer = layui.layer
	  ,form = layui.form;
	  var element = layui.element();
	  layer.msg('Hello World');
	  form.val('myform',{
		  "aad112":"${ins.aad112}",
	  });
	});
	layui.use('laydate', function(){
		  var laydate = layui.laydate;
		 
		  //ִ��һ��laydateʵ��
		  laydate.render({
		    elem: '#date1'  //ָ��Ԫ��
		  });
		  laydate.render({
			elem: '#date2'  //ָ��Ԫ��
			  });
		  laydate.render({
			elem: '#date3'  //ָ��Ԫ��
			  });
		});
</script>
</head>
<body class="layui-layout-body">
<div class="layui-layout layui-layout-admin">
  	<jsp:include   page="/base/header.jsp"/>
	<jsp:include   page="/ad/menu.jsp"/>
  <div class="layui-body">
    <!-- ������������ -->
    <div style="padding: 150px;font-size: 16;">
	<form lay-filter="myform" class="layui-form" action="<%=path %>/ad/ad01addOrder.html" method="post">

	    <div class="layui-form-item" align="left">
			<div class="layui-inline">
				<label class="layui-form-label">��Ŀ����</label>
				<div class="layui-input-inline">
					<input type="text" name="oaad102" required lay-verify="true" value="${ins.aad102 }"
					 autocomplete="off" class="layui-input">
				</div>
			</div>
			<div class="layui-inline">
				<label class="layui-form-label">�ͻ�����</label>
				<div class="layui-input-inline">
					<input type="text" name="oaad103" required lay-verify="true" value="${ins.aad103 }"
							 autocomplete="off" class="layui-input">
				</div>
			</div>
			<div class="layui-inline">
				<label class="layui-form-label">ԤԼ����</label>
				<div class="layui-input-inline">
					<input type="text" name="oaad105" required lay-verify="true" value="${ins.aad105 }"
					    id="date1" autocomplete="off" class="layui-input">
				</div>
			</div>
		</div>
		<div class="layui-form-item" align="left">
			<div class="layui-inline">
				<label class="layui-form-label">ʧЧ����</label>
				<div class="layui-input-inline">
					<input type="text" name="oaad106" required lay-verify="true" value="${ins.aad106 }"
						id="date2" autocomplete="off" class="layui-input">
				</div>
			</div>
			<div class="layui-inline">
				<label class="layui-form-label">����</label>
				<div class="layui-input-inline">
					<input type="text" name="oaad110" required lay-verify="true" value="${ins.aad110 }"
					    autocomplete="off" class="layui-input">
				</div>
			</div>
			<div class="layui-inline">
				<label class="layui-form-label">Ӧ��ԤԼ��</label>
				<div class="layui-input-inline">
					<input type="number" step="0.01" name="oaad111" required lay-verify="true" 
					     value="${ins.aad111 }" autocomplete="off" class="layui-input">
				</div>
			</div>
		</div>
		<div class="layui-form-item" align="left">
			<div class="layui-inline">
				<label class="layui-form-label">����</label>
				<div class="layui-input-inline">
					<select name="oaad112">
						<option value="01" selected>�����</option>
						<option value="02">��Ԫ</option>
						<option value="03">Ӣ��</option>
						<option value="04">��Ԫ</option>
						<option value="05">ŷԪ</option>
					</select>
				</div>
			</div>
			<div class="layui-inline">
				<label class="layui-form-label">ʵ��ԤԼ��</label>
				<div class="layui-input-inline">
					<input type="number" step="0.01" name="oaad113" required lay-verify="true" 
					 value="${ins.aad113 }" autocomplete="off" class="layui-input">
				</div>
			</div>
			<div class="layui-inline">
				<label class="layui-form-label">Ȩ����</label>
				<div class="layui-input-inline">
					<input type="text" name="oaad109" required lay-verify="true" value="${ins.aad109 }"
							 autocomplete="off" class="layui-input">
				</div>
			</div>
		</div>
		<div class="layui-form-item" align="left">
			<div class="layui-inline">
				<label class="layui-form-label">ҵ��Ա</label>
				<div class="layui-input-inline">
					<input type="text" name="oaad114" required lay-verify="true" value="${ins.aad114 }"
					 autocomplete="off" class="layui-input">
				</div>
			</div>
			<div class="layui-inline">
				<label class="layui-form-label">��ע</label>
				<div class="layui-input-inline">
					<input type="text" name="oaad115" required lay-verify="true" value="${ins.aad115 }"
							 autocomplete="off" class="layui-input">
				</div>
			</div>
			<c:if test="${!empty param.aad101 }">
				<div class="layui-inline">
				<label class="layui-form-label">ʵ���ź�</label>
					<div class="layui-input-inline">
						<input type="text" name="oaad104" value="${ins.aad104 }"
							 autocomplete="off" class="layui-input">
					</div>
				</div>
			</c:if>
		</div>
		<div class="layui-form-item" align="left">
			<c:if test="${!empty param.aad101 }">
			<div class="layui-inline">
				<label class="layui-form-label">��Ŀ�ź�</label>
					<div class="layui-input-inline">
						<input type="text" name="oaad107" value="${ins.aad107 }"
							 autocomplete="off" class="layui-input">
					</div>
				</div>
			<div class="layui-inline">
				<label class="layui-form-label">�����ź�</label>
					<div class="layui-input-inline">
						<input type="text" name="oaad108" value="${ins.aad108 }"
							 autocomplete="off" class="layui-input">
					</div>
			</div>
				<div class="layui-inline">
				<label class="layui-form-label">�˺�����</label>
					<div class="layui-input-inline">
						<input type="text" id="date3" name="aad202" value="${ins.aad202 }"
							 autocomplete="off" class="layui-input">
					</div>
				</div>
			</c:if>
		</div>
		<div class="layui-form-item" align="left">
			<c:if test="${!empty param.aad101 }">
				<div class="layui-inline">
				<label class="layui-form-label">�˺�ԭ��</label>
					<div class="layui-input-inline">
						<input type="text" name="aad203" value="${ins.aad203 }"
							 autocomplete="off" class="layui-input">
					</div>
				</div>
			</c:if>
		</div>
       <div class="layui-form-item" align="center">
       <input type="submit" name="next" value="${empty param.aad101?'���':'�޸�'}" class="layui-btn layui-btn-normal"
              formaction="${empty param.aad101?'ad01addOrder':'ad01modifyOrder'}.html">
       <input type="submit" name="next" value="${empty param.aad101?'�鿴':'����' }" 
              formaction="<%=path%>/ad/ad01queryOrder.html" class="layui-btn layui-btn-normal"
              formnovalidate="formnovalidate">
       <input type="submit" name="text" value="�˺�"  class="layui-btn layui-btn-normal"
              formaction="<%=path%>/ad/ad02addWithdrawOrder.html">
       <input type="submit" name="text" value="���ɸ�������" class="layui-btn layui-btn-normal"
         	  formaction="<%=path%>/af/af03otherTurnReceipt.html?add101=${param.aad101 }" formnovalidate="formnovalidate">
       </div>
<input type="hidden" name="aad101" value="${param.aad101 }">
<input type="hidden" name="oaac401" value="${ins.aac401 }">
</form>
    </div>
  </div>
  
  <div class="layui-footer">
    <!-- �ײ��̶����� -->
    ? layui.com - �ײ��̶�����
  </div>
</div>
</body>
</html>