<%@ page language="java" pageEncoding="GBK"%>
<%@include file="/base/taglib.jsp" %>
<html>
<head>
	<jsp:include   page="/base/head.jsp"/>
</head>
<body class="layui-layout-body">
<div class="layui-layout layui-layout-admin">
  	<jsp:include   page="/base/header.jsp"/>
	<jsp:include   page="/af/menu.jsp"/>
  <div class="layui-body">
    <!-- ������������ -->
    <div style="padding: 15px;">
    <form class="layui-form" lay-filter="myform" action="<%=path %>/af/af03add.html" method="post">
    Ʊ�ݹ���
    <div class="layui-form-item" align="center">
			<div class="layui-inline">
				<label class="layui-form-label">��Ŀ����</label>
				<div class="layui-input-inline">
					<%-- <input type="text" name="aaf303" required lay-verify="true" value="${ins.aaf303 }"
					 autocomplete="off" class="layui-input"> --%>
					 <select name="aaf303" required>
					    <c:forEach items='<%=session.getAttribute("prjs")%>' var="ins">
					    	<option value="${ins.aaa202 }">${ins.aaa202 }</option>
					    </c:forEach>
					</select>
				</div>
			</div>
			<div class="layui-inline">
				<label class="layui-form-label">�ͻ�����</label>
				<div class="layui-input-inline">
					<input type="text" name="aaf302" required lay-verify="true" value="${ins.aad403 }"
					 autocomplete="off" class="layui-input">
				</div>
			</div>
	</div>
	<div class="layui-form-item" align="center">
			<div class="layui-inline">
				<label class="layui-form-label">Ʊ�ݱ��</label>
				<div class="layui-input-inline">
					<input type="text" name="aaf304" required lay-verify="true" value="${ins.aaf304 }"
					 autocomplete="off" class="layui-input">
				</div>
			</div>
			<div class="layui-inline">
				<label class="layui-form-label">������</label>
				<div class="layui-input-inline">
					<input type="text" name="aaf305" required lay-verify="true" value="${ins.aaf305 }"
					 autocomplete="off" class="layui-input">
				</div>
			</div>
	</div>
	<div class="layui-form-item" align="center">
			<div class="layui-inline">
				<label class="layui-form-label">��Ʊ��</label>
				<div class="layui-input-inline">
					<input type="text" name="aaf306" required lay-verify="true" value="${ins.aaf306 }"
					 autocomplete="off" class="layui-input">
				</div>
			</div>
			<div class="layui-inline">
				<label class="layui-form-label">��Ʊ����</label>
				<div class="layui-input-inline">
					<input type="text" name="aaf307" id="date1" required lay-verify="true" value="${ins.aaf307 }"
					 autocomplete="off" class="layui-input">
				</div>
			</div>
	</div>
	<div class="layui-form-item" align="center">
			<div class="layui-inline">
				<label class="layui-form-label">Ʊ������</label>
				<div class="layui-input-inline">
					<input type="radio" name="aaf308" value="�վ�" title="�վ�" checked>
					<input type="radio" name="aaf308" value="��Ʊ" title="��Ʊ">
					<input type="radio" name="aaf308" value="��Ʊ��" title="��Ʊ��"> 
				</div>
			</div>
			<div class="layui-inline">
				<label class="layui-form-label">Ʊ��״̬</label>
				<div class="layui-input-inline">
					<input type="text" name="aaf309" required lay-verify="true" value="${ins.aaf309 }"
					 autocomplete="off" class="layui-input">
				</div>
			</div>
	</div>
	<div class="layui-form-item" align="center">
			<div class="layui-inline">
				<label class="layui-form-label">�����</label>
				<div class="layui-input-inline">
					<input type="text" name="aaf310" required lay-verify="true" value="${ins.aaf310 }"
					 autocomplete="off" class="layui-input">
				</div>
			</div>
			<div class="layui-inline">
				<label class="layui-form-label">�������</label>
				<div class="layui-input-inline">
					<input type="text" name="aaf311" id="date2" required lay-verify="true" value="${ins.aaf311 }"
					 autocomplete="off" class="layui-input">
				</div>
			</div>
	</div>
	<div class="layui-form-item" align="center">
			<div class="layui-inline">
				<label class="layui-form-label">����˱��</label>
				<div class="layui-input-inline">
					<input type="text" name="aaf312" required lay-verify="true" value="${ins.aaf312 }"
					 autocomplete="off" class="layui-input">
				</div>
			</div>
	</div>
<div id="tableId" style="">
<table id="idData" class="layui-table"  lay-filter="demo">
	<thead>
	<tr>
	<td lay-data="{field:'projectname',width:125}">��������</td>
	<td lay-data="{field:'username'}">��������</td>
	<td lay-data="{field:'userphone'}">���</td>
	<td lay-data="{field:'empname'}">����</td>
	<td lay-data="{field:'style'}">����</td>
	<td lay-data="{field:'date'}">������ҽ��</td>
	<td lay-data="{field:'grade'}">֧����ʽ</td>
	<td lay-data="{field:'state'}">��ע</td>
	</tr>
	</thead>
	<tbody>
	<tr>
	<td><e:select name="aaf403" value="�Ǵ����෿��:�Ǵ����෿��,�����෿��:�����෿��,ȫ��:ȫ��,����:����,"/></td>
	<td><e:select name="aaf409" value="����:����,ԤԼ��:ԤԼ��,����:����"/></td>
	<td><e:number step="0.01" name="aaf404" defval="${ins.aad413 }"/></td>
	<td><e:select name="aaf405" value="�����:01,��Ԫ:02,Ӣ��:03,��Ԫ:04,ŷԪ:05"/></td>
	<td><e:number step="0.01" name="aaf410"/></td>
	<td><e:number step="0.01" name="aaf406"/></td>
	<td><e:select value="�ֽ�:�ֽ�,���п�:���п�,������֧��:������֧��" name="aaf407"/></td>
	<td><e:text name="aaf408"/></td>
	</tr>
	</tbody>
</table>
	<div class="layui-form-item" align="center">
		<input type="submit" name="text" value="${empty param.aaf301?'���':'�޸�' }"
		 class="layui-btn layui-btn-normal" formaction="${empty param.aaf301?'af03add':'af03modify' }.html">
		<input type="submit" name="text" value="�鿴" class="layui-btn layui-btn-normal"
		 formnovalidate="formnovalidate" formaction="<%=path%>/af03query.html">
	</div>
<input type="hidden" name="aaf301" value="${param.aaf301 }">
</div>
</form>
    </div>
  </div>
  
  <div class="layui-footer">
    <!-- �ײ��̶����� -->
  </div>
</div>
<script ></script>
<script>
//JavaScript��������
	layui.use(['layer', 'form','element','table'], function(){
	  var element = layui.element;
	  var layer = layui.layer
	  ,form = layui.form
	  ,table = layui.table;
	  if("${msg }" != "")
	  {
		  layer.msg("${msg }");
	  }
		
	  form.val('myform',{
		  "aaf308":"${ins.aaf308}",
		  "aaf303":"${ins.aaf303}"
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