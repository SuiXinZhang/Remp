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
    <form id="myform" lay-filter="myform" class="layui-form" action="<%=path %>/af/af03query.html" method="post">
	<div class="layui-form-item" align="center">
			<div class="layui-inline">
				<label class="layui-form-label">������</label>
				<div class="layui-input-inline">
					<input type="text" name="qaaf305" value="${param.qaaf305 }" autocomplete="off" class="layui-input">
				</div>
			</div>
			<div class="layui-inline">
				<label class="layui-form-label">��������</label>
				<div class="layui-input-inline">
					<input type="text" name="qaaf302" value="${param.qaaf302 }" autocomplete="off" class="layui-input">
				</div>
			</div>
	</div>
	<div id="tableId" style="display: none">
	<table  lay-filter="demo">
	<thead>
	  <tr>
	  	<td lay-data="{field:'check',width:50}"></td>
	  	<td lay-data="{field:'sort1',width:60}">���</td>
		<td lay-data="{field:'projectname',width:125}">ҵ���������</td>
		<td lay-data="{field:'username'}">������</td>
		<td lay-data="{field:'userphone'}">����</td>
		<td lay-data="{field:'empname'}">������ҽ��</td>
		<td lay-data="{field:'style',width:88}">����</td>
		<td lay-data="{field:'date',sort:true,width:115}">Ʊ������</td>
		<td lay-data="{field:'grade',sort:true,width:100}">Ʊ�ݱ��</td>
		<td lay-data="{field:'opt',fixed:'right',width:200}">����</td>
	  </tr>
	  </thead>
	  <tbody>
	  <c:choose>
	     <c:when test="${rows!=null }">
	         <!-- ��ʾʵ�ʲ�ѯ�������� -->
		     <c:forEach items="${rows }" var="ins" varStatus="vs">
	    	   	  <tr>
				    <td></td>
				    <td>${vs.count }</td>
				    <td>${ins.aaf311 }</td>
				    <td><a href="#" onclick="onEdit('${ins.aaf301}')">${ins.aaf305 }</a></td>
				    <td>${ins.aaf302 }</td>
				    <td>${ins.aaf406 }</td>
				    <td>${ins.aaf405 }</td>
				    <td>${ins.aaf308 }</td>
				    <td>${ins.aaf304 }</td>
				    <td></td>
				  </tr>
		      </c:forEach>
		      <!-- ������� -->
		      <c:forEach begin="${fn:length(rows)+1 }" step="1" end="3">
			          <tr>
			            <td></td>
			            <td></td>
			            <td></td>
			            <td></td>
			            <td></td>
			            <td></td>
			            <td></td>
			            <td></td>
			            <td></td>
			            <td></td>
			          </tr>
		      </c:forEach>
	     </c:when>
	     <c:otherwise>
	        <c:forEach begin="1" step="1" end="3">
	           <tr>
	             <td></td>
	             <td></td>
	             <td></td>
	             <td></td>
	             <td></td>
	             <td></td>
	             <td></td>
	             <td></td>
	             <td></td>
	           </tr>
	        </c:forEach>
	     </c:otherwise>
	   </c:choose>
	   </tbody>
	  </table>
	  
	  <table lay-filter="demo2">
	  <thead>
	  <tr>
	    <td></td>
	  	<td>���</td>
	  	<td>��������</td>
	  	<td>��������</td>
	  	<td>���</td>
	  	<td>����</td>
	  	<td>������ҽ��</td>
	  	<td>Ʊ������</td>
	  	<td>Ʊ�ݱ��</td>
	  	<td></td>
	  </tr>
	  </thead>
	  <tbody>
	  <c:choose>
	     <c:when test="${rows!=null }">
	         <!-- ��ʾʵ�ʲ�ѯ�������� -->
		     <c:forEach items="${rows }" var="ins" varStatus="vs">
	    	   	  <tr>
				    <td></td>
				    <td>${vs.count }</td>
				    <td>${ins.aaf403 }</td>
				    <td>${ins.aaf409 }</td>
				    <td>${ins.aaf404 }</td>
				    <td>${ins.aaf405 }</td>
				    <td>${ins.aaf406 }</td>
				    <td>${ins.aaf308 }</td>
				    <td>${ins.aaf402 }</td>
				    <td></td>
				  </tr>
		      </c:forEach>
		      <!-- ������� -->
		      <c:forEach begin="${fn:length(rows)+1 }" step="1" end="3">
			          <tr>
			            <td></td>
			            <td></td>
			            <td></td>
			            <td></td>
			            <td></td>
			            <td></td>
			            <td></td>
			            <td></td>
			            <td></td>
			            <td></td>
			          </tr>
		      </c:forEach>
	     </c:when>
	     <c:otherwise>
	        <c:forEach begin="1" step="1" end="3">
	           <tr>
	             <td></td>
	             <td></td>
	             <td></td>
	             <td></td>
	             <td></td>
	             <td></td>
	             <td></td>
	             <td></td>
	             <td></td>
	           </tr>
	        </c:forEach>
	     </c:otherwise>
	   </c:choose>
	   </tbody>
	  </table>
	  <div class="layui-form-item" align="center">
	       <input type="submit" name="next" value="��ѯ">
	  </div>
	  </div>
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
	layui.use(['layer', 'form','element','table'], function(){
	  var element = layui.element;
	  var layer = layui.layer
	  ,form = layui.form
	  ,table = layui.table;
	  if("${msg }" != "")
	  {
		  layer.msg("${msg }");
	  }
		//ת����̬���
		table.init('demo', {
			limit : 10,
			page : true,
			toolbar : true
		});
		//ת����̬���
		table.init('demo2', {
			limit : 10,
			page : true,
			toolbar : true,
			done : function(res, curr, count) {
				$('#tableId').css('display', 'block');
			}
		});
	});
	function onEdit(vaaf301)
	{
		 var vform = document.getElementById("myform");
		 vform.action="<%=path%>/af/af03findById.html?aaf301="+vaaf301;
		 vform.submit();
	}
</script>
</body>
</html>