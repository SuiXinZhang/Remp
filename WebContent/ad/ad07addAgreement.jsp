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
    <form lay-filter="myform" id="myform" class="layui-form" action="<%=path %>/ad/ad07addAgreement.html" method="post">
	<div class="layui-form-item" align="left">
			<div class="layui-inline">
				<label class="layui-form-label">�ͻ�����</label>
				<div class="layui-input-inline">
					<input type="text" name="aad702" required lay-verify="true" value="${ins.aad402 }"
					 autocomplete="off" class="layui-input">
				</div>
			</div>
			<div class="layui-inline">
				<label class="layui-form-label">��ϵ�绰</label>
				<div class="layui-input-inline">
					<input type="text" name="aad721" required lay-verify="true" value="${ins.aad421 }"
					autocomplete="off" class="layui-input">
				</div>
			</div>
			<div class="layui-inline">
				<label class="layui-form-label">�������</label>
				<div class="layui-input-inline">
					<input type="text" name="aad703" required lay-verify="true" value="${ins.aad403 }"
					autocomplete="off" class="layui-input">
				</div>
			</div>
	</div>
    <div class="layui-form-item" align="left">
			<div class="layui-inline">
				<label class="layui-form-label">����ṹ</label>
				<div class="layui-input-inline">
					<input type="text" name="aaa504" required lay-verify="true" value="${ins.aaa504 }"
					 autocomplete="off" class="layui-input">
				</div>
			</div>
			<div class="layui-inline">
				<label class="layui-form-label">����״̬</label>
				<div class="layui-input-inline">
					<input type="text" name="aaa805" required lay-verify="true" value="${ins.saaa805 }"
							 autocomplete="off" class="layui-input">
				</div>
			</div>
			<div class="layui-inline">
				<label class="layui-form-label">�������</label>
				<div class="layui-input-inline">
					<input type="number" name="aaa505" required lay-verify="true" value="${ins.aaa505 }"
					    step="0.01" autocomplete="off" class="layui-input">
				</div>
			</div>
	</div>
	<div class="layui-form-item" align="left">
			<div class="layui-inline">
				<label class="layui-form-label">�������</label>
				<div class="layui-input-inline">
					<input type="number" step="0.01" name="aaa506" required lay-verify="true" value="${ins.aaa506 }"
					 autocomplete="off" class="layui-input">
				</div>
			</div>
			<div class="layui-inline">
				<label class="layui-form-label">��������</label>
				<div class="layui-input-inline">
					<input type="number" name="aaa808" required lay-verify="true" value="${ins.aaa808 }"
						step="0.01"	autocomplete="off" class="layui-input">
				</div>
			</div>
			<div class="layui-inline">
				<label class="layui-form-label">���ڵ���</label>
				<div class="layui-input-inline">
					<input type="number" name="aaa810" required lay-verify="true" value="${ins.aaa810 }"
					    step="0.01" autocomplete="off" class="layui-input">
				</div>
			</div>
	</div>
	<div class="layui-form-item" align="left">
			<div class="layui-inline">
				<label class="layui-form-label">�Ƽ۷�ʽ</label>
				<div class="layui-input-inline">
					<input type="radio" name="aad722" value="01" title="���������" checked>
					<input type="radio" name="aad722" value="02" title="���������"> 
				</div>
			</div>
			<div class="layui-inline">
				<label class="layui-form-label">���ʽ</label>
				<div class="layui-input-inline">
					<select name="aad704">
						<option value="01" selected>��ҵ����</option>
						<option value="02">ȫ��</option>
					</select>
				</div>
			</div>
			<div class="layui-inline">
				<label class="layui-form-label">�ۿ�</label>
				<div class="layui-input-inline">
					<input type="number" name="aad705" required lay-verify="true" value="${ins.aad405 }"
					    step="0.1" autocomplete="off" class="layui-input">
				</div>
			</div>
	</div>
	<div class="layui-form-item" align="left">
			<div class="layui-inline">
				<label class="layui-form-label">�����ɽ�����</label>
				<div class="layui-input-inline">
					<input type="number" name="aad706" required lay-verify="true" value="${ins.aad406 }"
						step="0.01"	autocomplete="off" class="layui-input">
				</div>
			</div>
			<div class="layui-inline">
				<label class="layui-form-label">���ڳɽ�����</label>
				<div class="layui-input-inline">
					<input type="number" name="aad707" required lay-verify="true" value="${ins.aad407 }"
					    step="0.01" autocomplete="off" class="layui-input">
				</div>
			</div>
			<div class="layui-inline">
				<label class="layui-form-label">�ۿ�˵��</label>
				<div class="layui-input-inline">
					<input type="text" name="aad708" required lay-verify="true" value="${ins.aad408 }"
					 autocomplete="off" class="layui-input">
				</div>
			</div>
	</div>
	<div class="layui-form-item" align="left">
			<div class="layui-inline">
				<label class="layui-form-label">�����ܼ�</label>
				<div class="layui-input-inline">
					<input type="number" name="aad709" required lay-verify="true" value="${ins.aad409 }"
						step="0.01"	autocomplete="off" class="layui-input">
				</div>
			</div>
			<div class="layui-inline">
				<label class="layui-form-label">��ͬ�ܼ�(�����)</label>
				<div class="layui-input-inline">
					<input type="number" name="aad711" required lay-verify="true" value="${ins.aad410 }"
					    step="0.01" autocomplete="off" class="layui-input">
				</div>
			</div>
			<div class="layui-inline">
				<label class="layui-form-label">��ͬ����</label>
				<div class="layui-input-inline">
					<select name="aad712">
						<option value="01" selected>�����</option>
						<option value="02">��Ԫ</option>
						<option value="03">Ӣ��</option>
						<option value="04">��Ԫ</option>
						<option value="05">ŷԪ</option>
					</select>
				</div>
			</div>
	</div>
	<div class="layui-form-item" align="left">
			<div class="layui-inline">
				<label class="layui-form-label">��ͬ����</label>
				<div class="layui-input-inline">
					<input type="number" name="aad713" required lay-verify="true" value="${ins.aad412 }"
						step="0.01"	autocomplete="off" class="layui-input">
				</div>
			</div>
			<div class="layui-inline">
				<label class="layui-form-label">Ӧ�ն���</label>
				<div class="layui-input-inline">
					<input type="number" name="aad714" required lay-verify="true" value="${ins.aad413 }"
					    step="0.01" autocomplete="off" class="layui-input">
				</div>
			</div>
			<div class="layui-inline">
				<label class="layui-form-label">��ͬ�ܼ�</label>
				<div class="layui-input-inline">
					<input type="number" name="aad715" required lay-verify="true" value="${ins.aad414 }"
					    step="0.01" autocomplete="off" class="layui-input">
				</div>
			</div>
	</div>
	<div class="layui-form-item" align="left">
			<div class="layui-inline">
				<label class="layui-form-label">ǩ������</label>
				<div class="layui-input-inline">
					<input type="text" name="aad716" id="date1" required lay-verify="true"
					 autocomplete="off" class="layui-input">
				</div>
			</div>
			<div class="layui-inline">
				<label class="layui-form-label">��������</label>
				<div class="layui-input-inline">
					<input type="text" name="aad717" id="date2" required lay-verify="true"
							 autocomplete="off" class="layui-input">
				</div>
			</div>
			<div class="layui-inline">
				<label class="layui-form-label">�Ƽ���</label>
				<div class="layui-input-inline">
					<input type="text" name="aad718" required lay-verify="true" value="${ins.aad417 }"
					 autocomplete="off" class="layui-input">
				</div>
			</div>
	</div>
	<div class="layui-form-item" align="left">
			<div class="layui-inline">
				<label class="layui-form-label">��ͬ״̬</label>
				<div class="layui-input-inline">
					<select name="aad719">
						<option value="01" selected>�Ϲ�</option>
						<option value="02">С��</option>
						<option value="03">ǩԼ</option>
					</select>
				</div>
			</div>
			<div class="layui-inline">
				<label class="layui-form-label">ҵ��Ա</label>
				<div class="layui-input-inline">
					<input type="text" name="aad720" required lay-verify="true" 
					 autocomplete="off" class="layui-input">
				</div>
			</div>
			<c:if test="${!empty param.aad701 }">
			<div class="layui-inline">
				<label class="layui-form-label">��ͬ���</label>
					<div class="layui-input-inline">
						<input type="text" name="aad710" value="${ins.aad710 }"
							 autocomplete="off" class="layui-input">
					</div>
				</div>
			</c:if>
	</div>
    
    <div class="layui-form-item" align="center">
	       <input type="submit" name="next" value="${empty param.aad701?'���':'�޸�'}" class="layui-btn layui-btn-normal"
	              formaction="${empty param.aad701?'ad07addAgreement':'ad07modifyAgreement'}.html">
	       <input type="submit" name="next" value="�鿴" class="layui-btn layui-btn-normal"
	          formnovalidate="formnovalidate" formaction="ad/ad07queryAgreement.html">
	       <input type="submit" name="next" value="����" class="layui-btn layui-btn-normal"
	       formaction="ad07queryAgreement.html" formnovalidate="formnovalidate">
	</div>
    <input type="hidden" name="aac401" value="${ins.aac401 }">
    <input type="hidden" name="aaa801" value="${ins.aaa801 }">
    <input type="hidden" name="aad701" value="${param.aad701 }">
    <input type="hidden" name="aad401" value="${ins.aad401 }">
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
	  var element = layui.element;
	  var layer = layui.layer
	  ,form = layui.form;
	  layer.msg('Hello World');
	  form.val('myform',{
		  "aad722":"${ins.aad420}",
		  "aad704":"${ins.aad404}",
		  "aad712":"${ins.aad411}",
		  "aad719":"${ins.aad418}"
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
		});
</script>
</body>
</html>