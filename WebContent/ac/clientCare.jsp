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
			<form action="#" " lay-filter="form" class="layui-form" id="myform" method="post">
			
			
			<div class="layui-form-item">
				<div class="layui-inline">
					<label class="layui-form-label">ҵ&ensp;��&ensp;Ա</label>
					<div class="layui-input-inline">
						<input type="tel" name="aac507" value="${ins.aac507 }" required="true"
							autocomplete="off" class="layui-input">
					</div>
				</div>
			</div>
			
			<div class="layui-form-item">
				<div class="layui-inline">
					<label class="layui-form-label">ҵ��Ա���</label>
					<div class="layui-input-inline">
						<input type="tel" name="aac503" value="${ins.aac503 }" required="true"
							autocomplete="off" class="layui-input">
					</div>
				</div>
			</div>
	
			<div class="layui-form-item">
			    <label class="layui-form-label">��������</label>
			    <div class="layui-input-inline">
			      <input type="radio" name="aac509" value="2" title="����" checked="">
			      <input type="radio" name="aac509" value="1" title="�绰">
			    </div>
		 	</div>
		 	
		 	<div class="layui-form-item">
		 	<div class="layui-inline">
			      <label class="layui-form-label">����ʱ��</label>
			      <div class="layui-input-inline">
			        <input type="text" name="date" id="date" lay-verify="date" placeholder="yyyy-MM-dd" autocomplete="off" class="layui-input">
			      </div>
    		</div>
    		</div>
				
			<div class="layui-form-item">
				<div class="layui-inline">
					<label class="layui-form-label">��Ϣ����</label>
					<div class="layui-input-inline">
						<input type="tel" name="aac502" value="${ins.aac502 }" required="true"
							autocomplete="off" class="layui-input">
					</div>
				</div>
			</div>
			
			
	
				<tr>
					<td>��������</td>
					<td><e:textarea rows="10" cols="50" name="aac506" defval="${ins.aac506 }" /></td>
				</tr>
				
				<tr>
					<td>����ʱ��</td>
					<td><input type="datetime-local" name="aac505" value="${ins.aac505 }"></td>
				</tr>
	
				<c:if test="${!empty ins.aac501}">
					<td>ִ��״̬</td>
					<td><e:radio name="aac504" value="δִ��:01,��ִ��:02,�ѷ���:03" readonly="true" defval="${ins.aac504 }" /></td>
				</c:if>
				<tr>
					<td colspan="2" align="center">
					<input type="submit" name="next" value="${empty ins.aac501?'���':'�޸�'}"
					formaction="<%=path %>/ac/${empty ins.aac501?'ac05Add.html':'ac05Modify.html' }">
					<input type="submit" name="next2" value="����	" 
					formaction="<%=path %>/ac/${empty ins.aac501?'ac05Add.html':'ac05Modify.html' }">
				</tr>
			</table>
			<input type="checkbox"  name="idlist" value="1" checked="checked">
			<input type="checkbox"  name="idlist" value="4" checked="checked">
			
			
			<c:if test="${empty ins.aac501 }">
			<table border="1" align="center" width="95%">
				<tr>
					<td colspan="2">���Ϳͻ�������ѯ</td>
					<td colspan="2" align="right"><input type="button" value="��ѯ" onclick="login()" name="next"></td>
				</tr>
				<tr>
					<td>�ͻ���</td>
					<td><e:text name="qaac403" id="qaac403"/></td>
					<td>�ͻ����</td>
					<td><e:text name="qaac402" id="qaac402"/></td>
				</tr>			
			</table>
			<table border="1" align="center" width="95%">
				<tr>
					<td></td>
					<td>�ͻ����</td>
					<td>�ͻ���</td>
					<td>��ϵ�绰</td>
					<td>����</td>
				</tr>
				<c:choose>
					<c:when test="${rows!= null }">
						<c:forEach items="${rows }" var="ins" varStatus="vs">
							<tr>
								<td>
								<input type="checkbox" onclick="onSelect(this.checked)" name="idlist2" value="${ins.aac401 }" >
								</td>
								<td>${ins.aac402 }</td>
								<td>
								<a href="#" onclick = "onEdit('${ins.aac401}')" >${ins.aac403 }</a>
								</td>
								<td>${ins.aac407 }</td>
								<td>${ins.aac408 }</td>
							</tr>
						</c:forEach>
						<c:forEach begin="${fn:length(rows)+1 }" end="10" step="1">
							<tr>
								<td></td>
								<td></td>
								<td></td>
								<td></td>
								<td></td>
							</tr>
						</c:forEach>
					</c:when>
					<c:otherwise>
						<c:forEach begin="1" end="10" step="1">
							<tr>
								<td></td>
								<td></td>
								<td></td>
								<td></td>
								<td></td>
							</tr>
						</c:forEach>
					</c:otherwise>
				</c:choose>
			</table>
			</c:if>
	</form>
			
			
		</fieldset>
	</div>
  </div>
  
  <div class="layui-footer">
    <!-- �ײ��̶����� -->
  </div>
</div>
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
           	${rows = result}
            if (result.resultCode == 200) 
            {
                alert("SUCCESS");
            };
        },
        error : function() {
            alert("�쳣��");
        }
    });
}
</script>
<script>
//JavaScript��������
	layui.use(['element','form'], function(){
	  var element = layui.element
	  ,form = layui.form;
	  
	  form.val('form',{
		  "aac509":"${empty ins.aac501?'2':ins.aac509 }"
	  })
	  
	});
</script>
</body>
</html>