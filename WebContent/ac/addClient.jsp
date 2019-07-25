<%@ page language="java" pageEncoding="GBK"%>
<%@include file="/base/taglib.jsp" %>
<html>
<head>
	<jsp:include   page="/base/head.jsp"/>
</head>
<body class="layui-layout-body">
<div class="layui-layout layui-layout-admin">
  	<jsp:include   page="/base/header.jsp"/>
  	<c:if test="${empty ins.aac401 }">
  	<c:import url="/ac/menu.jsp">
  		 <c:param name="menu" value="ac07"/>
  	</c:import>
  	</c:if>
  	<c:if test="${!empty ins.aac401 }">
  	<jsp:include   page="/ac/menu.jsp"/>
  	</c:if>
  <div class="layui-body">
  <div class="layui-anim layui-anim-scale"
				style="padding: 15px; margin: 30px 80px;">
				<fieldset class="layui-elem-field layui-filed-title" style="margin-top: 20px;padding-top: 20px">
					<legend> �ͻ���Ϣ${empty ins.aac401?'���':'�޸�' }</legend>
    <form class="layui-form" lay-filter="myform" action="<%=path%>/ac/ac04Add.html" method="post">
	<div class="layui-form-item" align="center">
		<div class="layui-inline">
			<label class="layui-form-label">
			<i class="layui-icon layui-icon-face-smile" style="font-size: 20px; color: black;"></i>
			�ͻ�����</label>
				<div class="layui-input-inline">
					<input type="text" name="aac403" required lay-verify="true" value="${ins.aac403 }"
					 autofocus="autofocus" autocomplete="off" class="layui-input">
				</div>
		</div>
		<div class="layui-inline">
			<label class="layui-form-label">
			<i class="layui-icon layui-icon-note" style="font-size: 20px; color: black;"></i>
			��&emsp;ν</label>
				<div class="layui-input-inline" >
					<input type="radio" name="aac414" value="1" title="����" checked>
					<input type="radio" name="aac414" value="2" title="Ůʿ">
				</div>
		</div>
	</div>
	
	<div class="layui-form-item" align="left">
		<div class="layui-inline" style="padding-left:245px">
			<label class="layui-form-label">
			<i class="layui-icon layui-icon-rate-half" style="font-size: 20px; color: black;"></i>
			��&emsp;&emsp;��</label>
				<div class="layui-input-inline" style="width:230px">
					<input type="radio" name="aac404" value="1" title="��" checked>
					<input type="radio" name="aac404" value="2" title="Ů">
					<input type="radio" name="aac404" value="3" title="��ȷ��">
				</div>
		</div>
	</div>
	<div class="layui-form-item" align="center">
			<div class="layui-inline">
			<label class="layui-form-label">
			<i class="layui-icon layui-icon-cellphone" style="font-size: 20px; color: black;"></i>
			��ϵ�绰</label>
				<div class="layui-input-inline" >
					<input type="text" required lay-verify="true" name="aac407" value="${ins.aac407 }"
					 autocomplete="off" class="layui-input">
				</div>
			</div>
			<div class="layui-inline">
			<label class="layui-form-label">
			<i class="layui-icon layui-icon-tree" style="font-size: 20px; color: black;"></i>
			��&emsp;��</label>
				<div class="layui-input-inline" >
					<input type="text" name="aac405" required lay-verify="true" value="${ins.aac405 }"
					 autocomplete="off" class="layui-input">
				</div>
			</div>
	</div>
	<div class="layui-form-item" align="center">
		<div class="layui-inline">
			<label class="layui-form-label">
			<i class="layui-icon layui-icon-component" style="font-size: 20px; color: black;"></i>
			���α���</label>
				<div class="layui-input-inline" >
					<select name="aac409">
						<option value="Ⱥ��">Ⱥ��</option>
						<option value="��Ա">��Ա</option>
						<option value="��Ա">��Ա</option>
						<option value="����">����</option>
					</select>
				</div>
		</div>
		<div class="layui-inline">
			<label class="layui-form-label">
			<i class="layui-icon layui-icon-user" style="font-size: 20px; color: black;"></i>
			��&emsp;��</label>
				<div class="layui-input-inline" >
					<select name="aac406" lay-verify="required">
						<option value="">��ѡ��</option>
						<option value="1">����</option>
						<option value="2">�ɹ���</option>
						<option value="3">����</option>
						<option value="4">����</option>
						<option value="5">ά�����</option>
						<option value="6">����</option>
						<option value="7">����</option>
					</select>
				</div>
		</div>
	</div>
	<div class="layui-form-item" align="center">
		<div class="layui-inline">
			<label class="layui-form-label">
			<i class="layui-icon layui-icon-diamond" style="font-size: 20px; color: black;"></i>
			����״��</label>
				<div class="layui-input-inline" >
					<select name="aac410" lay-verify="required">
						<option value="">��ѡ��</option>
						<option value="���主��">���主��</option>
						<option value="����">����</option>
						<option value="С��">С��</option>
						<option value="�±�">�±�</option>
						<option value="ƶ��">ƶ��</option>
						<option value="����ƶ��">����ƶ��</option>
						<option value="δ֪">δ֪</option>
					</select>
				</div>
		</div>
		<div class="layui-inline">
			<label class="layui-form-label">
			<i class="layui-icon layui-icon-templeate-1" style="font-size: 20px; color: black;"></i>
			ְ&emsp;ҵ</label>
				<div class="layui-input-inline" >
					<select name="aac413">
						<option value="����">����</option>
						<option value="��ʦ">��ʦ</option>
						<option value="ѧ��">ѧ��</option>
						<option value="��Ա">��Ա</option>
						<option value="ҽ��">ҽ��</option>
						<option value="����">����</option>
						<option value="����">����</option>
						<option value="����">����</option>
					</select>
				</div>
		</div>
	</div>
	<div class="layui-form-item" align="center">
		<div class="layui-inline">
			<label class="layui-form-label">
			<i class="layui-icon layui-icon-list" style="font-size: 20px; color: black;"></i>
			������Ϣ</label>
				<div class="layui-input-inline">
					<input type="text" required lay-verify="true" name="aac411" value="${ins.aac411 }"
					 autocomplete="off" class="layui-input">
				</div>
		</div>
		<div class="layui-inline">
			<label class="layui-form-label">
			<i class="layui-icon layui-icon-link" style="font-size: 20px; color: black;"></i>
			��&emsp;��</label>
				<div class="layui-input-inline" >
					<input type="email" required lay-verify="true" name="aac408" value="${ins.aac408 }"
					 autocomplete="off" class="layui-input">
				</div>
		</div>
	</div>
	<div class="layui-form-item" align="center">
		<div class="layui-inline">
			<label class="layui-form-label">
			<i class="layui-icon layui-icon-dollar" style="font-size: 20px; color: black;"></i>
			�ʽ�״��</label>
				<div class="layui-input-inline">
					<input type="text" required lay-verify="true" name="aac412" value="${ins.aac412 }"
					 autocomplete="off" class="layui-input">
				</div>
		</div>
		<div class="layui-inline">
			<label class="layui-form-label" >
			<i class="layui-icon layui-icon-username" style="font-size: 20px; color: black;"></i>
			ҵ��Ա</label>
				<div class="layui-input-inline">
					<input type="text" required lay-verify="true" name="aac415" value="${ins.aac415 }"
					 autocomplete="off" class="layui-input">
				</div>
		</div>
	</div>
	
	<div class="layui-form-item" align="center">
	<div class="layui-inline">
	<label class="layui-form-label">
	<i class="layui-icon layui-icon-vercode" style="font-size: 20px; color: black;"></i>
	Ա�����</label>
		<div class="layui-input-inline">
			<input type="text" required lay-verify="true" name="aac416" value="${ins.aac416 }"
			  autocomplete="off" class="layui-input">
		</div>
	</div>
	<c:if test="${!empty param.aac401 }">
		<div class="layui-inline">
			<label class="layui-form-label">
			<i class="layui-icon layui-icon-template-1" style="font-size: 20px; color: black;"></i>
			�ͻ����</label>
				<div class="layui-input-inline">
					<input type="text" name="aac402" required lay-verify="true" value="${ins.aac402 }"
					 readonly="readonly" autocomplete="off" class="layui-input">
				</div>
		</div>
	</c:if>
	</div>
	<div class="layui-form-item" align="center">	
	<div class="layui-inline">
			<button class="layui-btn " name="next" type="submit"
			formaction="<%=path %>/ac/${empty param.aac401?'ac04Add.html':'ac04Modify.html' }">
			<c:if test="${empty ins.aac401}">
			<i class="layui-icon layui-icon-add-1"></i>���
			</c:if>
			<c:if test="${!empty ins.aac401}">
			<i class="layui-icon layui-icon-edit"></i>�޸�
			</c:if>
			</button>
	</div>
	<c:if test="${!empty ins.aac401 }">
	<div class="layui-inline">
			<button class="layui-btn " name="next" type="submit" formnovalidate="formnovalidate"
			formaction="<%=path%>/ac/ac04Query.html" >
			<i class="layui-icon layui-icon-return"></i>����
			</button>
	</div>
	</c:if>
	</div>
		<input type="hidden" name="aac401" value="${ins.aac401 }"/>
		<e:hidden name="qaac401" />
		<e:hidden name="qaac407" />
		<e:hidden name="qaac405" />
		<e:hidden name="qaac403" />
		<e:hidden name="qaac402" />
	</form>
	</fieldset>
    </div>
  </div>
</div>
<script>
//JavaScript��������
	layui.use(['layer', 'form','element'], function(){
	  var layer = layui.layer
	  ,form = layui.form
	  ,element = layui.element;
	  if("${msg }" != "")
	  {
		  layer.msg("${msg }");
	  }
	  form.val('myform',{
		  "aac404":"${ins.aac404}",
		  "aac406":"${ins.aac406}",
		  "aac409":"${ins.aac409}",
		  "aac410":"${ins.aac410}",
		  "aac413":"${ins.aac413}",
		  "aac414":"${ins.aac414}"
	  });
	});
</script>
</body>
</html>