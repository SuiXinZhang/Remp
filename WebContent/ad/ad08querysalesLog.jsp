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
        <c:param name="menu" value="ad16"/>
     </c:import>
  <div class="layui-body">
    <!-- ������������ -->
    <div class="layui-anim layui-anim-scale"
				style="padding: 15px; margin: 30px 80px;">
				<fieldset class="layui-elem-field layui-filed-title" style="margin-top: 20px;">
					<legend>���ۼ�¼</legend>
    <form id="myform" class="layui-form" action="<%=path %>/ad/ad08querysalesLog.html" method="post">
	<div class="layui-form-item" align="center">
			<div class="layui-inline">
				<label class="layui-form-label">��������</label>
				<div class="layui-input-inline">
					<input type="text" name="qaad815" value="${param.qaad815 }" id="date"
					 autocomplete="off" class="layui-input">
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
		<td lay-data="{field:'projectname',width:100}">��������</td>
		<td lay-data="{field:'username',width:100}">��������</td>
		<td lay-data="{field:'userphone',width:100}">ԤԼ�ź���</td>
		<td lay-data="{field:'empname',width:100}">С������</td>
		<td lay-data="{field:'style',width:88}">�Ϲ�����</td>
		<td lay-data="{field:'agreement',sort:true,width:115}">ǩԼ����</td>
		<td lay-data="{field:'grade',sort:true,width:100}">������</td>
		<td lay-data="{field:'state',width:100}">ҵ�����</td>
		<td lay-data="{field:'peo',width:80}">��д��</td>
		<td lay-data="{field:'date',width:125}">��������</td>
		<td lay-data="{field:'opt',fixed:'right',width:100}">����</td>
	  </tr>
	  </thead>
	  <tbody>
	  <c:choose>
	     <c:when test="${rows!=null }">
	         <!-- ��ʾʵ�ʲ�ѯ�������� -->
		     <c:forEach items="${rows }" var="ins" varStatus="vs">
	    	   	  <tr>
				    <td>${vs.count }</td>
				    <td>${ins.aad802}</td>
				    <td>${ins.aad803 }</td>
				    <td>${ins.aad804 }</td>
				    <td>${ins.aad806 }</td>
				    <td>${ins.aad807 }</td>
				    <td>${ins.aad808 }</td>
				    <td>${ins.aad812 }</td>
				    <td>${ins.aad813 }</td>
				    <td>${ins.aad814 }</td>
				    <td>${ins.aad815 }</td>
				    <td>
				    <a class="layui-btn layui-btn-xs" href="#" onclick="onSelect('${ins.aad801}')">
				    	<i class="layui-icon layui-icon-edit"></i>�鿴
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
	function onSelect(vaad801)
    {
  	 var vform = document.getElementById("myform");
  	 vform.action="<%=path%>/ad/ad08findById.html?aad801="+vaad801;
  	 vform.submit();
    }
	layui.use('laydate', function(){
		  var laydate = layui.laydate;
		 
		  //ִ��һ��laydateʵ��
		  laydate.render({
		    elem: '#date'  //ָ��Ԫ��
		  });
		});
</script>
</body>
</html>