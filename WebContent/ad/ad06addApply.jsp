<%@ page language="java" pageEncoding="GBK"%>
<%@include file="/base/taglib.jsp" %>
<html>
<head>
	<jsp:include   page="/base/head.jsp"/>
</head>
<body class="layui-layout-body">
<div class="layui-layout layui-layout-admin">
  	<jsp:include   page="/base/header.jsp"/>
	<c:import url="/ad/menu.jsp">
        <c:param name="menu" value="ad12"/>
     </c:import>
  <div class="layui-body">
    <!-- ������������ -->
    <div class="layui-anim layui-anim-scale" style="padding: 15px; margin:50px 100px;">
    <fieldset class="layui-elem-field">
 	<legend style="color:black"><h2>�������</h2></legend>
  		<div class="layui-field-box">
    <form class="layui-form" lay-filter="myform" id="myform" action="<%=path %>/ad/ad06addApply.html" method="post">
	<div class="layui-form-item" align="center">
			<div class="layui-inline">
				<label class="layui-form-label">
					<i class="layui-icon layui-icon-username" style="font-size: 20px; color: black;"></i>
					�ͻ�����
				</label>
				<div class="layui-input-inline">
					<input type="text" name="aad611" required lay-verify="true" value="${ins.aad702 }"
							 autocomplete="off" class="layui-input">
				</div>
			</div>
			<div class="layui-inline">
				<label class="layui-form-label">
					<i class="layui-icon layui-icon-home" style="font-size: 20px; color: black;"></i>
					�������
				</label>
				<div class="layui-input-inline">
					<input type="text" id="room" name="aad610" required lay-verify="true" value="${ins.aad703 }"
					 onclick="selectRoom()" readonly="readonly" class="layui-input">
					<input id="roomNo" type="hidden" name="aaa801" value="${ins.aaa801 }">
				</div>
			</div>
	</div>
	<div class="layui-form-item" align="center">
			<div class="layui-inline">
				<label class="layui-form-label">
					<i class="layui-icon layui-icon-username" style="font-size: 20px; color: black;"></i>
					��&ensp;��&ensp;��
				</label>
				<div class="layui-input-inline">
					<input type="text" name="aad605" required lay-verify="true" value="${ins.aad605 }"
							 autocomplete="off" class="layui-input">
				</div>
			</div>
			<div class="layui-inline">
				<label class="layui-form-label">
					<i class="layui-icon layui-icon-date" style="font-size: 20px; color: black;"></i>
					����ʱ��
				</label>
				<div class="layui-input-inline">
					<input type="text" name="aad606" id="date" required lay-verify="true" value="${ins.aad606 }"
					 autocomplete="off" class="layui-input">
				</div>
			</div>
	</div>
	<div class="layui-form-item" align="center">
			<div class="layui-inline">
				<label class="layui-form-label">
					<i class="layui-icon layui-icon-tips" style="font-size: 20px; color: black;"></i>
					��������
				</label>
				<div class="layui-input-inline">
					<select name="aad602">
						<option value="01" selected>����</option>
						<option value="02">�˷�</option>
					</select>
				</div>
			</div>
			<div class="layui-inline">
				<label class="layui-form-label">
					<i class="layui-icon layui-icon-tips" style="font-size: 20px; color: black;"></i>
					ԭ�����
				</label>
				<div class="layui-input-inline">
					<select name="aad604">
						<option value="01" selected>������Ԥ��</option>
						<option value="02">��ϲ��</option>
					</select>
				</div>
			</div>
	</div>
	<div class="layui-form-item layui-form-text" align="center">
			<div class="layui-inline">
				<label class="layui-form-label">
					<i class="layui-icon layui-icon-edit" style="font-size: 20px; color: black;"></i>
					��&#8195;&#8195;ע
				</label>
				<div class="layui-input-inline">
					<textarea cols="66" name="aad609" class="layui-textarea" placeholder="����������">${ins.aad609 }</textarea>
				</div>
			</div>
	   </div>
	<div class="layui-form-item" align="center">
		<input type="submit" name="text" value="${empty param.aad601?'���':'����' }"
		 formaction="${empty param.aad601?'ad06addApply':'ad06examineApply' }.html"
		 class="layui-btn layui-btn-normal">
		 <input type="submit" name="text" value="����" class="layui-btn layui-btn-normal"
		 formaction="${empty param.aad601?'ad07queryAgreement':'ad06queryApply' }.html" formnovalidate="formnovalidate">
	</div>
   <input type="hidden" name="aac401" value="${ins.aac401 }">
   <input type="hidden" name="aad601" value="${param.aad601 }">
   <input type="hidden" name="aad701" value="${param.aad701 }">
</form>
	</div>
	</fieldset>
    </div>
  </div>

</div>
<script ></script>
<script>
//JavaScript��������
	layui.use(['layer', 'form','element'], function(){
	  var layer = layui.layer
      ,form = layui.form
	  ,element = layui.element;
	  if("${msg }" != "")
		{
			layer.msg('${msg }');	  
		}
	  form.val('myform',{
		  "aad602":"${ins.aad602}",
		  "aad604":"${ins.aad604}"
	  });
	});
	layui.use('laydate', function(){
		  var laydate = layui.laydate;
		 
		  //ִ��һ��laydateʵ��
		  laydate.render({
		    elem: '#date'  //ָ��Ԫ��
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
</body>
</html>