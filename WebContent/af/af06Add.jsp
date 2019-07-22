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
	    	<c:param name="menu" value="af05q"/>
	    </c:import>
		<div class="layui-body">
		${msg }
			<div class="layui-anim layui-anim-scale"
			style="padding: 15px; margin: 30px 80px;">
			<fieldset class="layui-elem-field layui-filed-title" style="margin-top: 20px;">
				<legend>${empty param.aab601?'����':'�޸�' }���зſ</legend>
		
				<form class="layui-form" id="myform" layfilter="form"
				 action="<%=path%>/af/af06Add.html" method="post">
				
				<div align="center">
				
					<div class="layui-form-item">
						<div class="layui-inline">
							<label class="layui-form-label">��������</label>
							<div class="layui-input-inline">
								<input type="text" name="aaf604" required="true" autofocus="true" value="${ins.aaf604 }" class="layui-input">
							</div>
						</div>
						<div class="layui-inline">
							<label class="layui-form-label">�Ǽ���</label>
							<div class="layui-input-inline">
								<input type="text" name="aaf603" required="true" value="${ins.aaf603 }" class="layui-input" >
							</div>
						</div>
					</div>

					<div class="layui-form-item">
						<div class="layui-inline">
							<label class="layui-form-label">�ſ��</label>
							<div class="layui-input-inline">
								<input type="text" name="aaf602" readonly="true" value="${ins.aaf602 }" class="layui-input">
							</div>
						</div>
						<div class="layui-inline">
							<label class="layui-form-label">�ſ�����</label>
					   		<div class="layui-input-inline">
					   			<input type="text" name="aaf605" required="true" value="${ins.aaf605 }" 
					   			class="layui-input" id="test29" placeholder="yyyy-MM-dd">
					   		</div>
						</div>
					</div>
					
					<div class="layui-form-item">
						<div class="layui-inline">
							<label class="layui-form-label">��Ŀ����</label>
							<div class="layui-input-inline">
								<input type="text" name="aaf612" required="true" value="${ins.aaf612 }" class="layui-input">
							</div>
						</div>
						<div class="layui-inline">
							<label class="layui-form-label">��������</label>
							<div class="layui-input-inline">
								<input type="text" name="aaf610" required="true" value="${ins.aaf610 }" class="layui-input">
							</div>
						</div>
					</div>
					
					
					<div class="layui-form-item">
						<div class="layui-inline">
							<label class="layui-form-label">���㷽ʽ</label>
							<div class="layui-input-inline">
								<input type="text" name="aaf608" required="true" value="${ins.aaf608 }" class="layui-input">
							</div>
						</div>
						<div class="layui-inline">
							<label class="layui-form-label">���㵥��</label>
							<div class="layui-input-inline">
								<input type="text" name="aaf609" readonly="true" value="${ins.aaf609 }" class="layui-input">
							</div>
						</div>
					</div>
					
					<br>
					<br>
					
					<div class="layui-form-item">
						<div class="layui-inline">
							<label class="layui-form-label">�����</label>
							<div class="layui-input-inline">
								<input type="text" id="shenpi" name="aaf606" value="${ins.aaf606 }" class="layui-input">
							</div>
						</div>
					</div>
				</div>
				
					<div class="layui-form-item" align="center">
			   			<input type="submit" name="next" value="${empty param.aaf601?'���':'���'}"
			 				formaction="<%=path %>/af/${empty param.aaf601?'af06Add':'af06Exam' }.html" class="layui-btn">
			 			<input type="submit" name="next" value="����"
			 				formaction="<%=path %>/af/af06Query.html"
			 				formnovalidate="formnovalidate" class="layui-btn">
				 	</div>
				</table>
				<input type="hidden" name="aaf601" value="${param.aaf601 }">
			</form>
			</fieldset>
			</div>
		</div>

	</div>
	<script type="text/javascript">
	window.onload=function()
	{
		var obj = document.getElementById("shenpi");
		if(${empty param.aaf601})
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
</body>
</html>