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
    <div style="padding: 150px;">
    <form lay-filter="myform" class="layui-form" action="<%=path %>/ad/ad04addPurchase.html" method="post">
     
     <div class="layui-form-item" align="left">
			<div class="layui-inline">
				<label class="layui-form-label">�ͻ�����</label>
				<div class="layui-input-inline">
					<input type="text" name="aad402" required lay-verify="true" value="${ins.aad305 }"
					 autocomplete="off" class="layui-input">
				</div>
			</div>
			<div class="layui-inline">
				<label class="layui-form-label">��ϵ�绰</label>
				<div class="layui-input-inline">
					<input type="text" name="aad421" required lay-verify="true" value="${ins.aac407 }"
					autocomplete="off" class="layui-input">
				</div>
			</div>
			<div class="layui-inline">
				<label class="layui-form-label">�������</label>
				<div class="layui-input-inline">
					<input type="text" name="aad403" required lay-verify="true" value="${ins.aad302 }"
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
					<input type="radio" name="aad420" value="01" title="���������" checked>
					<input type="radio" name="aad420" value="02" title="���������"> 
				</div>
			</div>
			<div class="layui-inline">
				<label class="layui-form-label">���ʽ</label>
				<div class="layui-input-inline">
					<select name="aad404">
						<option value="01" selected>��ҵ����</option>
						<option value="02">ȫ��</option>
					</select>
				</div>
			</div>
			<div class="layui-inline">
				<label class="layui-form-label">�ۿ�</label>
				<div class="layui-input-inline">
					<input type="number" name="aad405" required lay-verify="true"
					    step="0.1" autocomplete="off" class="layui-input">
				</div>
			</div>
	</div>
	<div class="layui-form-item" align="left">
			<div class="layui-inline">
				<label class="layui-form-label">�����ɽ�����</label>
				<div class="layui-input-inline">
					<input type="number" name="aad406" required lay-verify="true" value="${ins.aad406 }"
						step="0.01"	autocomplete="off" class="layui-input">
				</div>
			</div>
			<div class="layui-inline">
				<label class="layui-form-label">���ڳɽ�����</label>
				<div class="layui-input-inline">
					<input type="number" name="aad407" required lay-verify="true" value="${ins.aad407 }"
					    step="0.01" autocomplete="off" class="layui-input">
				</div>
			</div>
			<div class="layui-inline">
				<label class="layui-form-label">�ۿ�˵��</label>
				<div class="layui-input-inline">
					<input type="text" name="aad408" required lay-verify="true" value="${ins.aad408 }"
					 autocomplete="off" class="layui-input">
				</div>
			</div>
	</div>
	<div class="layui-form-item" align="left">
			<div class="layui-inline">
				<label class="layui-form-label">�����ܼ�</label>
				<div class="layui-input-inline">
					<input type="number" name="aad409" required lay-verify="true" value="${ins.aad409 }"
						step="0.01"	autocomplete="off" class="layui-input">
				</div>
			</div>
			<div class="layui-inline">
				<label class="layui-form-label">Э���ܼ�(�����)</label>
				<div class="layui-input-inline">
					<input type="number" name="aad410" required lay-verify="true" value="${ins.aad410 }"
					    step="0.01" autocomplete="off" class="layui-input">
				</div>
			</div>
			<div class="layui-inline">
				<label class="layui-form-label">Э�����</label>
				<div class="layui-input-inline">
					<select name="aad411">
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
				<label class="layui-form-label">Э�����</label>
				<div class="layui-input-inline">
					<input type="number" name="aad412" required lay-verify="true" value="${ins.aad412 }"
						step="0.01"	autocomplete="off" class="layui-input">
				</div>
			</div>
			<div class="layui-inline">
				<label class="layui-form-label">Ӧ�ն���</label>
				<div class="layui-input-inline">
					<input type="number" name="aad413" required lay-verify="true" value="${ins.aad413 }"
					    step="0.01" autocomplete="off" class="layui-input">
				</div>
			</div>
			<div class="layui-inline">
				<label class="layui-form-label">Э���ܼ�</label>
				<div class="layui-input-inline">
					<input type="number" name="aad414" required lay-verify="true" value="${ins.aad414 }"
					    step="0.01" autocomplete="off" class="layui-input">
				</div>
			</div>
	</div>
	<div class="layui-form-item" align="left">
			<div class="layui-inline">
				<label class="layui-form-label">ǩ������</label>
				<div class="layui-input-inline">
					<input type="text" name="aad415" id="date1" required lay-verify="true" value="${ins.aad415 }"
					 autocomplete="off" class="layui-input">
				</div>
			</div>
			<div class="layui-inline">
				<label class="layui-form-label">ʧЧ����</label>
				<div class="layui-input-inline">
					<input type="text" name="aad416" id="date2" required lay-verify="true" value="${ins.aad416 }"
							 autocomplete="off" class="layui-input">
				</div>
			</div>
			<div class="layui-inline">
				<label class="layui-form-label">��������</label>
				<div class="layui-input-inline">
					<select name="aad418">
						<option value="01" selected>�Ϲ�</option>
						<option value="02">С��</option>
						<option value="03">ǩԼ</option>
					</select>
				</div>
			</div>
	</div>
	<div class="layui-form-item" align="left">
			<div class="layui-inline">
				<label class="layui-form-label">�Ƽ���</label>
				<div class="layui-input-inline">
					<input type="text" name="aad417" required lay-verify="true" value="${ins.aad417 }"
					 autocomplete="off" class="layui-input">
				</div>
			</div>
			<div class="layui-inline">
				<label class="layui-form-label">ҵ��Ա</label>
				<div class="layui-input-inline">
					<input type="text" name="aad419" required lay-verify="true" value="${ins.aad419 }"
					 autocomplete="off" class="layui-input">
				</div>
			</div>
	</div>
    
	<div class="layui-form-item" align="center">    
	       <input type="submit" name="next" value="${empty param.aad401?'���':'�޸�'}" class="layui-btn layui-btn-normal"
	              formaction="${empty param.aad401?'ad/ad04addPurchase':'ad/ad04modifyPurchase'}.html">
	       <input type="submit" name="next" value="�鿴" class="layui-btn layui-btn-normal"
	          formnovalidate="formnovalidate" formaction="ad04queryPurchase.html">
	       <input type="submit" name="next" value="����" formaction="${empty param.aad401?'ad03query':'ad04queryPurchase'}.html"
	         formnovalidate="formnovalidate" class="layui-btn layui-btn-normal">
	       <input type="submit" name="next" value="תǩԼ" class="layui-btn layui-btn-normal"
	          formnovalidate="formnovalidate" formaction="ad07turnAgreement.html">
	       <input type="submit" name="next" value="���ɸ�������" class="layui-btn layui-btn-normal"
	          formnovalidate="formnovalidate" formaction="<%=path %>/af/af03turnReceipt.html">
	</div>
	<input type="hidden" name="aac401" value="${ins.aac401 }">
    <input type="hidden" name="aad401" value="${param.aad401 }">
    <input type="hidden" name="aad301" value="${ins.aad301 }">
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
		  "aad420":"${ins.aad420}",
		  "aad404":"${ins.aad404}",
		  "aad411":"${ins.aad411}",
		  "aad418":"${ins.aad418}"
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