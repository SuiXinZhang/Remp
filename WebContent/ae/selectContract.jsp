<%@ page language="java" pageEncoding="GBK"%>
<%@include file="/base/taglib.jsp" %>
<html>
<head>
	<jsp:include   page="/base/head.jsp"/>
</head>
<body class="layui-layout-body">
<div class="layui-layout layui-layout-admin">
  	<jsp:include   page="/base/header.jsp"/>
	<c:import url="/ae/menu.jsp">
       <%--  <c:param name="menu" value="ad11"/> --%>
     </c:import>
  <div class="layui-body">
  <fieldset class="layui-elem-field layui-filed-title" style="margin-top: 20px;">
					<legend>ѡ���ͬ</legend>
    <form id="myform" class="layui-form" lay action="<%=path %>/ae/aeSelectcontract.html" method="post">
    <!-- ������������ -->
    <div class="layui-anim layui-anim-scale"
				style="padding: 15px; margin: 10px 10px;">
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
		<div class="layui-form-item" align="center">
			<div class="layui-inline">
				<label class="layui-form-label">ǩ������</label>
				<div class="layui-input-inline">
					<input type="text" name="qaad716" value="${param.qaad716 }" autocomplete="off" class="layui-input"
					id="date" placeholder="yyyy-MM-dd" autocomplete="off" lay-verify="date">
				</div>
			</div>
			<div class="layui-inline">
				<label class="layui-form-label">ҵ��Ա</label>
				<div class="layui-input-inline">
					<input type="text" name="qaad720" value="${param.qaad720 }" autocomplete="off" class="layui-input">
				</div>
			</div>
			<div class="layui-inline">
	       		<input type="submit" class="layui-btn layui-btn-normal" name="next" value="��ѯ">
			</div>
		</div>
	</div>
	<div id="tableId" style="display: none">
	<table id="idData"  lay-filter="demo">
	<thead>
	  <tr>
	  	<td lay-data="{field:'sort1',width:60}">���</td>
		<td lay-data="{field:'projectname'}">����</td>
		<td lay-data="{field:'username'}">�ͻ���</td>
		<td lay-data="{field:'userphone'}">ǩ������</td>
		<td lay-data="{field:'date',sort:true}">ҵ��Ա</td>
		<td lay-data="{field:'opt',fixed:'right'}">����</td>
	  </tr>
	 </thead>
	 <tbody>
	  <c:choose>
	     <c:when test="${rows!=null }">
		     <c:forEach items="${rows }" var="ins" varStatus="vs">
	    	   	  <tr>
				    <td>${vs.count }</td>
				    <td>${ins.aad703}</td>
				    <td>${ins.aad702 }</td>
				    <td>${ins.aad716 }</td>
				    <td>${ins.aad720 }</td>
				    <td>
				    <c:choose>
						<c:when test="${ins.aad723==0 }">
							 <a class="layui-btn layui-btn-xs" href="#" onclick="onSelect('${ins.aad701}')">
						    	<i class="layui-icon layui-icon-edit"></i>ѡ��
						     </a>
						</c:when>
						<c:otherwise>
							 <a class="layui-btn layui-btn-xs layui-btn-disabled" href="#">
						    	<i class="layui-icon layui-icon-edit"></i>�ѱ���
						    </a>
						</c:otherwise>
					</c:choose>
				   
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
<script ></script>
<script>
//JavaScript��������
	layui.use(['layer', 'form','element','table','laydate'], function(){
	  var layer = layui.layer
      ,form = layui.form
	  ,element = layui.element
	  ,table = layui.table;
	  var laydate = layui.laydate;
	  laydate.render({
		  elem:'#date'
		 
	  });
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
  	 vform.action="<%=path%>/ae/aeSelect01.html?aad701="+vaad701;
  	 vform.submit();
    }
</script>
</body>
</html>