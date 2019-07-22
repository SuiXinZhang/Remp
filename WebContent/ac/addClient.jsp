<%@ page language="java" pageEncoding="GBK"%>
<%@include file="/base/taglib.jsp" %>
<html>
<head>
	<jsp:include   page="/base/head.jsp"/>
</head>
<body class="layui-layout-body">
<div class="layui-layout layui-layout-admin">
  	<jsp:include   page="/base/header.jsp"/>
  	<c:import url="/ac/menu.jsp">
  		 <c:param name="menu" value="ac07"/>
  	</c:import>
  <div class="layui-body">
    	
    <div style="padding: 15px;">
    <form class="layui-form" lay-filter="myform" action="<%=path%>/ac/ac04Add.html" method="post">
				�ͻ���Ϣ${empty ins.aac401?'���':'�޸�' }
	<div class="layui-form-item" align="center">
		<div class="layui-inline">
			<label class="layui-form-label">�ͻ�����</label>
				<div class="layui-input-inline">
					<input type="text" name="aac403" required lay-verify="true" value="${ins.aac403 }"
					 autofocus="autofocus" autocomplete="off" class="layui-input">
				</div>
		</div>
	</div>
	<div class="layui-form-item" align="center">
		<div class="layui-inline">
			<label class="layui-form-label">�ͻ����</label>
				<div class="layui-input-inline">
					<input type="text" name="aac402" required lay-verify="true" value="${ins.aac402 }"
					 readonly="readonly" autocomplete="off" class="layui-input">
				</div>
		</div>
	</div>
	<div class="layui-form-item" align="center">
		<div class="layui-inline">
			<label class="layui-form-label">�Ա�</label>
				<div class="layui-input-inline">
					<input type="radio" name="aac404" value="1" title="��" checked>
					<input type="radio" name="aac404" value="2" title="Ů">
					<input type="radio" name="aac404" value="3" title="��ȷ��">
				</div>
		</div>
	</div>
	<div class="layui-form-item" align="center">
		<div class="layui-inline">
			<label class="layui-form-label">����</label>
				<div class="layui-input-inline">
					<input type="text" name="aac405" required lay-verify="true" value="${ins.aac405 }"
					 autocomplete="off" class="layui-input">
				</div>
		</div>
	</div>
	<div class="layui-form-item" align="center">
		<div class="layui-inline">
			<label class="layui-form-label">����</label>
				<div class="layui-input-inline">
					<select name="aac406">
						<option value="1">����</option>
						<option value="2">�ɹ���</option>
						<option value="3">����</option>
						<option value="4">����</option>
					</select>
				</div>
		</div>
	</div>
	<div class="layui-form-item" align="center">
		<div class="layui-inline">
			<label class="layui-form-label">ְҵ</label>
				<div class="layui-input-inline">
					<input type="text" name="aac413" value="${ins.aac413 }"
					 autocomplete="off" class="layui-input">
				</div>
		</div>
	</div>
	<div class="layui-form-item" align="center">
		<div class="layui-inline">
			<label class="layui-form-label">��ν</label>
				<div class="layui-input-inline">
					<input type="radio" name="aac414" value="1" title="����" checked>
					<input type="radio" name="aac414" value="2" title="Ůʿ">
				</div>
		</div>
	</div>
	<div class="layui-form-item" align="center">
		<div class="layui-inline">
			<label class="layui-form-label">��ϵ�绰</label>
				<div class="layui-input-inline">
					<input type="text" required lay-verify="true" name="aac407" value="${ins.aac407 }"
					 autocomplete="off" class="layui-input">
				</div>
		</div>
	</div>
	<div class="layui-form-item" align="center">
		<div class="layui-inline">
			<label class="layui-form-label">����</label>
				<div class="layui-input-inline">
					<input type="email" required lay-verify="true" name="aac408" value="${ins.aac408 }"
					 autocomplete="off" class="layui-input">
				</div>
		</div>
	</div>
	<div class="layui-form-item" align="center">
		<div class="layui-inline">
			<label class="layui-form-label">���α���</label>
				<div class="layui-input-inline">
					<input type="text" required lay-verify="true" name="aac409" value="${ins.aac409 }"
					 autocomplete="off" class="layui-input">
				</div>
		</div>
	</div>
	<div class="layui-form-item" align="center">
		<div class="layui-inline">
			<label class="layui-form-label">����״��</label>
				<div class="layui-input-inline">
					<input type="text" required lay-verify="true" name="aac410" value="${ins.aac410 }"
					 autocomplete="off" class="layui-input">
				</div>
		</div>
	</div>
	<div class="layui-form-item" align="center">
		<div class="layui-inline">
			<label class="layui-form-label">������Ϣ</label>
				<div class="layui-input-inline">
					<input type="text" required lay-verify="true" name="aac411" value="${ins.aac411 }"
					 autocomplete="off" class="layui-input">
				</div>
		</div>
	</div>
	<div class="layui-form-item" align="center">
		<div class="layui-inline">
			<label class="layui-form-label">�ʽ�״��</label>
				<div class="layui-input-inline">
					<input type="text" required lay-verify="true" name="aac412" value="${ins.aac412 }"
					 autocomplete="off" class="layui-input">
				</div>
		</div>
	</div>
	<div class="layui-form-item" align="center">
		<div class="layui-inline">
			<label class="layui-form-label">��¼ҵ��Ա</label>
				<div class="layui-input-inline">
					<input type="text" required lay-verify="true" name="aac415" value="${ins.aac415 }"
					 autocomplete="off" class="layui-input">
				</div>
		</div>
	</div>
	<div class="layui-form-item" align="center">
	<c:if test="${!empty param.aac401 }">
		<div class="layui-inline">
			<label class="layui-form-label">Ա�����</label>
				<div class="layui-input-inline">
					<input type="text" required lay-verify="true" name="aac416" value="${ins.aac416 }"
					 readonly="readonly" autocomplete="off" class="layui-input">
				</div>
		</div>
	</c:if>
	</div>
	<div class="layui-form-item" align="center">	
			<input type="submit" name="next" class="layui-btn layui-btn-normal"
					value="${empty param.aac401?'���':'�޸�'}"
					formaction="<%=path %>/ac/${empty param.aac401?'ac04Add.html':'ac04Modify.html' }">
			<input type="submit" name="next" value="����" class="layui-btn layui-btn-normal"
					formaction="<%=path%>/ac/ac04Query.html"
					formnovalidate="formnovalidate">
	</div>
		<input type="hidden" name="aac401" value="${ins.aac401 }"/>
		<e:hidden name="qaac401" />
		<e:hidden name="qaac407" />
		<e:hidden name="qaac405" />
		<e:hidden name="qaac403" />
		<e:hidden name="qaac402" />
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
	  ,form = layui.form
	  ,element = layui.element;
	  if("${msg }" != "")
	  {
		  layer.msg("${msg }");
	  }
	  form.val('myform',{
		  "aac404":"${ins.aac404}",
		  "aac406":"${ins.aac406}",
		  "aac414":"${ins.aac414}"
	  });
	});
</script>
</body>
</html>