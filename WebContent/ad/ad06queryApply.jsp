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
	<c:import url="/ad/menu.jsp">
        <c:param name="menu" value="ad13"/>
     </c:import>
  <div class="layui-body">
    <!-- ������������ -->
    <div class="layui-anim layui-anim-scale"
				style="padding: 15px; margin: 30px 80px;">
				<fieldset class="layui-elem-field layui-filed-title" style="margin-top: 20px;">
					<legend>��������ѯ</legend>
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
			<div class="layui-inline">
	       		<input type="submit" class="layui-btn layui-btn-normal" name="next" value="��ѯ">
	 		</div>
	</div>
	<div id="tableId" style="display: none">
	<table id="idData"  lay-filter="demo">
	<thead>
	  <tr>
	  	<td lay-data="{field:'check',width:50}"></td>
	  	<td lay-data="{field:'sort1',width:60}">���</td>
		<td lay-data="{field:'projectname',width:125}">����״̬</td>
		<td lay-data="{field:'username',width:125}">�ͻ�����</td>
		<td lay-data="{field:'userphone',width:125}">�����</td>
		<td lay-data="{field:'empname',width:125}">��������</td>
		<td lay-data="{field:'style'}">ԭ�����</td>
		<td lay-data="{field:'date',sort:true,width:115}">������</td>
		<td lay-data="{field:'grade',sort:true}">��������</td>
		<td lay-data="{field:'opt',fixed:'right',width:100}">����</td>
	  </tr>
	 </thead>
	 <tbody>
	  <c:choose>
	     <c:when test="${rows!=null }">
		     <c:forEach items="${rows }" var="ins" varStatus="vs">
	    	   	  <tr>
	    	   	  	<td>
					<input type="checkbox" lay-skin="primary" lay-filter="check" 
					  name="idlist" value="${ins.aad601 }" >
					</td>
				    <td>${vs.count }</td>
				    <td>${ins.aad603}</td>
				    <td>${ins.aad611 }</td>
				    <td>${ins.aad610 }</td>
				    <td>${ins.baad602 }</td>
				    <td>${ins.caad604 }</td>
				    <td>${ins.aad605 }</td>
				    <td>${ins.aad606 }</td>
				    <td>
				    	<a class="layui-btn layui-btn-xs" href="#" onclick="onSelect('${ins.aad601}')">
				    		<i class="layui-icon layui-icon-ok"></i>����
				    	</a>
				    </td>
				  </tr>
		      </c:forEach>
	     </c:when>
	   </c:choose>
	   </tbody>
	</table>
	 </div>
	 <div class="layui-form-item" align="center">
	 <input type="submit" class="layui-btn" id="mod" name="next" value="����" 
	              formaction="<%=path%>/ad/ad06batchExamine.html">
	 </div>
</form>
</fieldset>
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
	               		document.getElementById("mod").className="layui-btn layui-btn-danger";
	               	}else{
	               		document.getElementById("mod").className="layui-btn layui-btn-disabled";
	               	}
	               	document.getElementById("mod").disabled=(count==0)
	               		
	          }else{
	        	  count--;
	       		  if(count!=0){
	       				document.getElementById("mod").className="layui-btn layui-btn-danger";
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