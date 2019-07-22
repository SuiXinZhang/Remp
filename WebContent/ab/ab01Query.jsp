<%@ page language="java" pageEncoding="GBK"%>
<%@include file="/base/taglib.jsp" %>
<html>
	<head>
		<jsp:include page="/base/head.jsp" />
		
	</head>
	<body class="layui-layout-body">
		<div class="layui-layout layui-layout-admin">
			<jsp:include page="/base/header.jsp" />
			<c:import url="/ab/menu.jsp">
	    		<c:param name="menu" value="ab01q"/>
	   	    </c:import>
			<div class="layui-body">
			${msg }
				<!-- ������������ -->
				<div class="layui-anim layui-anim-scale"
				style="padding: 15px; margin: 30px 80px;">
					<fieldset class="layui-elem-field layui-filed-title" style="margin-top: 20px;">
						<legend>���ۼƻ��б�</legend>				
				
					<form class="layui-form" id="myform" action="<%=path%>/ab/ab01Query.html" method="post">

						<!------------------ ��ѯ������---------------------->
					<div align="center">
					
						<div class="layui-form-item">
							<div class="layui-inline">
								<label class="layui-form-label">��Ŀ����</label>
								<div class="layui-input-inline">
									<input type="text" name="qaab102" placeholder="��������Ŀ����" autocomplete="off" class="layui-input">
								</div>
							</div>
							<div class="layui-inline">
							<label class="layui-form-label">���</label>
							<div class="layui-input-inline">
								<input type="text" name="year" placeholder="���" autocomplete="off" class="layui-input">
							</div>
						</div>
					
				
						<div class="layui-form-item" align="left">
							<div class="layui-inline" style="padding-left:240px">
							<label class="layui-form-label">�·�</label>
							<div class="layui-input-inline">
								<input type="text" name="month" placeholder="�·�" autocomplete="off" class="layui-input">
							</div>
							</div>
							<div class="layui-inline" style="padding-left:110px">
								<input type="submit" name="next" value="��ѯ" class="layui-btn">
								<input type="submit" name="next" value="���" formaction="<%=path%>/ab/ab01Add.jsp" class="layui-btn">
							</div>
						</div>
						
					</div>
						

						<!-----------------���ݵ����� -------------------->
						<div id="tableId" style="display: none">
						<table id="idData"  lay-filter="demo" height="50px">
						<thead>
							<tr>
								<td lay-data="{field:'sort1',width:60}">���</td>
								<td lay-data="{field:'projectname',width:125}">��Ŀ����</td>
								<td lay-data="{field:'username'}">ʱ��</td>
								<td lay-data="{field:'userphone'}">�ƻ��������</td>
								<td lay-data="{field:'empname'}">�ƻ���������</td>
								<td lay-data="{field:'style'}">�ƻ����۽��</td>
								<td lay-data="{field:'date',sort:true,width:115}">�ƻ����۾���</td>
								<td lay-data="{field:'grade',sort:true,width:100}">�ƻ��ؿ���</td>
								<td lay-data="{field:'opt',fixed:'right',width:200}">����</td>
							</tr>
						</thead>
						<tbody>
							<c:choose>
								<c:when test="${rows!=null }">
									<!-- ��ʾ��ѯ�������� -->
									<c:forEach items="${rows }" var="ins" varStatus="vs">
										<tr>
											<!-- <td>
												<input type="checkbox" name="idlist" value="${ins.aab101 }" onclick="onSelect(this.checked)">
											</td> -->
											<td>
												${vs.count }
											</td>
											<td>
												<a href="#" style="color:orange" onclick="onEdit('${ins.aab101}')">${ins.aab102 }</a>
											</td>
											<td>${ins.aab103 }</td>
											<td>${ins.aab105 }</td>
											<td>${ins.aab106 }</td>
											<td>${ins.aab107 }</td>
											<td>${ins.aab108 }</td>
											<td>${ins.aab109 }</td>
											<td>
												<a href="#" onclick="createOrFindAb02('${ins.aab101}')"
												class="layui-btn layui-btn-xs">
												<i class="layui-icon layui-icon-edit"></i>�༭������ϸ
												</a>
											</td>
											<!-- <td>
												<a href="#" onclick="onDel('${ins.aab101}')" class="layui-btn">ɾ��</a>
											</td> -->
											
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
								<!--  
								<input type="submit" id="del" name="next" value="ɾ��" formaction="<%=path%>/ab/ab01DelPlan.html" disabled="disabled" class="layui-btn">
								-->
						</div>
						</div>
					</form>
					</fieldset>
				</div>
			</div>

			<div class="layui-footer">
				<!-- �ײ��̶����� -->
			</div>
		</div>
				<script type="text/javascript">
		
			//JavaScript��������
			layui.use('element', function(){
			  var element = layui.element;
			  
			});
			var count=0;
			function onSelect(vstate)
			{
				vstate?count++:count--;
				var vdel=document.getElementById("del");
				vdel.disabled=(count==0);
			}
			
			function onEdit(vaab101)
			{
				var vform = document.getElementById("myform");
			  	 vform.action="<%=path%>/ab/ab01FindById.html?aab101="+vaab101;
			  	 vform.submit();
			}
			
			function onDel(vaab101)
		    {
		  	 var vform = document.getElementById("myform");
		  	 vform.action="<%=path%>/ab/ab01DelById.html?aab101="+vaab101;
		  	 vform.submit();
		    }
			
			function createOrFindAb02(vaab101)
		    {
		  	 var vform = document.getElementById("myform");
		  	 vform.action="<%=path%>/ab/ab02Query.html?aab101="+vaab101;
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
			
		</script>
	</body>
</html>
