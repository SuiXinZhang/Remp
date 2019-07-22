<!DOCTYPE html>
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
    <form id="myform" lay-filter="myform" class="layui-form" action="<%=path %>/ad/ad06queryApply.html" method="post">
	<div class="layui-form-item" align="center">
			<div class="layui-inline">
				<label class="layui-form-label">��������</label>
				<div class="layui-input-inline">
					<select name="qaad602">
						<option value="" selected>���޶�</option>
						<option value="01">����</option>
						<option value="02">�˷�</option>
					</select>
				</div>
			</div>
			<div class="layui-inline">
				<label class="layui-form-label">������</label>
				<div class="layui-input-inline">
					<input type="text" name="qaad605" value="${param.qaad605 }" autocomplete="off" class="layui-input">
				</div>
			</div>
	</div>
	<div id="tableId" style="display: none">
	<table id="idData"  lay-filter="demo">
	<thead>
	  <tr>
	  	<td lay-data="{field:'check',width:50}"></td>
	  	<td lay-data="{field:'sort1',width:60}">���</td>
		<td lay-data="{field:'projectname',width:125}">����״̬</td>
		<td lay-data="{field:'username'}">�ͻ�����</td>
		<td lay-data="{field:'userphone'}">�����</td>
		<td lay-data="{field:'empname'}">��������</td>
		<td lay-data="{field:'style',width:88}">ԭ�����</td>
		<td lay-data="{field:'date',sort:true,width:115}">������</td>
		<td lay-data="{field:'grade',sort:true,width:100}">��������</td>
		<td lay-data="{field:'opt',fixed:'right',width:100}">����</td>
	  </tr>
	 </thead>
	 <tbody>
	  <c:choose>
	     <c:when test="${rows!=null }">
		     <c:forEach items="${rows }" var="ins" varStatus="vs">
	    	   	  <tr>
	    	   	  	<td>
					<input type="checkbox" lay-skin="primary" lay-filter="check" name="idlist" value="${ins.aac601 }" >
					</td>
				    <td>${vs.count }</td>
				    <td>${ins.aad603}</td>
				    <td>${ins.aad611 }</td>
				    <td>${ins.aad610 }</td>
				    <td>${ins.baad602 }</td>
				    <td>${ins.caad604 }</td>
				    <td>${ins.aad605 }</td>
				    <td>${ins.aad606 }</td>
				    <td><a href="#" onclick="onSelect('${ins.aad601}')">����</a></td>
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
	  form.val('myform',{
		  "qaad602":"${param.qaad602}"
	  });
		//ת����̬���
		table.init('demo', {
			limit : 10,
			page : true,
			toolbar : true,
			done : function(res, curr, count) {
				$('#tableId').css('display', 'block');
			}
		});
		
		var count = 0;
		form.on('checkbox(check)', function(data){
	          if(data.elem.checked==true){
	               	count++;
	               	if(count!=0){
	               		document.getElementById("mod").className="layui-btn";
	               	}else{
	               		document.getElementById("mod").className="layui-btn layui-btn-disabled";
	               	}
	               	document.getElementById("mod").disabled=(count==0)
	               		
	          }else{
	        	  count--;
	       		  if(count!=0){
	       				document.getElementById("mod").className="layui-btn";
	       		  }else{
	             		document.getElementById("mod").className="layui-btn layui-btn-disabled";
	             }
	       		document.getElementById("mod").disabled=(count==0)
	          }
	      });
	});
	function onSelect(vaad601)
    {
  	 var vform = document.getElementById("myform");
  	 vform.action="<%=path%>/ad/ad06findByIdApply.html?aad601="+vaad601;
  	 vform.submit();
    }
</script>
</body>
</html>