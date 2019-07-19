<%@ page language="java" pageEncoding="GBK"%>
<%@include file="/base/taglib.jsp" %>
<html>
<head>
	<jsp:include   page="/base/head.jsp"/>
	
	<style>
		.noBorder
		{
			background-color:transparent;
			border:0;
		}
	</style>
	
</head>
<body class="layui-layout-body">
<div class="layui-layout layui-layout-admin">
  	<jsp:include   page="/base/header.jsp"/>
	<jsp:include   page="/ab/menu.jsp"/>
  <div class="layui-body">
    <!-- ������������ -->
    <div style="padding: 15px;">
    
    <form id="layer" action="<%=path%>/ab02Query.html" method="post" class="layui-form" >
	
		<fieldset class="layui-elem-field layui-field-title" style="margin-top: 20px;">
			<legend>���ۼƻ���ϸ��</legend>
		</fieldset>
	
		<table class="layui-table" id="test3" lay-filter="test3">
			
			<tr>
				<td>���</td>
				<td>��Ʒ����</td>
				<td>�ƻ���������</td>
				<td>�ƻ��������</td>
				<td>�ƻ����۽��</td>
				<td>�ƻ����۾���</td>
				<td>�ƻ��ؿ���</td>
			</tr>

			<c:choose>
				<c:when test="${rows!=null }">
					<c:forEach items="${rows }" var="ins" varStatus="vs">
						<tr>
							<td>${vs.count }</td>
							<td><input type="text" name="aab202List" value="${ins.cnaab202 }" readonly="true" class="noBorder"></td>
							<td><input type="text" name="aab203List" value="${ins.aab203 }" class="noBorder"></td>
							<td><input type="text" name="aab204List" value="${ins.aab204 }" class="noBorder"></td>
							<td><input type="text" name="aab205List" value="${ins.aab205 }" class="noBorder"></td>
							<td><input type="text" name="aab206List" value="${ins.aab206 }" class="noBorder"></td>
							<td><input type="text" name="aab207List" value="${ins.aab207 }" class="noBorder"></td>
						</tr>
					</c:forEach>
					<tr>
						<td colspan="7" align="center">
							<input type="submit" name="next" value="�����޸�" formaction="<%=path %>/ab/ab02Update.html?aab101=${param.aab101}" class="layui-btn">
							<input type="submit" name="next" value="����" formaction="<%=path %>/ab/ab01FindById.html?aab101=${param.aab101}" class="layui-btn">
						</td>
					</tr>
				</c:when>			
			</c:choose>
		</table>
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
	layui.use(['layer', 'form'], function(){
		  var layer = layui.layer
		  ,form = layui.form;
		  
		  layer.msg('Hello World');
		});
		
	layui.use('table', function(){
		var table = layui.table;

		//������Ԫ��༭
		table.on('edit(test3)', function(obj){
		var value = obj.value //�õ��޸ĺ��ֵ
		,data = obj.data //�õ����������м�ֵ
		,field = obj.field; //�õ��ֶ�
		layer.msg('[ID: '+ data.id +'] ' + field + ' �ֶθ���Ϊ��'+ value);
		});
	});
</script>
</body>
</html>