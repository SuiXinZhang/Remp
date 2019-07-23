<%@ page language="java" pageEncoding="GBK"%>
<%@include file="/base/taglib.jsp"%>
<html>
<head>
	<jsp:include page="/base/head.jsp" />
</head>
<body class="layui-layout-body">
	<div class="layui-layout layui-layout-admin">
		<jsp:include page="/base/header.jsp" />
		<c:import url="/af/menu.jsp">
	    	<c:param name="menu" value="af07a"/>
	    </c:import>
		<div class="layui-body">
		${msg }
		<div class="layui-anim layui-anim-scale" style="padding: 15px; margin:50px 100px;">
	   	<fieldset class="layui-elem-field">
	 	<legend style="color:black"><h2>${empty param.aaa601?'����':'�޸�' }Ƿ���</h2></legend>
	 	<div class="layui-field-box">
			<form class="layui-form" action="<%=path%>/af/af07Add.html" method="post">
			
			<div align="center">
			   	<div class="layui-form-item">
			   		<div class="layui-inline">
						<label class="layui-form-label">
							<i class="layui-icon layui-icon-username" style="font-size: 20px; color: black;"></i>�ͻ�����
						</label>
						<div class="layui-input-inline">
							<input type="text" name="aaf703" required="true" autofocus="true" value="${ins.aaf703 }" class="layui-input">
						</div>
					</div>
					<div class="layui-inline">
						<label class="layui-form-label">
							<i class="layui-icon layui-icon-file" style="font-size: 20px; color: black;"></i>�ͻ�����
						</label>
						<div class="layui-input-inline">
							<input type="text" name="aaf704" required="true" value="${ins.aaf704 }" class="layui-input">
						</div>
					</div>
				</div>	

			
				<div class="layui-form-item"  align="left">
					<div class="layui-inline" style="padding-left:213px">
						<label class="layui-form-label">
							<i class="layui-icon layui-icon-home" style="font-size: 20px; color: black;"></i>������
						</label>
						<div class="layui-input-inline">
							<input type="text" id="room" name="aaf702" value="${ins.aaf702 }" required lay-verify="true" 
							onclick="selectRoom()" readonly="readonly" class="layui-input">
						</div>
					</div>
					<div class="layui-inline">
						<label class="layui-form-label">
							<i class="layui-icon layui-icon-date" style="font-size: 20px; color: black;"></i>ǩ������
						</label>
						<div class="layui-input-inline">
							<input type="text" name="aaf705" required="true" value="${ins.aaf705 }" id="test29" class="layui-input">
						</div>
					</div>
				</div>
			
				<div class="layui-form-item">
					<div class="layui-inline">
						<label class="layui-form-label">
							<i class="layui-icon layui-icon-rmb" style="font-size: 20px; color: black;"></i>��ͬ���
						</label>
						<div class="layui-input-inline">
							<input type="number" step="0.01" name="aaf706" required="true" value="${ins.aaf706 }" class="layui-input">
						</div>
					</div>
					<div class="layui-inline">
						<label class="layui-form-label">
							<i class="layui-icon layui-icon-rmb" style="font-size: 20px; color: black;"></i>Ƿ����
						</label>
						<div class="layui-input-inline">
							<input type="number" step="0.01" name="aaf709" required="true" value="${ins.aaf709 }" class="layui-input">
						</div>
					</div>
				</div>
			  </div>
			  <div class="layui-form-item" align="center">
		  			<input type="submit" name="next" value="${empty param.aaf701?'���':'�޸�'}"
						formaction="<%=path %>/af/${empty param.aaf701?'af07Add':'af07Exam' }.html" class="layui-btn">
					<input type="submit" name="next" value="����"
						formaction="<%=path %>/af/af07Query.html"
		 				formnovalidate="formnovalidate" class="layui-btn">
			  </div>
			  <input type="hidden" name="aaf701" value="${param.aaf701 }">
			</form>	
			</div>
			</fieldset>
			</div>
		</div>

	</div>
	
	<script type="text/javascript">
	window.onload=function()
	{
		var obj = document.getElementById("#");
		if(${empty param.aaf701})
		{
			obj.readOnly=true;
		} 
		else
		{
			obj.readOnly=false;	
			obj.required=true;
		}
	}
	</script>
	<script>
//JavaScript��������
	layui.use(['layer', 'form','element'], function(){
	  var element = layui.element;
	  var layer = layui.layer
	  ,form = layui.form;
	});
	
	//����ģ��
	layui.use('laydate', function() {
		var laydate = layui.laydate;
		//ī������
		laydate.render({
			elem: '#test29',
			theme: 'molv'
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