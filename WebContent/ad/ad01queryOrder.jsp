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
        <c:param name="menu" value="ad02"/>
     </c:import>
  <div class="layui-body">
    <!-- ������������ -->
    <div class="layui-anim layui-anim-scale"
				style="padding: 15px; margin: 30px 80px;">
				<fieldset class="layui-elem-field layui-filed-title" style="margin-top: 20px;">
					<legend>ԤԼ��ѯ</legend>
	<form id="myform" lay-filter="myform" action="<%=path %>/ad/ad01queryOrder.html" method="post">
	<div class="layui-form-item" align="center">
			<div class="layui-inline">
				<label class="layui-form-label">�ͻ�����</label>
				<div class="layui-input-inline">
					<input type="text" name="qaad103" value="${param.qaad103 }" autocomplete="off" class="layui-input">
				</div>
			</div>
			<div class="layui-inline">
				<label class="layui-form-label">ԤԼ״̬</label>
				<div class="layui-input-inline">
					<input type="text" name="qaad116" value="${param.qaad116 }" autocomplete="off" class="layui-input">
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
		<td lay-data="{field:'projectname',width:100}">��Ŀ����</td>
		<td lay-data="{field:'username',width:100}">�ͻ���</td>
		<td lay-data="{field:'userphone',width:100}">ʵ���ź�</td>
		<td lay-data="{field:'empname',width:120}">ԤԼ����</td>
		<td lay-data="{field:'date',sort:true}">����</td>
		<td lay-data="{field:'grade',sort:true}">Ӧ��ԤԼ��</td>
		<td lay-data="{field:'state'}">ʵ��ԤԼ��</td>
		<td lay-data="{field:'prestate',width:100}">ԤԼ״̬</td>
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
				    <td>${ins.aad102 }</td>
				    <td><a href="#" onclick="onEdit('${ins.aad101}')">${ins.aad103 }</a></td>
				    <td>${ins.aad104 }</td>
				    <td>${ins.aad105 }</td>
				    <td>${ins.aad110 }</td>
				    <td>${ins.aad111 }</td>
				    <td>${ins.aad113 }</td>
				    <td>${ins.aad116 }</td>
				    <td>
				    	<a class="layui-btn layui-btn-xs layui-btn-danger" href="#" onclick="onDel('${ins.aad101}')">
				    		<i class="layui-icon layui-icon-close-fill"></i>����
				    	</a>
				    	<a class="layui-btn layui-btn-xs " href="#" onclick="onReceipt('${ins.aad101}')">
				    		<i class="layui-icon layui-icon-close-fill"></i>���ɸ�������
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
	  	<input class="layui-btn layui-btn-normal" type="submit" name="next" value="���" 
	  	 formaction="<%=path %>/ad/ad01customerQuery.jsp" >
	  </div>
</form>
	</fieldset>
    </div>
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
    function onDel(vaad101)
    {
  	 var vform = document.getElementById("myform");
  	 vform.action="<%=path%>/ad/ad01deleteById.html?aad101="+vaad101;
  	 vform.submit();
    }
    
    function onEdit(vaad101)
    {
  	 var vform = document.getElementById("myform");
  	 vform.action="<%=path%>/ad/ad01findById.html?aad101="+vaad101;
  	 vform.submit();
    }
    function onReceipt(vaad101)
    {
  	 var vform = document.getElementById("myform");
  	 vform.action="<%=path%>/af/af03orderTurnReceipt.html?aad101="+vaad101;
  	 vform.submit();
    }
    
    function onConfirm(vaaa801)
    {
  	 var vform = document.getElementById("myform");
  	 vform.action="<%=path%>/ad/ad03confirm.html?aaa801="+vaaa801;
  	 vform.submit();
    } 
</script>
</body>
</html>