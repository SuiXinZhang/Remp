<!DOCTYPE html>
<%@ page language="java" pageEncoding="GBK"%>
<%@include file="/base/taglib.jsp"%>
<html>
<head>
<jsp:include page="/base/head.jsp" />

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
		<jsp:include page="/base/header.jsp" />
		<c:import url="/af/menu.jsp">
	    	<c:param name="menu" value="af07q"/>
	    </c:import>
		<div class="layui-body">
		${msg }
		<div class="layui-anim layui-anim-scale"
			style="padding: 15px; margin: 30px 80px;">
			<fieldset class="layui-elem-field layui-filed-title" style="margin-top: 20px;">
				<legend style="color:black;"><h2>Ƿ���б�</h2></legend>
		
			<form id="myform" class="layui-form" lay-filter="form"
				action="<%=path%>/af/af07Query.html" method="post">
				
				<div align="center">

				<!------------------ ��ѯ������---------------------->

				<div class="layui-form-item">
					<div class="layui-inline">
						<label class="layui-form-label">�ͻ�����</label>
						<div class="layui-input-inline">
							<input type="text" name="qaaf703" class="layui-input">
						</div>
					</div>
					<div class="layui-inline">
						<label class="layui-form-label">������</label>
						<div class="layui-input-inline">
							<input type="text" name="qaaf702" class="layui-input">
						</div>
					</div>
					<div class="layui-inline">
						<label class="layui-form-label">����״̬</label>
						<div class="layui-input-inline">
							<select name="qaaf710" lay-verify="">
								<option value="">��ѡ�񻹿�״̬</option>
								<option value="01" selected="selected">δ����</option>
								<option value="02">�ѻ���</option>
							</select>
						</div>
					</div>
				</div>

				<div class="layui-form-item" align="left">
					<div class="layui-inline" style="padding-left:86">
						<label class="layui-form-label">��ʼ����</label>
						<div class="layui-input-inline">
							<input type="text" name="bdate" class="layui-input" id="test29"
								placeholder="yyyy-MM-dd">
						</div>
					</div>
					<div class="layui-inline">
						<label class="layui-form-label">��ֹ����</label>
						<div class="layui-input-inline">
							<input type="text" name="edate" class="layui-input" id="test30"
								placeholder="yyyy-MM-dd">
						</div>
					</div>
					<div class="layui-inline" style="padding-left:110px">
						<input type="submit" name="next" value="��ѯ" class="layui-btn">
					</div>
				</div>
				</div>

				<!-----------------���ݵ����� -------------------->
				<div id="tableId" style="display: none">
				<table lay-filter="demo">
				<thead>
					<tr>
						<td lay-data="{field:'check',width:60}"></td>
						<td lay-data="{field:'sort1',width:60}">���</td>
						<td lay-data="{field:'projectname',width:125}">������</td>
						<td lay-data="{field:'username'}">�ͻ���</td>
						<td lay-data="{field:'userphone'}">�ͻ�����</td>
						<td lay-data="{field:'empname'}">ǩ������</td>
						<td lay-data="{field:'style',width:88}">ǩ����</td>
						<td lay-data="{field:'date',sort:true,width:115}">Ƿ����</td>
						<td lay-data="{field:'grade',width:100}">����״̬</td>
						<td lay-data="{field:'opt',fixed:'right',width:200}">����</td>
					</tr>
					</thead>
					<tbody>
					<c:choose>
						<c:when test="${rows!=null }">
							<!-- ��ʾ��ѯ�������� -->
							<c:forEach items="${rows }" var="ins" varStatus="vs">
								<tr>
									<td><input type="checkbox" name="emailList"
										value="${ins.aaf704 }" onclick="onSelect(this.checked)">
									</td>
									<td>${vs.count }</td>
									<td>${ins.aaf702 }</td>
									<td>${ins.aaf703 }</td>
									<td>${ins.aaf704 }</td>
									<td>${ins.aaf705 }</td>
									<td>${ins.aaf706 }</td>
									<td>${ins.aaf709 }</td>
									<td>${ins.cnaaf710 }</td>
									<td>
										<a href="<%=path %>/af/af07State.html?aaf702=${ins.aaf702}" class="layui-btn layui-btn-xs">
										<i class="layui-icon layui-icon-edit"></i>�ѽɷ�
										</a>
									</td>
								</tr>
							</c:forEach>

						</c:when>
						<c:otherwise>
							
						</c:otherwise>
					</c:choose>
					</tbody>
				</table>

				<!-- ���ܰ�ť�� -->
				<div class="layui-form-item" align="center">
					<input type="submit" name="next" value="���"
						formaction="<%=path%>/af/af07Add.jsp" class="layui-btn"> 
						<input type="submit" id="del" name="next" value="�ʼ��߿�"
						formaction="<%=path%>/af/af07Mail.html" disabled="disabled"
						class="layui-btn">
				</div>
				</div>
			</form>
			</fieldset>
			</div>
		</div>

	</div>
	<script type="text/javascript">

	var count=0;
	function onSelect(vstate)
	{
		vstate?count++:count--;
		var vdel=document.getElementById("del");
		vdel.disabled=(count==0);
	}
	
	function onEdit(vaaf701)
	{
		var vform = document.getElementById("myform");
	  	 vform.action="<%=path%>/af/af07FindById.html?aaf701="+vaaf701;
	  	 vform.submit();
	}
	
	function onDel(vaaf701)
    {
  	 var vform = document.getElementById("myform");
  	 vform.action="<%=path%>
		/af/af07DelById.html?aaf701=" + vaaf701;
			vform.submit();
		}
	</script>
	<script>
		//JavaScript��������
		layui.use([ 'layer', 'form', 'element','table'], function() {
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

		//����ѡ���
		layui.use('laydate', function() {
			var laydate = layui.laydate;

			laydate.render({
				elem : '#test29',
				theme : 'molv',
				trigger : 'click'
			});

			laydate.render({
				elem : '#test30',
				theme : 'molv',
				trigger : 'click'
			});
		});
	</script>
	<script type="text/javascript">
		function selectRoom(e)
		{
			layer.open({
				 type: 2
				,title: '����ѡ��'
				,area:['800px', '500px']
				,maxmin: true
				,content: '<%=path%>/base/room.html'
				,btn: ['ȷ��','�ر�'],
				yes: function(index){
					var res = window["layui-layer-iframe" + index].callbackdata();
					//��ӡ���ص�ֵ�����Ƿ��������뷵�ص�ֵ
					console.log(res);
					$("#room").attr("value",res[0])
					$("#roomNo").attr("value",res[1])
					layer.close(index);
					}
				});  
		}
	</script>
</body>
</html>