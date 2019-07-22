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
    <form id="myform" class="layui-form" lay action="<%=path %>/ad/ad07queryAgreement.html" method="post">
	<div class="layui-form-item" align="center">
			<div class="layui-inline">
				<label class="layui-form-label">�������</label>
				<div class="layui-input-inline">
					<input type="text" name="qaad703" value="${param.qaad703 }" autocomplete="off" class="layui-input">
				</div>
			</div>
			<div class="layui-inline">
				<label class="layui-form-label">�ͻ�����</label>
				<div class="layui-input-inline">
					<input type="text" name="qaad702" value="${param.qaad702 }" autocomplete="off" class="layui-input">
				</div>
			</div>
	</div>
	<div id="tableId" style="display: none">
	<table id="idData"  lay-filter="demo">
	<thead>
	  <tr>
	  	<td lay-data="{field:'sort1',width:60}">���</td>
		<td lay-data="{field:'projectname',width:125}">����</td>
		<td lay-data="{field:'username'}">�ͻ���</td>
		<td lay-data="{field:'userphone'}">ǩ������</td>
		<td lay-data="{field:'empname'}">��ͬ�ܼ�</td>
		<td lay-data="{field:'style',width:88}">��ͬ����</td>
		<td lay-data="{field:'date',sort:true,width:115}">ҵ��Ա</td>
		<td lay-data="{field:'grade',sort:true,width:100}">��ͬ״̬</td>
		<td lay-data="{field:'state',width:120}">���ʽ</td>
		<td lay-data="{field:'opt',fixed:'right',width:200}">����</td>
	  </tr>
	 </thead>
	 <tbody>
	  <c:choose>
	     <c:when test="${rows!=null }">
		     <c:forEach items="${rows }" var="ins" varStatus="vs">
	    	   	  <tr>
				    <td>${vs.count }</td>
				    <td>${ins.aad703}</td>
				    <td><a href="#" onclick="onSelect('${ins.aad701}')">${ins.aad702 }</a></td>
				    <td>${ins.aad716 }</td>
				    <td>${ins.aad711 }</td>
				    <td>${ins.baad712 }</td>
				    <td>${ins.aad720 }</td>
				    <td>${ins.daad719 }</td>
				    <td>${ins.caad704 }</td>
				    <td>
				    <a href="#" onclick="onCancel('${ins.aad701}')">����</a>
				    <a href="#" onclick="onChange('${ins.aad701}')">������</a>
				    <a href="#" onclick="onReceipt('${ins.aad401}')">���ɸ�������</a>
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
	function onSelect(vaad701)
    {
  	 var vform = document.getElementById("myform");
  	 vform.action="<%=path%>/ad/ad07findByIdAgreement.html?aad701="+vaad701;
  	 vform.submit();
    }
    function onCancel(vaad701)
    {
  	 var vform = document.getElementById("myform");
  	 vform.action="<%=path%>/ad/ad07cancelledAgreement.html?aad701="+vaad701;
  	 vform.submit();
    }
    function onChange(vaad701)
    {
  	 var vform = document.getElementById("myform");
  	 vform.action="<%=path%>/ad/ad06turnApply.html?aad701="+vaad701;
  	 vform.submit();
    }
    function onReceipt(vaad701)
    {
  	 var vform = document.getElementById("myform");
  	 vform.action="<%=path%>/af/af03otherTurnReceipt.html?aad701="+vaad701;
  	 vform.submit();
    }
</script>
</body>
</html>