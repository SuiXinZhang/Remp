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
	<jsp:include   page="/ac/menu.jsp"/>
  <div class="layui-body">
    	
    <div class="layui-anim layui-anim-scale" style="padding: 15px; margin: 30px 80px;">
		<fieldset class="layui-elem-field layui-filed-title" style="margin-top: 20px;">
			<legend>�ͻ��ػ��ƻ�</legend>
			<form  lay-filter="form" class="layui-form" id="myform" method="post">
			
			<div align="left">
			<div class="layui-form-item">
				<div class="layui-inline">
					<label class="layui-form-label">ҵ&ensp;��&ensp;Ա</label>
					<div class="layui-input-inline">
						<input type="tel" name="aac507" value="${param.aac507 }" required="true"
							autocomplete="off" class="layui-input">
					</div>
				</div>
			</div>
			
			<div class="layui-form-item">
				<div class="layui-inline">
					<label class="layui-form-label">ҵ��Ա���</label>
					<div class="layui-input-inline">
						<input type="tel" name="aac503" value="${param.aac503 }" required="true"
							autocomplete="off" class="layui-input">
					</div>
				</div>
			</div>
	
			<div class="layui-form-item">
				<div class="layui-inline">
			    <label class="layui-form-label">��������</label>
			    <div class="layui-input-inline">
			      <input type="radio" name="aac509" value="2" title="����" checked="">
			      <input type="radio" name="aac509" value="1" title="�绰">
			    </div>
			    </div>
		 	</div>
		 	
		 	<div class="layui-form-item">
		 	<div class="layui-inline">
			      <label class="layui-form-label" style="width:100px">�ƻ�����ʱ��</label>
			      <div class="layui-input-inline">
			        <input type="text" name="aac505" id="date" lay-verify="date" placeholder="yyyy-MM-dd hh:mm:ss"  autocomplete="off" class="layui-input">
			      </div>
    		</div>
    		</div>
				
				
			<div class="layui-form-item">
				<div class="layui-inline">
					<label class="layui-form-label" >��Ϣ����</label>
					<div class="layui-input-inline">
						<input type="tel" name="aac502" value="${param.aac502 }" required="true"
							autocomplete="off" class="layui-input">
					</div>
				</div>
			</div>
			
			<div class="layui-form-item">
			<div class="layui-form-item layui-form-text">
			    <label class="layui-form-label">��������</label>
			    <div class="layui-input-block">
			      <textarea placeholder="����������" name="aac506" class="layui-textarea" >${param.aac506 }</textarea>
			    </div>
  			</div>
  			</div>
	
				
	
				<c:if test="${!empty ins.aac501}">
				<div class="layui-form-item">
			    <label class="layui-form-label">��������</label>
			    <div class="layui-input-inline">
			      <input type="radio" name="aac504" value="01" title="δִ��">
			      <input type="radio" name="aac504" value="02" title="��ִ��">
			      <input type="radio" name="aac504" value="03" title="�ѷ���">
			    </div>
		 		</div>
				</c:if>
				
				
				
				
				<div class="layui-form-item">
				<div class="layui-inline">
					<button class="layui-btn " onclick="test()"
					formaction="<%=path %>/ac/${empty ins.aac501?'ac05Add.html':'ac05Modify.html' }" >
					<i class="layui-icon layui-icon-add-1"></i>${empty ins.aac501?'���':'�޸�'}
					</button>
				</div>
				</div>
			</div>
			
			<!-- <input type="checkbox"  name="idlist" value="1" checked="checked">
			<input type="checkbox"  name="idlist" value="4" checked="checked"> -->
			
			
			<c:if test="${empty ins.aac501 }">
			
			<div id="tableId" style="display: none">
			
			<div class="layui-form-item">
				<div class="layui-inline">
					<label class="layui-form-label">��&ensp;��&ensp;��</label>
					<div class="layui-input-inline">
						<input type="text" name="qaac403" value="${param.qaac403 }"
						id="qaac403" autocomplete="off" class="layui-input">
					</div>
				</div>
				<div class="layui-inline">
					<label class="layui-form-label">�ͻ����</label>
					<div class="layui-input-inline">
						<input type="text" name="qaac402" value="${param.qaac402 }"
						id="qaac402" autocomplete="off" class="layui-input">
					</div>
				</div>
				
				<div class="layui-inline" style="padding-left:240px">
				<button class="layui-btn layuiadmin-btn-useradmin"  id="search" formnovalidate="formnovalidate"
				formaction="<%=path %>/ac/ac04QueryForClient.html">
						<i class="layui-icon layui-icon-search layuiadmin-button-btn"></i>
				</button>
				</div>
			</div>
			
							<table id="idData" lay-data="{id: 'idTest'}"  lay-filter="demo">
								<thead>
									<tr>
										<td lay-data="{field:'aac401',width:50}"></td>
										<td lay-data="{field:'squence',width:50}">���</td>
										<td lay-data="{field:'aac402',width:125}">�ͻ����</td>
										<td lay-data="{field:'aac403'}">�ͻ���</td>
										<td lay-data="{field:'userphone'}">��ϵ�绰</td>
										<td lay-data="{field:'aac408'}">����</td>
									</tr>
								</thead>
								<tbody>
									<c:choose>
										<c:when test="${rows!= null }">
											<c:forEach items="${rows }" var="ins" varStatus="vs">
												<tr>
													<td>
													<input type="checkbox" lay-skin="primary" lay-filter="check" name="idlist" value="${ins.aac401 }" ></td>
													<td>${vs.count } </td>
													<td>${ins.aac402 }</td>
													<td>${ins.aac403 }</td>
													<td>${ins.aac407 }</td>
													<td>${ins.aac408 }</td>
												</tr>
											</c:forEach>
										</c:when>

									</c:choose>
								</tbody>
							</table>
					</div>
			
			</c:if>
	</form>
			
			
		</fieldset>
	</div>
  </div>
  
  <div class="layui-footer">
    <!-- �ײ��̶����� -->
  </div>
</div>
<script src="https://cdn.staticfile.org/jquery/1.10.2/jquery.min.js"></script>
<script >
function login() {
    $.ajax({
    //����������Ҫע��һ��
        type: "POST",//��������
        dataType: "json",//Ԥ�ڷ��������ص���������
        url: "<%=path%>/getClientGroupServlet" ,//url
        cache:false,
        ansyc:true,
        data:{
        	qaac403:encodeURIComponent(JSON.stringify($("#qaac403").val().trim()),"utf-8"),
        	qaac402:encodeURIComponent(JSON.stringify($("#qaac402").val().trim()),"utf-8")
        },
        contentType: "application/x-www-form-urlencoded; charset=UTF-8",
        success: function (result) {
           	console.log(result);//��ӡ����˷��ص�����(������)
        },
        error : function() {
            alert("�쳣��");
        }
    });
}
</script>
<script>
//JavaScript��������
	layui.use(['element','form','laydate','table'], function(){
	  var element = layui.element
	  ,form = layui.form
	  ,laydate = layui.laydate
	  ,table = layui.table;
	  
	  form.val('form',{
		  "aac509":"${empty param.aac501?'2':param.aac509 }",
		  "aac504":"${param.aac504 }",
		  "aac505":"${param.aac505}"
	  })
	  
	  //ת����̬���
		table.init('demo', {
			limit : 10,
			page : true,
			done : function(res, curr, count) {
				$('#tableId').css('display', 'block');
			}
		});
	  
	//����ʱ��ѡ����
	  laydate.render({ 
	    elem: '#date'
	    ,type: 'datetime'
	    ,trigger: 'click'
	  });
	
})	
	
</script>
</body>
</html>