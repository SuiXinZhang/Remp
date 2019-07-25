<%@ page language="java" pageEncoding="GBK"%>
<%@include file="/base/taglib.jsp" %>
<html>
<head>
	<jsp:include   page="/base/head.jsp"/>
</head>
<body class="layui-layout-body">
<div class="layui-layout layui-layout-admin">
  	<jsp:include   page="/base/header.jsp"/>
  	<c:if test="${empty ins.aac301 }">
	<c:import url="/ac/menu.jsp">
  		 <c:param name="menu" value="ac12"/>
  	</c:import>
  	</c:if>
  	<c:if test="${!empty ins.aac301 }">
  	<jsp:include   page="/ac/menu.jsp"/>
  	</c:if>
  <div class="layui-body">
     <div class="layui-anim layui-anim-scale"
				style="padding: 15px; margin: 30px 80px;">
				<fieldset class="layui-elem-field layui-filed-title" style="margin-top: 20px;padding-top: 20px">
					<legend>�ͻ�����${empty ins.aac301?'���':'�޸�' }</legend>
    <form class="layui-form" lay-filter="myform" action="<%=path%>/ac/ac03Add.html" id="form" method="post">

	<div class="layui-form-item" align="center">
		<div class="layui-inline">
			<label class="layui-form-label" style="width:95px">
			<i class="layui-icon layui-icon-face-smile" style="font-size: 20px; color: black;"></i>
			&thinsp;��&thinsp;��&thinsp;��&thinsp;��&thinsp;</label>
				<div class="layui-input-inline">
					<input type="text" name="aac403" required lay-verify="true" value="${empty param.aac401?ins.aac403:param.aac403 }"
					 readonly="readonly" autocomplete="off" class="layui-input">
				</div>
		</div>
		<div class="layui-inline">
			<label class="layui-form-label">
			<i class="layui-icon layui-icon-auz" style="font-size: 20px; color: black;"></i>
			�ͻ����</label>
				<div class="layui-input-inline">
					<input type="text" name="aac402" required lay-verify="true" value="${empty param.aac401?ins.aac402:param.aac402 }"
					 readonly="readonly" autocomplete="off" class="layui-input">
				</div>
		</div>
	</div>
	<div class="layui-form-item" align="center">
		<div class="layui-inline">
			<label class="layui-form-label" style="width:95px">
			<i class="layui-icon layui-icon-date" style="font-size: 20px; color: black;"></i>
			&thinsp;��&thinsp;��&thinsp;ʱ&thinsp;��&thinsp;</label>
				<div class="layui-input-inline">
					<input type="text" name="aac305" id="date" required lay-verify="true" value="${ins.aac305 }"
					 autocomplete="off" class="layui-input">
				</div>
		</div>
		<div class="layui-inline">
			<label class="layui-form-label">
			<i class="layui-icon layui-icon-template-1" style="font-size: 20px; color: black;"></i>
			����״̬</label>
				<div class="layui-input-inline">
					<select name="aac304">
						<option value="01">δ����</option>
						<option value="02">�Ѹ���</option>
						<option value="03">���ٴθ���</option>
					</select>
				</div>
		</div>
	</div>
<div class="layui-form-item" align="center">
		<div class="layui-inline">
			<label class="layui-form-label" style="width:95px">
			<i class="layui-icon layui-icon-survey" style="font-size: 20px; color: black;"></i>
			����ҵ��Ա</label>
				<div class="layui-input-inline">
					<input type="text" name="aac306" required lay-verify="true" value="${ins.aac306 }"
					 autocomplete="off" class="layui-input">
				</div>
		</div>
		<div class="layui-inline">
			<label class="layui-form-label">
			<i class="layui-icon layui-icon-username" style="font-size: 20px; color: black;"></i>
			Ա�����</label>
				<div class="layui-input-inline">
					<input type="text" name="aac307" required lay-verify="true" value="${ins.aac307 }"
					 autocomplete="off" class="layui-input">
				</div>
		</div>
	</div>
	<div class="layui-form-item" align="center" >
		<div class="layui-inline">
		    <label class="layui-form-label" >
		    <i class="layui-icon layui-icon-edit" style="font-size: 20px; color: black;"></i>
		   	��������</label>
		    <div class="layui-input-block">
		      <textarea cols="68" placeholder="����������" required 
		      name="aac303" class="layui-textarea" >${ins.aac303 }</textarea>
		    </div>
 		</div>
	</div>
			
	<div class="layui-form-item" align="center">
	<div class="layui-inline">			
			<button class="layui-btn " name="next" type="submit"
			formaction="<%=path %>/ac/${empty ins.aac301?'ac03Add.html':'ac03Modify.html' }"  >
			<c:if test="${empty ins.aac301}">
			<i class="layui-icon layui-icon-add-1"></i>���
			</c:if>
			<c:if test="${!empty ins.aac301}">
			<i class="layui-icon layui-icon-edit"></i>�޸�
			</c:if>
			</button>
	</div>
	<div class="layui-inline">
	<c:if test="${empty ins.aac301 }">
	<button class="layui-btn " name="next" type="submit" formnovalidate="formnovalidate"
			formaction="<%=path %>/ac/ac04Query.html" >	
			<i class="layui-icon layui-icon-return"></i>����
	</button>
	</c:if>
	<c:if test="${!empty ins.aac301 }">
	<button class="layui-btn " name="next" type="submit" formnovalidate="formnovalidate"
		formaction="<%=path %>/ac/ac03Query.html" >
			<i class="layui-icon layui-icon-return"></i>����
		</button>
	</c:if>

	</div>
	</div>				
		<input type="hidden" name="aac301" value="${ins.aac301 }"> 
		<input type="hidden" name="aac401" value="${empty param.aac401?ins.aac401:param.aac401 }">
		<e:hidden name="qaac301" />
		<e:hidden name="qaac307" />
		<e:hidden name="qaac305" />
		<e:hidden name="qaac303" />
		<e:hidden name="qaac302" />
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
		  "aac304":"${ins.aac304}"
	  });
	});
	layui.use('laydate', function(){
		  var laydate = layui.laydate;
		 
		  //ִ��һ��laydateʵ��
		  laydate.render({
		    elem: '#date',  //ָ��Ԫ��
		    trigger: 'click'
		  });
		});
</script>
</body>
</html>