<!DOCTYPE html>
<%@ page language="java" pageEncoding="GBK"%>
<%@include file="/base/taglib.jsp"%>
<html>
<head>
	<jsp:include page="/base/head.jsp" />
	<link rel="stylesheet" type="text/css"
	href="/remp/static/css/ac/clueManageCss.css">
</head>
<body class="layui-layout-body">
	<div class="layui-layout layui-layout-admin">
		<jsp:include page="/base/header.jsp" />
		<c:import url="/ac/menu.jsp">
  		 	<c:param name="menu" value="ac10"/>
  		</c:import>
		<div class="layui-body">
			<div class="layui-anim layui-anim-scale"
				style="padding: 15px; margin: 30px 80px;">
				<fieldset class="layui-elem-field layui-filed-title" style="margin-top: 20px;padding-top: 20px">
					<legend>�ͻ��ػ�����</legend>
					<form action="<%=path%>/ac/ac05Query.html" lay-filter="form"
						class="layui-form" id="myform" method="post">


						<div align="center">


							<div class="layui-form-item">
								<div class="layui-inline">
									<label class="layui-form-label">&ensp;��&ensp;��&ensp;��&ensp;</label>
									<div class="layui-input-inline">
										<input type="text" name="qaac403" value="${param.qaac403 }"
											autocomplete="off" class="layui-input">
									</div>
								</div>
								<div class="layui-inline">
									<label class="layui-form-label">�ͻ����</label>
									<div class="layui-input-inline">
										<input type="text" name="qaac402" value="${param.qaac402 }"
											autocomplete="off" class="layui-input">
									</div>
								</div>
								<div class="layui-inline">
								<label class="layui-form-label">��������</label>
								<div class="layui-input-inline">
										<select name="qaac509">
											<option value="" selected="">����</option>
											<option value="1">����</option>
											<option value="2">����</option>
										</select>
									</div>
							</div>
							</div>

							<div class="layui-form-item">
								<div class="layui-inline">
									<label class="layui-form-label">�ƶ�ҵ��Ա</label>
									<div class="layui-input-inline">
										<input type="text" name="qaac507" value="${param.qaac507 }"
											autocomplete="off" class="layui-input">
									</div>
								</div>
								<div class="layui-inline">
									<label class="layui-form-label">ҵ��Ա���</label>
									<div class="layui-input-inline">
										<input type="text" name="qaac503" value="${param.qaac503 }"
											autocomplete="off" class="layui-input">
									</div>
								</div>
								<div class="layui-inline">
									<label class="layui-form-label">ִ��״̬</label>
									<div class="layui-input-inline">
										<select name="qaac504">
											<option value="" selected="">����</option>
											<option value="01">δִ��</option>
											<option value="02">��ִ��</option>
											<option value="03">�ѷ���</option>
										</select>
									</div>
							</div>
							</div>
							
							<div class="layui-form-item" align="left">
								<div class="layui-inline" style="padding-left:85px">
									<label class="layui-form-label">&thinsp;��&thinsp;��&thinsp;ʱ&thinsp;��&thinsp;</label>
									<div class="layui-input-inline">
										<input type="text" name="baac508" id="date"
											placeholder="B" lay-verify="date"
											autocomplete="off" class="layui-input">
									</div>
									<div class="layui-form-mid" id="toCenter2">----</div>
									<div class="layui-input-inline">
										<input type="text" name="eaac508" id="date1"
											placeholder="E" lay-verify="date"
											autocomplete="off" class="layui-input">
									</div>
								</div>
								<div class="layui-inline" style="padding-left:110px">
									<button class="layui-btn layuiadmin-btn-useradmin" type="submit">
											<i class="layui-icon layui-icon-search layuiadmin-button-btn"></i>��ѯ
									</button>
								</div>
								<div class="layui-inline" style="padding-left:8px">
									<button class="layui-btn layui-btn-disabled"  id="mod" disabled="disabled"
									formaction="<%=path %>/ac/ac05Delete.html"  type="submit">
									<i class="layui-icon layui-icon-delete"></i>ɾ��
									</button>
							</div>
							</div>
					</div>

						<div id="tableId" style="display: none">
							<table id="idData"  lay-filter="demo">
								<thead>
									<tr>
										<td lay-data="{field:'check',width:50}"></td>
										<td lay-data="{field:'sort1',width:60}">���</td>
										<td lay-data="{field:'username'}">�ͻ���</td>
										<td lay-data="{field:'number',width:125}">�ͻ����</td>
										<td lay-data="{field:'userphone'}">��Ϣ����</td>
										<td lay-data="{field:'style',width:88}">ִ��״̬</td>
										<td lay-data="{field:'date',width:115}">��������</td>
										<td lay-data="{field:'grade',width:100}">����ʱ��</td>
										<td lay-data="{field:'makeemp',width:120}">�ƶ�ҵ��Ա</td>
										<td lay-data="{field:'opt',fixed:'right',width:200}">����</td>
									</tr>
								</thead>
								<tbody>
									<c:choose>
										<c:when test="${rows!= null }">
											<c:forEach items="${rows }" var="ins" varStatus="vs">
												<tr>
													<td>
													<input type="checkbox" lay-skin="primary" lay-filter="check" name="idlist" value="${ins.aac601 }" >
													</td>
													<td>${vs.count } </td>
													<td>${ins.aac403 }</td>
													<td>${ins.aac402 }</td>
													<td>${ins.aac502 }</td>
													<td>${ins.cnaac504 }</td>
													<td>${ins.cnaac509 }</td>
													<td>${ins.aac505 }</td>
													<td>${ins.aac507 }</td>
													<td>
													
													<a class="layui-btn layui-btn-xs " 
													href="<%=path%>/ac05FindById.html?aac501=${ins.aac501 }" >
													<i class="layui-icon layui-icon-search"></i>�鿴
													</a> 
													
													<a class="layui-btn layui-btn-xs layui-btn-danger" href="#"
														onClick="onDel('${ins.aac601}')">
														<i class="layui-icon layui-icon-delete"></i>ɾ��
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
			</fieldset>
		</div>
	</div>
<script type="text/javascript">
function onDel(vaac601)
{
	var myform = document.getElementById("myform");
	myform.action = "<%=path%>/ac05DelById.html?aac601=" + vaac601;
	myform.submit();
}
</script>
<script>
//JavaScript��������
	layui.use(['layer', 'form','element','laydate','table'], function(){
	  var layer = layui.layer
	  ,form = layui.form
	  ,element = layui.element
	  ,laydate = layui.laydate
	  ,table = layui.table;
	  
	  if("${msg }" != "")
	  {
		  layer.msg("${msg }");
	  }
		//����
		laydate.render({
			elem : '#date'
			,type: 'datetime'
			,trigger: 'click'
		});
		laydate.render({
			elem : '#date1'
			,type: 'datetime'
			,trigger: 'click'
		});
	  
		form.val('form', {
			"qaac504" : "${param.qaac504 }",
			"qaac509" : "${param.qaac509 }",
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
</script>
</body>
</html>