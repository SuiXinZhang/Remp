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
        <c:param name="menu" value="ad04"/>
     </c:import>
  <div class="layui-body">
    <!-- ������������ -->
    <div class="layui-anim layui-anim-scale" style="padding: 15px; margin:50px 100px;">
    <fieldset class="layui-elem-field">
 	<legend style="color:black"><h2>ѡ��ȷ��</h2></legend>
  		<div class="layui-field-box">
	<form class="layui-form" action="<%=path%>/ad/ad03addReserve.html" method="post">
		<div class="layui-form-item" align="center">
			<div class="layui-inline">
				<label class="layui-form-label">
					<i class="layui-icon layui-icon-release" style="font-size: 20px; color: black;"></i>
					ѡ������
				</label>
				<div class="layui-input-inline">
					<input type="text" readonly="readonly" required="required" name="aad303" value="0" autocomplete="off" class="layui-input">
				</div>
			</div>
			<div class="layui-inline">
				<label class="layui-form-label">
					<i class="layui-icon layui-icon-home" style="font-size: 20px; color: black;"></i>
					�������
				</label>
			<div class="layui-input-inline">
				<input type="text" id="room" readonly="readonly" name="aad302" required lay-verify="true" value="${ins.aad502 }"
				onclick="selectRoom()" readonly="readonly" class="layui-input">
				<input id="roomNo" type="hidden" name="aaa801" value="${ins.aaa801 }">
			</div>
		</div>
		</div>
		<div class="layui-form-item" align="center">
			<div class="layui-inline">
				<label class="layui-form-label">
					<i class="layui-icon layui-icon-release" style="font-size: 20px; color: black;"></i>
					ʵ���ź�
				</label>
				<div class="layui-input-inline">
					<input type="text" readonly="readonly" required="required" name="aad304" value="0000" autocomplete="off" class="layui-input">
				</div>
			</div>
			<div class="layui-inline">
				<label class="layui-form-label">
					<i class="layui-icon layui-icon-username" style="font-size: 20px; color: black;"></i>
					�ͻ�����
				</label>
				<div class="layui-input-inline">
					<input type="text" readonly="readonly" required="required" name="aad305" value="${ins.aad508}" autocomplete="off" class="layui-input">
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
					<input type="text" required="required" name="aad306" value="${param.aad306 }" autocomplete="off" class="layui-input">
				</div>
			</div>
			<div class="layui-inline">
				<label class="layui-form-label">
					<i class="layui-icon layui-icon-date" style="font-size: 20px; color: black;"></i>
					ѡ��ʱ��
				</label>
				<div class="layui-input-inline">
					<input type="text" id="date" required="required" value="${param.aad307 }" name="aad307" autocomplete="off" class="layui-input">
				</div>
			</div>
		</div>
		<div class="layui-form-item" align="center">
	       <input type="submit" name="next" value="ȷ��" class="layui-btn layui-btn-normal"
	       	  formaction="<%=path%>/ad/ad03addReserve.html">
	       	  <input type="submit" name="next" value="�鿴" class="layui-btn layui-btn-normal"
	       	  formaction="<%=path%>/ad/ad03query.html" formnovalidate="formnovalidate">
	       <input type="submit" name="next" value="����" class="layui-btn layui-btn-normal"
	       formaction="<%=path%>/ad/adqueryRoom.html"
	          formnovalidate="formnovalidate">
	    </div>
	<input type="hidden" name="aac401" value="${ins.aac401 }">
	<input type="hidden" name="aad301" value="${ins.aad301 }">
</form>
	</div>
	</fieldset>
    </div>
  </div>

</div>
<script >
	//JavaScript��������
	layui.use(['layer', 'form','element'], function(){
	  var layer = layui.layer
	  ,form = layui.form
	  ,element = layui.element;
	  if("${msg }" != "")
		{
			layer.msg('${msg }');	  
		}
	});
	layui.use('laydate', function(){
		  var laydate = layui.laydate;
		 
		  //ִ��һ��laydateʵ��
		  laydate.render({
		    elem: '#date'  //ָ��Ԫ��
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