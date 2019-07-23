<%@ page language="java" pageEncoding="GBK"%>
<%@include file="/base/taglib.jsp" %>
<html>
<head>
	<jsp:include   page="/base/head.jsp"/>
</head>
<body class="layui-layout-body">
<div class="layui-layout layui-layout-admin">
  	<jsp:include   page="/base/header.jsp"/>
  	<c:if test="${empty ins.aac201 }">
	<c:import url="/ac/menu.jsp">
  		 <c:param name="menu" value="ac03"/>
  	</c:import>
  	</c:if>
  	<c:if test="${!empty ins.aac201 }">
  	<jsp:include   page="/ac/menu.jsp"/>
  	</c:if>
		<div class="layui-body">
			<div class="layui-anim layui-anim-scale"
				style="padding: 15px; margin: 30px 80px;">
				<fieldset class="layui-elem-field layui-filed-title"
					style="margin-top: 20px;padding-top: 20px">
					<legend> �ͻ����ۻ���(�ͻ�����${empty ins.aac201?'���':'�޸�' })</legend>
					<form class="layui-form" lay-filter="myform"
						action="<%=path%>/ac/ac04ChangeOpport.html" method="post">
						<div class="layui-form-item" align="center">
							<div class="layui-inline">
								<label class="layui-form-label"> <i
									class="layui-icon layui-icon-face-smile"
									style="font-size: 20px; color: black;"></i> �ͻ�����
								</label>
								<div class="layui-input-inline">
									<input type="text" name="aac202" required lay-verify="true"
										value="${ins.aac403 }" autofocus="autofocus"
										autocomplete="off" class="layui-input">
								</div>
							</div>

							<div class="layui-inline">
								<label class="layui-form-label" style="width:120px;"> <i
									class="layui-icon layui-icon-flag"
									style="font-size: 20px; color: black;"></i>&emsp;��&ensp;��&ensp;��&ensp;��
								</label>
								<div class="layui-input-inline">
									<input type="text" name="aac402" required lay-verify="true"
										value="${ins.aac402 }" autocomplete="off"
										class="layui-input">
								</div>
							</div>
						</div>
						<div class="layui-form-item" align="center">
							<div class="layui-inline">
								<label class="layui-form-label"> <i
									class="layui-icon layui-icon-picture"
									style="font-size: 20px; color: black;"></i> �������
								</label>
								<div class="layui-input-inline">
									<input type="number" step="0.01" name="aac208"
										value="${ins.aac208 }" autocomplete="off" class="layui-input">
								</div>
							</div>

							<div class="layui-inline">
								<label class="layui-form-label" style="width:120px;"> 
								<i class="layui-icon layui-icon-layouts"
									style="font-size: 20px; color: black;"></i> ����������
								</label>
								<div class="layui-input-inline">
									<select name="aac207">
										<option value="01" selected>����һ��</option>
										<option value="02">��������</option>
										<option value="03">��������</option>
									</select>
								</div>
							</div>
						</div>

						<div class="layui-form-item" align="center">
							<div class="layui-inline">
								<label class="layui-form-label"> <i
									class="layui-icon layui-icon-rmb"
									style="font-size: 20px; color: black;"></i> ����۸�
								</label>
								<div class="layui-input-inline">
									<input type="number" step="0.01" name="aac209" required
										lay-verify="true" value="${ins.aac209 }" autocomplete="off"
										class="layui-input">
								</div>
							</div>
							<div class="layui-inline">
								<label class="layui-form-label" style="width:120px;"> <i
									class="layui-icon layui-icon-face-surprised"
									style="font-size: 20px; color: black;"></i>
									&thinsp;��&thinsp;��&thinsp;��&thinsp;��&thinsp;��
								</label>
								<div class="layui-input-inline">
									<select name="aac203">
										<option value="01" selected>25%</option>
										<option value="02">50%</option>
										<option value="03">75%</option>
										<option value="04">90%</option>
										<option value="05">100%</option>
									</select>
								</div>
							</div>
						</div>
						<div class="layui-form-item" align="center"></div>
						<div class="layui-form-item" align="center">
							<div class="layui-inline">
								<label class="layui-form-label"> <i
									class="layui-icon layui-icon-survey"
									style="font-size: 20px; color: black;"></i> Ǳ�ڼ�ֵ
								</label>
								<div class="layui-input-inline">
									<select name="aac206">
										<option value="01" selected>��</option>
										<option value="02">�е�</option>
										<option value="03">��</option>
										<option value="04">��</option>
									</select>
								</div>
							</div>

							<div class="layui-inline">
								<label class="layui-form-label" style="width:120px;"> <i
									class="layui-icon layui-icon-date"
									style="font-size: 20px; color: black;"></i> ���ܹ���ʱ��
								</label>
								<div class="layui-input-inline">
									<input type="text" name="aac204" id="date" required
										lay-verify="true" value="${ins.aac204 }" autocomplete="off"
										class="layui-input">
								</div>
							</div>
						</div>
						<div class="layui-form-item" align="center">
							<div class="layui-inline">
								<label class="layui-form-label"> <i
									class="layui-icon layui-icon-edit"
									style="font-size: 20px; color: black;"></i> ��&#8195;&#8195;ע
								</label>
								<div class="layui-input-block">
									<textarea cols="71" placeholder="����������" name="aac205"
										class="layui-textarea">${ins.aac205 }</textarea>
								</div>
							</div>
						</div>

						<div class="layui-form-item" align="center">
							<div class="layui-inline">
								<button class="layui-btn " name="next" type="submit"
								formaction="<%=path %>/ac/${empty ins.aac201?'ac02Add.html':'ac02Modify.html'}">
								<c:if test="${empty ins.aac201}">
								<i class="layui-icon layui-icon-add-1"></i>���
								</c:if>
								<c:if test="${!empty ins.aac201}">
								<i class="layui-icon layui-icon-edit"></i>�޸�
								</c:if>
								</button>
							</div>
							<c:if test="${!empty ins.aac201 }">
							<div class="layui-inline">
									<button class="layui-btn " name="next" type="submit" formnovalidate="formnovalidate"
									formaction="<%=path %>/ac/ac02Query.html" >
									<i class="layui-icon layui-icon-return"></i>����
									</button>
							</div>
							</c:if>
						</div>
						<e:hidden name="aac401" value="${ins.aac401 }" />
						<e:hidden name="aac201" value="${param.aac201 }" />
						<input type="hidden" name="aac101" value="${param.aac101 }">

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
		  "aac207":"${ins.aac207}",
		  "aac203":"${ins.aac203}",
		  "aac206":"${ins.aac206}"
	  });
	});
	layui.use('laydate', function(){
		  var laydate = layui.laydate;
		 
		  //ִ��һ��laydateʵ��
		  laydate.render({
		    elem: '#date'  //ָ��Ԫ��
		    ,trigger: 'click'
		  });
		});
</script>
</body>
</html>