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
    <form id="myform" class="layui-form" action="<%=path %>/ad/ad03query.html" method="post">
    <div class="layui-form-item" align="center">
			<div class="layui-inline">
				<label class="layui-form-label">�ͻ�����</label>
				<div class="layui-input-inline">
					<input type="text" name="qaad305" value="${param.qaad305 }" autocomplete="off" class="layui-input">
				</div>
			</div>
			<div class="layui-inline">
				<label class="layui-form-label">ѡ��ʱ��</label>
				<div class="layui-input-inline">
					<input type="text" id="date" name="qaad307" value="${param.qaad307 }" autocomplete="off" class="layui-input">

				</div>
			</div>
			<div class="layui-inline">
				<label class="layui-form-label">�������</label>
				<div class="layui-input-inline">
					<input type="text" name="qaad302" value="${param.qaad302 }" autocomplete="off" class="layui-input">
				</div>
			</div>
	</div>
	<div id="tableId" style="display: none">
	<table id="idData"  lay-filter="demo">
	<thead>
	  <tr>
	  	<td lay-data="{field:'sort1',width:60}">���</td>
		<td lay-data="{field:'projectname',width:125}">�����</td>
		<td lay-data="{field:'username'}">����״̬</td>
		<td lay-data="{field:'userphone'}">ѡ������</td>
		<td lay-data="{field:'emphao'}">��Ŀ�ź�</td>
		<td lay-data="{field:'empname'}">�ͻ���</td>
		<td lay-data="{field:'style',width:88}">������</td>
		<td lay-data="{field:'date',sort:true,width:115}">ѡ��ʱ��</td>
		<td lay-data="{field:'opt',fixed:'right',width:200}">����</td>
	  </tr>
	 </thead>
	 <tbody>
	   <c:choose>
	     <c:when test="${rows!=null }">
		     <c:forEach items="${rows }" var="ins" varStatus="vs">
	    	   	  <tr>
				    <td>${vs.count }</td>
				    <td>${ins.aad302 }</td>
				    <td>${ins.caaa805 }</td>
				    <td>${ins.aad303 }</td>
				    <td>${ins.aad304 }</td>
				    <td>${ins.aad305 }</td>
				    <td>${ins.aad306 }</td>
				    <td>${ins.aad307 }</td>
				    <td>
				    <a href="#" onclick="onCancel('${ins.aaa801}')">ȡ��ѡ��</a>
				    <a href="#" onclick="onSubscribe('${ins.aad301}')">ת�Ϲ�</a>
				    <a href="#" onclick="onSigning('${ins.aad301}')">תǩԼ</a>
				    </td>
				  </tr>
		      </c:forEach>
	     </c:when>
	   </c:choose>
	   </tbody>
	  </table>
	 <div class="layui-form-item" align="center">
	       <input type="submit" class="layui-btn layui-btn-normal" name="next" value="��ѯ">
	 </div>
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
	layui.use('laydate', function(){
		  var laydate = layui.laydate;
		 
		  //ִ��һ��laydateʵ��
		  laydate.render({
		    elem: '#date'  //ָ��Ԫ��
		  });
	});
	function onCancel(vaaa801)
    {
  	 var vform = document.getElementById("myform");
  	 vform.action="<%=path%>/ad/ad03cancel.html?aaa801="+vaaa801;
  	 vform.submit();
    }
	function onSubscribe(vaad301)
	{
		var vform = document.getElementById("myform");
	  	vform.action="<%=path%>/ad/ad04subscribePurchase.html?aad301="+vaad301;
	  	vform.submit();
	}
	function onSigning(vaad301)
	{
		var vform = document.getElementById("myform");
	  	vform.action="<%=path%>/ad/ad07roomTurn.html?aad301="+vaad301;
	  	vform.submit();
	}
</script>
</body>
</html>