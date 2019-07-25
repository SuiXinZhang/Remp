<%@ page language="java" pageEncoding="GBK"%>
<%@include file="/base/taglib.jsp" %>
<html>
<head>
	<jsp:include   page="/base/head.jsp"/>
<script>
     //JavaScript��������	
	//һ��ֱ��д��һ��js�ļ���
	layui.use(['layer', 'form','element'], function(){
	  var layer = layui.layer
	  ,form = layui.form
	  ,element = layui.element;
	  if("${msg }" != "")
		{
			layer.msg('${msg }');	  
		}
	  form.val('myform',{
		  "oaad112":"${ins.aad112}",
		  "oaad102":"${ins.aad102}"
		  
	  });
	});
	layui.use('laydate', function(){
		  var laydate = layui.laydate;
		 
		  //ִ��һ��laydateʵ��
		  laydate.render({
		    elem: '#date1'  //ָ��Ԫ��
		  });
		  laydate.render({
			elem: '#date2'  //ָ��Ԫ��
			  });
		  laydate.render({
			elem: '#date3'  //ָ��Ԫ��
			  });
		});
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
</head>
<body class="layui-layout-body">
<div class="layui-layout layui-layout-admin">
  	<jsp:include   page="/base/header.jsp"/>
	<c:import url="/ad/menu.jsp">
        <c:param name="menu" value="ad01"/>
     </c:import>
  <div class="layui-body">
    <!-- ������������ -->
    <div class="layui-anim layui-anim-scale" style="padding: 15px; margin:50px 100px;">
    <fieldset class="layui-elem-field">
 	<legend style="color:black"><h2>${empty param.aad101?'���':'�޸�' }ԤԼ</h2></legend>
  		<div class="layui-field-box">
	<form lay-filter="myform" class="layui-form" action="<%=path %>/ad/ad01addOrder.html" method="post">
	    <div class="layui-form-item" align="center">
			<div class="layui-inline">
				<label class="layui-form-label">
					<i class="layui-icon layui-icon-face-smile" style="font-size: 20px; color: black;"></i>
					��Ŀ����
				</label>
				<div class="layui-input-inline">
					<%-- <input type="text" name="oaad102" required lay-verify="true" value="${ins.aad102 }"
					 autocomplete="off" class="layui-input"> --%>
					<select name="oaad102" required>
						<c:forEach items='<%=session.getAttribute("prjs")%>' var="ins">
							<option value="${ins.aaa202 }">${ins.aaa202 }</option>
						</c:forEach>
					</select>
				</div>
			</div>
			<div class="layui-inline">
				<label class="layui-form-label">
					<i class="layui-icon layui-icon-username" style="font-size: 20px; color: black;"></i>
					�ͻ�����
				</label>
				<div class="layui-input-inline">
					<input type="text" name="oaad103" required lay-verify="true" value="${ins.aad103 }"
							 autocomplete="off" class="layui-input">
				</div>
			</div>
		</div>
		<div class="layui-form-item" align="center">
			<div class="layui-inline">
				<label class="layui-form-label">
					<i class="layui-icon layui-icon-date" style="font-size: 20px; color: black;"></i>
					ԤԼ����
				</label>
				<div class="layui-input-inline">
					<input type="text" name="oaad105" required lay-verify="true" value="${ins.aad105 }"
					    id="date1" autocomplete="off" class="layui-input">
				</div>
			</div>
			<div class="layui-inline">
				<label class="layui-form-label">
					<i class="layui-icon layui-icon-date" style="font-size: 20px; color: black;"></i>
					ʧЧ����
				</label>
				<div class="layui-input-inline">
					<input type="text" name="oaad106" required lay-verify="true" value="${ins.aad106 }"
						id="date2" autocomplete="off" class="layui-input">
				</div>
			</div>
		</div>
		<div class="layui-form-item" align="center">
			<div class="layui-inline">
				<label class="layui-form-label">
					<i class="layui-icon layui-icon-home" style="font-size: 20px; color: black;"></i>
					�������
				</label>
				<div class="layui-input-inline">
					<input id="room" type="text" name="oaad110" required lay-verify="true" value="${ins.aad110 }"
					   onclick="selectRoom()" readonly="readonly" class="layui-input">
					<input id="roomNo" type="hidden" name="aaa801" value="${ins.aaa801 }">
				</div>
			</div>
			<div class="layui-inline">
				<label class="layui-form-label">
					<i class="layui-icon layui-icon-rmb" style="font-size: 20px; color: black;"></i>
					Ӧ�ս��
				</label>
				<div class="layui-input-inline">
					<input type="number" step="0.01" name="oaad111" required lay-verify="true" 
					     value="${ins.aad111 }" autocomplete="off" class="layui-input">
				</div>
			</div>
		</div>
		<div class="layui-form-item" align="center">
			<div class="layui-inline">
				<label class="layui-form-label">
					<i class="layui-icon layui-icon-dollar" style="font-size: 20px; color: black;"></i>
					��&#8195;&#8195;��
				</label>
				<div class="layui-input-inline">
					<select name="oaad112" required="required">
						<option value="01">�����</option>
						<option value="02">��Ԫ</option>
						<option value="03">Ӣ��</option>
						<option value="04">��Ԫ</option>
						<option value="05">ŷԪ</option>
					</select>
				</div>
			</div>
			<div class="layui-inline">
				<label class="layui-form-label">
					<i class="layui-icon layui-icon-rmb" style="font-size: 20px; color: black;"></i>
					ʵ�ս��
				</label>
				<div class="layui-input-inline">
					<input type="number" step="0.01" name="oaad113" required lay-verify="true" 
					 value="${ins.aad113 }" autocomplete="off" class="layui-input">
				</div>
			</div>
		</div>
		<div class="layui-form-item" align="center">
			<div class="layui-inline">
				<label class="layui-form-label">
					<i class="layui-icon layui-icon-username" style="font-size: 20px; color: black;"></i>
					Ȩ&ensp;��&ensp;��
				</label>
				<div class="layui-input-inline">
					<input type="text" name="oaad109" required lay-verify="true" value="${ins.aad109 }"
							 autocomplete="off" class="layui-input">
				</div>
			</div>
			<div class="layui-inline">
				<label class="layui-form-label">
					<i class="layui-icon layui-icon-username" style="font-size: 20px; color: black;"></i>
					ҵ&ensp;��&ensp;Ա
				</label>
				<div class="layui-input-inline">
					<input type="text" name="oaad114" required lay-verify="true" value="${ins.aad114 }"
					 autocomplete="off" class="layui-input">
				</div>
			</div>
		</div>
		<div class="layui-form-item" align="center">
			<c:if test="${!empty param.aad101 }">
			<div class="layui-inline">
				<label class="layui-form-label">
					<i class="layui-icon layui-icon-release" style="font-size: 20px; color: black;"></i>
					ʵ���ź�
				</label>
					<div class="layui-input-inline">
						<input type="text" name="oaad104" value="${ins.aad104 }"
							 autocomplete="off" class="layui-input">
					</div>
				</div>
			<div class="layui-inline">
				<label class="layui-form-label">
					<i class="layui-icon layui-icon-release" style="font-size: 20px; color: black;"></i>
					�����ź�
				</label>
					<div class="layui-input-inline">
						<input type="text" name="oaad108" value="${ins.aad108 }"
							 autocomplete="off" class="layui-input">
					</div>
				</div>
			</c:if>
		</div>
		<div class="layui-form-item" align="center">
			<c:if test="${!empty param.aad101 }">
				<div class="layui-inline">
				<label class="layui-form-label">
					<i class="layui-icon layui-icon-survey" style="font-size: 20px; color: black;"></i>
					�˺�ԭ��
				</label>
					<div class="layui-input-inline">
						<input type="text" name="aad203" value="${ins.aad203 }"
							 autocomplete="off" class="layui-input">
					</div>
				</div>
				<div class="layui-inline">
				<label class="layui-form-label">
					<i class="layui-icon layui-icon-date" style="font-size: 20px; color: black;"></i>
					�˺�����
				</label>
					<div class="layui-input-inline">
						<input type="text" id="date3" name="aad202" value="${ins.aad202 }"
							 autocomplete="off" class="layui-input">
					</div>
				</div>
			</c:if>
	   </div>
	   <div class="layui-form-item layui-form-text" align="center">
			<div class="layui-inline">
				<label class="layui-form-label">
					<i class="layui-icon layui-icon-edit" style="font-size: 20px; color: black;"></i>
					��&#8195;&#8195;ע
				</label>
				<div class="layui-input-inline">
					<textarea cols="66" name="oaad115" class="layui-textarea" placeholder="����������">${ins.aad115 }</textarea>
				</div>
			</div>
	   </div>
       <div class="layui-form-item" align="center">
       <c:choose>
       <c:when test="${ins.aad116=='���˺�'||ins.aad116=='��ʧЧ'}">
       <input type="submit" name="next" value="${empty param.aad101?'���':'�޸�'}" class="layui-btn layui-btn-normal layui-btn-disabled"
              disabled="disabled" formaction="${empty param.aad101?'ad01addOrder':'ad01modifyOrder'}.html">
       <input type="submit" name="text" value="�˺�"  class="layui-btn layui-btn-normal layui-btn-disabled"
              disabled="disabled" formaction="<%=path%>/ad/ad02addWithdrawOrder.html">
       </c:when>
       <c:otherwise>
       <input type="submit" name="next" value="${empty param.aad101?'���':'�޸�'}" class="layui-btn layui-btn-normal"
              formaction="${empty param.aad101?'ad01addOrder':'ad01modifyOrder'}.html">
       <c:if test="${!empty param.aad101 }">
       <input type="submit" name="text" value="�˺�"  class="layui-btn layui-btn-normal"
              formaction="<%=path%>/ad/ad02addWithdrawOrder.html">
       </c:if>
       </c:otherwise>
       </c:choose>
       <input type="submit" name="next" value="${empty param.aad101?'�鿴':'����' }" 
              formaction="<%=path%>/ad/ad01queryOrder.html" class="layui-btn layui-btn-normal"
              formnovalidate="formnovalidate">
       </div>
<input type="hidden" name="aad101" value="${param.aad101 }">
<input type="hidden" name="oaac401" value="${ins.aac401 }">
<input type="hidden" name="oaad107" value="${ins.aad107 }">
							  
</form>
</div>
</fieldset>
    </div>
  </div>

</div>
</body>
</html>