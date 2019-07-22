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
  		 <c:param name="menu" value="ac01"/>
  	</c:import>
  <div class="layui-body">
    <div class="layui-anim layui-anim-scale"
				style="padding: 15px; margin: 30px 80px;">
				<fieldset class="layui-elem-field layui-filed-title" style="margin-top: 20px;">
					<legend> �ͻ��������</legend>
    <form class="layui-form" lay-filter="myform" action="<%=path%>/ac/ac01Add.html" method="post">

  

	<div class="layui-form-item" align="center">
		<div class="layui-inline">
			<label class="layui-form-label">
			<i class="layui-icon layui-icon-face-smile" style="font-size: 20px; color: black;"></i>
			�ͻ�����
			</label>
			<div class="layui-input-inline">
				<input type="text" name="aac105" required lay-verify="true" value="${ins.aac105 }"
				 autofocus="autofocus" autocomplete="off" class="layui-input">
			</div>
		</div>

		<div class="layui-inline">
			<label class="layui-form-label">
			<i class="layui-icon layui-icon-cellphone" style="font-size: 20px; color: black;"></i>
			��ϵ�绰
			</label>
				<div class="layui-input-inline">
					<input type="text" name="aac106" required lay-verify="true" value="${ins.aac106 }"
					 autocomplete="off" class="layui-input">
				</div>
		</div>
	</div>
	
	<div class="layui-form-item" align="center">
		<div class="layui-inline">
			<label class="layui-form-label">
			<i class="layui-icon layui-icon-senior" style="font-size: 20px; color: black;"></i>
			���÷�ʽ
			</label>
				<div class="layui-input-inline">
					<input type="radio" name="aac103" value="�绰" title="�绰" checked>
					<input type="radio" name="aac103" value="�߷�" title="�߷�">
				</div>
		</div>
	
	
		<div class="layui-inline">
			<label class="layui-form-label">
			<i class="layui-icon layui-icon-date" style="font-size: 20px; color: black;"></i>
			����ʱ��
			</label>
				<div class="layui-input-inline">
					<input type="text" name="aac102" id="date" required lay-verify="true" value="${ins.aac102 }"
					 autocomplete="off" class="layui-input">
				</div>
		</div>
	</div>
	
	<div class="layui-form-item" align="center">
		<div class="layui-inline">
			<label class="layui-form-label">
			<i class="layui-icon layui-icon-face-cry" style="font-size: 20px; color: black;"></i>
			��Ŀ����
			</label>
				<div class="layui-input-inline">
					<select name="aac104" required>
					    <c:forEach items='<%=session.getAttribute("prjs")%>' var="ins">
					    	<option value="${ins.aaa202 }">${ins.aaa202 }</option>
					    </c:forEach>
					</select>
				</div>
		</div>
	
		<div class="layui-inline">
			<label class="layui-form-label">
			<i class="layui-icon layui-icon-template-1" style="font-size: 20px; color: black;"></i>
			��������</label>
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
			<label class="layui-form-label">
			<i class="layui-icon layui-icon-survey" style="font-size: 20px; color: black;"></i>
			��&ensp;¼&ensp;��</label>
				<div class="layui-input-inline">
					<input type="text" name="aac108" required lay-verify="true" value="${ins.aac108 }"
					 autocomplete="off" class="layui-input">
				</div>
		</div>
	
		<div class="layui-inline">
			<label class="layui-form-label" >
			<i class="layui-icon layui-icon-username" style="font-size: 20px; color: black;"></i>
			Ա�����</label>
				<div class="layui-input-inline">
					<input type="text" name="aaa402" required lay-verify="true" value="${ins.aaa402 }"
					 autocomplete="off" class="layui-input">
				</div>
		</div>
	</div>
	
	<div class="layui-form-item" align="center">
		<div class="layui-inline">
		    <label class="layui-form-label" >
		    <i class="layui-icon layui-icon-edit" style="font-size: 20px; color: black;"></i>
		   	��&#8195;&#8195;ע</label>
		    <div class="layui-input-block">
		      <textarea cols="68" placeholder="����������" name="aac110" class="layui-textarea" >${ins.aac110 }</textarea>
		    </div>
 		</div>
	</div>
	
    <div class="layui-form-item" align="center">
    <div class="layui-inline">
			<button class="layui-btn " name="next" type="submit"
			formaction="<%=path %>/ac/${empty param.aac101?'ac01Add.html':'ac01Modify.html' }"  >
			<c:if test="${empty ins.aac101}">
			<i class="layui-icon layui-icon-add-1"></i>���
			</c:if>
			<c:if test="${!empty ins.aac101}">
			<i class="layui-icon layui-icon-edit"></i>�޸�
			</c:if>
			</button>
	</div>
	<c:if test="${!empty ins.aac101 }">
	<div class="layui-inline">
			<button class="layui-btn " name="next" type="submit" formnovalidate="formnovalidate"
			formaction="<%=path %>/ac/ac01Query.html" >
			<i class="layui-icon layui-icon-return"></i>����
			</button>
	</div>
	</c:if>

    </div>

<!-- ����Ĭ����Ŀ��,���ڴ�session�еõ� -->
<input type="hidden" name="aaa201" value="1"/>


<input type="hidden" name="aac101" value="${param.aac101 }">
<e:hidden name="qaac111"/>
<e:hidden name="qaac109"/>
<e:hidden name="qaac103"/>
<e:hidden name="qaac105"/>
<e:hidden name="qaac104"/>
<e:hidden name="baac102"/>
<e:hidden name="eaac102"/>
</form>
</fieldset>
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
		  "aac103":"${ins.aac103}",
		  "aac109":"${ins.aac109}",
		  "aac104":"${ins.aac104}"
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