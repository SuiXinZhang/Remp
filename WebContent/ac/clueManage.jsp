<%@ page language="java" pageEncoding="GBK"%>
<%@include file="/base/taglib.jsp"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css"
	href="/remp/static/css/ac/clueManageCss.css">
<meta name="renderer" content="webkit">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<jsp:include page="/base/head.jsp" />
</head>
<body class="layui-layout-body">
	<div class="layui-layout layui-layout-admin">
		<jsp:include page="/base/header.jsp" />
		<c:import url="/ac/menu.jsp">
  		 <c:param name="menu" value="ac02"/>
  		</c:import>
		<div class="layui-body">
			<div class="layui-anim layui-anim-scale"
				style="padding: 15px; margin: 30px 80px;">
				<fieldset class="layui-elem-field layui-filed-title" style="margin-top: 20px;">
					<legend>��������</legend>
					<form action="<%=request.getContextPath() %>/UploadHandleServlet" enctype="multipart/form-data" method="post">
<!--      ѡ���ļ��� <input type="file" name="excelfilename"><br>
     <input type="submit" value="�������"/> -->
     
     <div class="layui-form-item" align="center">
      	<div class="layui-inline" >
      	<label class="layui-form-label" style="width:100px">
	    <i class="layui-icon layui-icon-tree" style="font-size: 20px; color: black;"></i>
	    Excel����
	    </label>
	    </div>
	    <div class="layui-inline" >
			<button type="button" onclick="$('input[id=fileUpload]').click();" class="layui-btn layui-btn-normal">ѡ���ļ�</button>
			<input type="file" id="fileUpload"  name="excelfilename" style="display:none">
	   	</div>
	   	<div class="layui-inline" >
			<button type="submit" class="layui-btn layui-btn-normal">��������</button>
	   	</div>
	  </div>
	  
</form>
					<form action="<%=path%>/ac/ac01Query.html" lay-filter="form"
						class="layui-form" id="myform" method="post">


						<div align="center">


							<div class="layui-form-item">
								<div class="layui-inline">
									<label class="layui-form-label">��&ensp;��&ensp;��</label>
									<div class="layui-input-inline">
										<input type="text" name="qaac105" value="${param.qaac105 }"
											autocomplete="off" class="layui-input">
									</div>
								</div>
								<div class="layui-inline">
									<label class="layui-form-label">��Ŀ����</label>
									<div class="layui-input-inline">
										<%-- <input type="text" name="qaac104" value="${param.qaac104 }"
											autocomplete="off" class="layui-input"> --%>
											<select name="qaac104" required>
											    <c:forEach items='<%=session.getAttribute("prjs")%>' var="ins">
											    	<option value="${ins.aaa202 }">${ins.aaa202 }</option>
											    </c:forEach>
											</select>
									</div>
								</div>
							</div>


							<div class="layui-form-item">
							<div class="layui-inline">
								<label class="layui-form-label">���÷�ʽ</label>
								<div class="layui-input-inline">
										<select name="qaac103">
											<option value="" selected="">����</option>
											<option value="�绰">�绰</option>
											<option value="�߷�">�߷�</option>
										</select>
									</div>
								</div>
									<div class="layui-inline">
									<label class="layui-form-label">��������</label>
									<div class="layui-input-inline">
										<select name="qaac109">
											<option value="" selected="">����</option>
											<option value="1">1</option>
											<option value="2">2</option>
											<option value="3">3</option>
											<option value="4">4</option>
											<option value="5">5</option>
										</select>
									</div>
								</div>
							</div>


							<div class="layui-form-item">
								<div class="layui-inline">
									<label class="layui-form-label">��������</label>
									<div class="layui-input-inline">
										<input type="text" name="baac102" id="date"
											placeholder="��ʼ:yyyy-MM-dd" lay-verify="date"
											autocomplete="off" class="layui-input">
									</div>
									<div class="layui-form-mid" id="toCenter">--</div>
									<div class="layui-input-inline">
										<input type="text" name="eaac102" id="date1"
											placeholder="����:yyyy-MM-dd" lay-verify="date"
											autocomplete="off" class="layui-input">
									</div>
								</div>
							</div>

							<div class="layui-form-item" align="left">
							<div class="layui-inline" style="padding-left:177px">
								<label class="layui-form-label" style="width: 150px">ת���ۻ���״̬</label>
								<div class="layui-input-inline" >
									<select name="qaac111">
										<option value="">����</option>
										<option value="δת" selected="">δת</option>
										<option value="��ת">��ת</option>
									</select>
								</div>
							</div>
							<div class="layui-inline" style="padding-left:240px">
							<button class="layui-btn layuiadmin-btn-useradmin" type="submit">
									<i class="layui-icon layui-icon-search layuiadmin-button-btn"></i>
							</button>
							</div>
							
							</div>


						</div>

						<div id="tableId" style="display: none">
							<table id="idData"  lay-filter="demo">
								<thead>
									<tr>
										<td lay-data="{field:'sort1',width:60}">���</td>
										<td lay-data="{field:'projectname',width:125}">��Ŀ����</td>
										<td lay-data="{field:'username'}">�ͻ���</td>
										<td lay-data="{field:'userphone'}">��ϵ�绰</td>
										<td lay-data="{field:'empname'}">ҵ��Ա</td>
										<td lay-data="{field:'style',width:88}">���÷�ʽ</td>
										<td lay-data="{field:'date',sort:true,width:115}">��������</td>
										<td lay-data="{field:'grade',sort:true,width:100}">��������</td>
										<td lay-data="{field:'state',width:120}">���ۻ���״̬</td>
										<td lay-data="{field:'opt',fixed:'right',width:200}">����</td>
									</tr>
								</thead>
								<tbody>
									<c:choose>
										<c:when test="${rows!= null }">
											<c:forEach items="${rows }" var="ins" varStatus="vs">
												<tr>
													<td>${vs.count } </td>
													<td>${ins.aac104 }</td>
													<td>${ins.aac105 }</td>
													<td>${ins.aac106 }</td>
													<td>${ins.aac107 }</td>
													<td>${ins.aac103 }</td>
													<td>${ins.aac102 }</td>
													<td>${ins.aac109 }</td>
													<td>${ins.aac111 }</td>
													<td>
													
													<a class="layui-btn layui-btn-xs " 
													href="<%=path%>/ac01FindById.html?aac101=${ins.aac101 }" >
													<i class="layui-icon layui-icon-edit"></i>�༭
													</a> 
													
													<a class="layui-btn layui-btn-xs layui-btn-danger" href="#"
														onClick="onOpportunities('${ins.aac101}')">
														<i class="layui-icon layui-icon-release"></i>ת���ۻ���
													</a> 
													</td>		
												</tr>
											</c:forEach>
										</c:when>

									</c:choose>
								</tbody>
							</table>



							<br>
							<br>
							<br>

							<div class="layui-form-item" align="center">
							<div class="layui-inline">
									<button class="layui-btn " 
									formaction="<%=path%>/ac/clueAdd.jsp"  type="submit">
									<i class="layui-icon layui-icon-add-1"></i>���
									</button>
							</div>
							</div>
						</div>
					</form>

					
			</div>

			</fieldset>
		</div>


		<div class="layui-footer">
			<!-- �ײ��̶����� -->
		</div>
	</div>
<script src="https://cdn.staticfile.org/jquery/1.10.2/jquery.min.js"></script>
<script type="text/javascript">
function onEdit(vaac101)
{
	var myform = document.getElementById("myform");
	myform.action = "<%=path%>/ac01FindById.html?aac101=" + vaac101;
	myform.submit();
}
function onDel(vaac101)
{
	var myform = document.getElementById("myform");
	myform.action = "<%=path%>/ac01DelById.html?aac101=" + vaac101;
	myform.submit();
}
function onOpportunities(vaac101)
{
	var myform = document.getElementById("myform");
	myform.action = "<%=path%>/ac04ChangeOpport.html?tag=1&aac101="+ vaac101;
	myform.submit();
}
function getCheckBox(str)
{
	var ha =$(str).find(".layui-form-checkbox");
	var list=[];
	ha.each(function(){
		if($(this).hasClass("layui-form-checked")){
			list.push($(this).parent().parent().next().find("#idlist").val())
		}
	})
}
	</script>
	<script>
		//JavaScript��������
		layui.use([ 'element', 'form', 'laydate', 'layedit', 'table' ],function() {
							var element = layui.element
							, form = layui.form
							, layer = layui.layer
							, layedit = layui.layedit
							, laydate = layui.laydate
							, table = layui.table;
							
							if("${msg }" != "")
							  {
								  layer.msg("${msg }");
							  }

							//����
							laydate.render({
								elem : '#date'
							});
							laydate.render({
								elem : '#date1'
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

							form.val('form', {
								"qaac111" : "${param.qaac111 }",
								"qaac103" : "${param.qaac103 }",
								"qaac109" : "${param.qaac109 }",
								"qaac104" : "${param.qaac104 }"
							});
		})
</script>
</body>
</html>