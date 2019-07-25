<%@ page language="java" pageEncoding="GBK"%>
<%@include file="/base/taglib.jsp" %>
<html>
<head>
	<jsp:include   page="/base/head.jsp"/>
</head>
<body class="layui-layout-body">
<div class="layui-layout layui-layout-admin">
  	<jsp:include   page="/base/header.jsp"/>
	<c:import url="/ad/menu.jsp">
        <c:param name="menu" value="ad09"/>
     </c:import>
  <div class="layui-body">
    <!-- ������������ -->
    <div class="layui-anim layui-anim-scale"
				style="padding: 15px; margin: 30px 40px;">
				<fieldset class="layui-elem-field layui-filed-title" style="margin-top: 20px;">
					<legend><h2>Ԥ����¼</h2></legend>
					<br>
    <form id="myform" action="<%=path %>/ad/ad05query.html" method="post">
	<div class="layui-form-item" align="center">
			<div class="layui-inline">
				<label class="layui-form-label">�ͻ�����</label>
				<div class="layui-input-inline">
					<input type="text" name="qaad508" value="${param.qaad508 }" autocomplete="off" class="layui-input">
				</div>
			</div>
			<div class="layui-inline">
				<label class="layui-form-label">�������</label>
				<div class="layui-input-inline">
					<input type="text" name="qaad502" value="${param.qaad502 }" autocomplete="off" class="layui-input">
				</div>
			</div>
			<div class="layui-inline">
				<input type="submit" class="layui-btn layui-btn-normal" name="next" value="��ѯ">
			</div>
	</div>
	<div id="tableId" style="display: none">
	<table id="idData"  lay-filter="demo">
	<thead>
	  <tr>
	  	<td lay-data="{field:'sort1',width:60}">���</td>
		<td lay-data="{field:'projectname',width:125}">�ͻ�����</td>
		<td lay-data="{field:'username'}">����</td>
		<td lay-data="{field:'userphone',width:125}">ǩ������</td>
		<td lay-data="{field:'empname',width:125}">ʧЧ����</td>
		<td lay-data="{field:'style',width:125}">ҵ��Ա</td>
		<td lay-data="{field:'date',sort:true,width:115}">Ԥ��״̬</td>
		<td lay-data="{field:'grade',sort:true,width:100}">��ע</td>
		<td lay-data="{field:'opt',fixed:'right'}">����</td>
	  </tr>
	 </thead>
	 <tbody>
	  <c:choose>
	     <c:when test="${rows!=null }">
	         <!-- ��ʾʵ�ʲ�ѯ�������� -->
		     <c:forEach items="${rows }" var="ins" varStatus="vs">
	    	   	  <tr>
				    <td>${vs.count }</td>
				    <td>${ins.aad508 }</td>
				    <td>${ins.aad502 }</td>
				    <td>${ins.aad503 }</td>
				    <td>${ins.aad504 }</td>
				    <td>${ins.aad505 }</td>
				    <td>${ins.aad507 }</td>
				    <td>${ins.aad506 }</td>
				    <td>
				    <a class="layui-btn layui-btn-xs layui-btn-normal" href="#" onclick="onEdit('${ins.aad501}')">
				    	<i class="layui-icon layui-icon-edit"></i>�鿴
				    </a>
				    <a class="layui-btn layui-btn-xs layui-btn-danger" href="#" onclick="onCancel('${ins.aad501}')">
				    	<i class="layui-icon layui-icon-close-fill"></i>ȡ��Ԥ��
				    </a>
				    </td>
				  </tr>
		      </c:forEach>
	     </c:when>
	   </c:choose>
	   </tbody>
	  </table>
	  </div>
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
	layui.use(['layer', 'form','element','table'], function(){
	  var layer = layui.layer
      ,form = layui.form
	  ,element = layui.element
	  ,table = layui.table;
	  if("${msg }" != "")
		{
			layer.msg('${msg }');	  
		}
		//ת����̬���
		table.init('demo', {
			limit : 10,
			page : true,
			toolbar : true,
			done : function(res, curr, count) {
				$('#tableId').css('display', 'block');
			}
		});
	});
	function onEdit(vaad501)
	{
		 var vform = document.getElementById("myform");
		 vform.action="<%=path%>/ad/ad05findById.html?aad501="+vaad501;
		 vform.submit();
	}
	function onCancel(vaad501)
	{
		 var vform = document.getElementById("myform");
		 vform.action="<%=path%>/ad/ad05cancelReserve.html?aad501="+vaad501;
		 vform.submit();
	}
</script>
</body>
</html>