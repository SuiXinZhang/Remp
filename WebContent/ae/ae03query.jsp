<%@ page language="java" pageEncoding="GBK"%>
<%@include file="/../base/taglib.jsp" %>
<html>
<head>
	<jsp:include   page="/base/head.jsp"/>
</head>
<body class="layui-layout-body">
<div class="layui-layout layui-layout-admin">
	<jsp:include   page="/base/header.jsp"/>
	 <c:import url="/ae/menu.jsp">
        <c:param name="menu" value="ae03"/>
     </c:import>
  <div class="layui-body">
    <div style="padding: 15px;">
	    <form id="action" lay-filter="form" class="layui-form" action="<%=path %>/ae/ae03query.html" method="post">
	     <h1 align="center">������</h1>
	        <hr>
	        <div class="layui-form-item" align="center">
	                <div class="layui-inline">
	                    <label class="layui-form-label">�ͻ�����</label>
	                    <div class="layui-input-inline" style="width: 200px;">
	                        <input type="text" value="${param.qaae302 }" name="qaae302" autocomplete="off" class="layui-input">
	                    </div>
	                </div>
	                <div class="layui-inline">
	                    <label class="layui-form-label">��������</label>
	                    <div class="layui-input-inline" style="width: 200px;">
	                        <input type="text" value="${param.qaae312 }" name="qaae312" autocomplete="off" class="layui-input">
	                    </div>
	                </div>
	                <input type="submit" class="layui-btn" data-type="reload" value="��ѯ">
	        </div>
	        <div id="tableId" style="display: none">
		    <table id="idData"  lay-filter="demo">
			    <thead>
			        <tr>
			        	<td lay-data="{field:'sort1',width:60}">���</td>
						<td lay-data="{field:'projectname'}">�ͻ�</td>
						<td lay-data="{field:'username'}">����</td>
						<td lay-data="{field:'userphone'}">��ϵ�绰</td>
						<td lay-data="{field:'empname'}">��ŵ����</td>
						<td lay-data="{field:'style'}">��ŵ���</td>
						<td lay-data="{field:'date',sort:true}">��������</td>
						<td lay-data="{field:'opt',fixed:'right'}">����</td>
			        </tr>
			    </thead>
			    <tbody>
			    <c:forEach items="${rows }" var="ins" varStatus="vs">
			        <tr>
						<td>${vs.count}</td>
						<td>${ins.aae302 }</td>
						<td>${ins.aae312 }</td>
						<td>${ins.aae303 }</td>
						<td>${ins.aae307 }</td>
						<td>${ins.aae308 }</td>
						<td>${ins.aae305 }</td>
						<td><a class="layui-btn layui-btn-xs " href="#" onclick='findById(${ins.aae301})'>�鿴��ϸ</a></td>
		        </tr>
			    </c:forEach>
			    </tbody>
			</table>
			 <div class="layui-form-item" align="center">
				<div class="layui-inline">
						<input class="layui-btn" name="next" type="submit" value="���"
							formaction="<%=path %>/ae/ae03addpage.html">
				</div>
			</div>
			</div>
		</form>
	</div>
  </div>
  
  <div class="layui-footer">
  </div>
</div>
<script >
function findById(id)
{
	var vform = document.getElementById("action");
	vform.action = "<%=path %>/ae/ae03findById.html?aae301="+id;
	vform.submit();
}
</script>
<script>
layui.use(['layer', 'form','element','table'], function(){
	  var element = layui.element
	  ,layer = layui.layer
	  ,form = layui.form
	  ,table = layui.table;
	  
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
</script>
</body>
</html>