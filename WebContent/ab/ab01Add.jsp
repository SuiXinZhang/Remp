<%@ page language="java" pageEncoding="GBK"%>
<%@include file="/base/taglib.jsp" %>
<html>
	<head>
		<jsp:include page="/base/head.jsp" />
		
		<style>
			.layui-form-label{
				width: 110px;
			}
			.layui-input-inline{
				margin-left: 20px;
			}
		</style>
		
	</head>
	<body class="layui-layout-body">
		<div class="layui-layout layui-layout-admin">
			<jsp:include page="/base/header.jsp" />
			<c:import url="/ab/menu.jsp">
	    		<c:param name="menu" value="ab01a"/>
	   	    </c:import>
		     
			<div class="layui-body">
				<div class="layui-anim layui-anim-scale"
					style="padding: 15px; margin: 30px 80px;">
					<fieldset class="layui-elem-field layui-filed-title" style="margin-top: 20px;">
						<legend style="color:black;"><h2>${empty param.aab101?'����':'�޸�' }���ۼƻ�</h2></legend>
				
					<form action="<%=path%>/ab/ab01Add.html" class="layui-form" method="post">
					
					<div align="center">
	
						<div class="layui-form-item" align="left">
							<div class="layui-inline" style="padding-left:17.5%">
								<label class="layui-form-label">
									<i class="layui-icon layui-icon-form" style="font-size: 20px; color: black;"></i>��Ŀ����
								</label>
								<div class="layui-input-inline">
									<select name="aab102" required>
									    <c:forEach items='<%=session.getAttribute("prjs")%>' var="ins">
									    	<option value="${ins.aaa202 }">${ins.aaa202 }</option>
									    </c:forEach>
									</select>
								</div>
							</div>
							<div class="layui-inline">
								<div class="layui-inline">
								<label class="layui-form-label">
									<i class="layui-icon layui-icon-date" style="font-size: 20px; color: black;"></i>�ƶ�����
								</label>
								<div class="layui-input-inline">
									<input type="text" name="aab103" required="true" value="${ins.aab103 }" class="layui-input" id="test29" placeholder="yyyy-MM-dd">
								</div>
							</div>
							</div>
						</div>


						<div class="layui-form-item">
							<div class="layui-inline">
								<label class="layui-form-label">
									<i class="layui-icon layui-icon-home" style="font-size: 20px; color: black;"></i>�ƻ��������
								</label>
								<div class="layui-input-inline">
									<input type="number" step="1" name="aab105" required="true" value="${ins.aab105 }" class="layui-input">
								</div>
							</div>
							<div class="layui-inline">
								<label class="layui-form-label">
									<i class="layui-icon layui-icon-home" style="font-size: 20px; color: black;"></i>�ƻ���������
								</label>
								<div class="layui-input-inline">
									<input type="number" step="1" name="aab106" required="true" value="${ins.aab106 }" class="layui-input">
								</div>
							</div>
						</div>

						<div class="layui-form-item">
							<div class="layui-inline">
								<label class="layui-form-label">
									<i class="layui-icon layui-icon-rmb" style="font-size: 20px; color: black;"></i>�ƻ����۽��
								</label>
								<div class="layui-input-inline">
									<input type="number" step="0.01" name="aab107" required="true" value="${ins.aab107 }" class="layui-input">
								</div>
							</div>
							<div class="layui-inline">
								<label class="layui-form-label">
									<i class="layui-icon layui-icon-rmb" style="font-size: 20px; color: black;"></i>�ƻ����۾���
								</label>
								<div class="layui-input-inline">
									<input type="number" step="0.01" name="aab108" required="true" value="${ins.aab108 }" class="layui-input">
								</div>
							</div>
						</div>

						<div class="layui-form-item" align="left">
							<div class="layui-inline" style="padding-left:17.5%">
								<label class="layui-form-label">
									<i class="layui-icon layui-icon-rmb" style="font-size: 20px; color: black;"></i>�ƻ��ؿ���
								</label>
								<div class="layui-input-inline">
									<input type="number" step="0.01" name="aab109" required="true" value="${ins.aab109 }" class="layui-input">
								</div>
							</div>
						</div>

						<div class="layui-form-item layui-form-text"  style="padding-left:250px;padding-right:220px;">
							<label class="layui-form-label" style="width:50px">
								<i class="layui-icon layui-icon-survey" style="font-size: 20px; color: black;"></i>��ע
							</label>
							<div class="layui-input-block">
								<textarea placeholder="����������" name="aab110" class="layui-textarea">${ins.aab110 }</textarea>
							</div>
						</div>
					</div>	

						<div class="layui-form-item" align="center">
							<button class="layui-btn layuiadmin-btn-useradmin" type="submit" 
								formaction="<%=path%>/${empty param.aab101?'ab/ab01Add':'ab/ab01Modify' }.html">
								<i class="layui-icon layui-icon-add-1"></i>${empty param.aab101?'���':'�޸�' }
							</button>
							<button class="layui-btn layuiadmin-btn-useradmin" type="submit" 
								formaction="<%=path %>/ab/ab01Query.html" formnovalidate="formnovalidate">
								<i class="layui-icon layui-icon-prev"></i>����
							</button>
						</div>
						<input type="hidden" name="aab101" value="${param.aab101 }">
					</form>
					</fieldset>
				</div>

			</div>

			<div class="layui-footer">
				<!-- �ײ��̶����� -->
			</div>
		</div>
		<script>
			//JavaScript��������
			layui.use(['layer','element','form'], function() {
				var element = layui.element;
				var layer = layui.layer,
					form = layui.form;
				
				if("${msg }" != "")
				{
					layer.msg('${msg }');	  
				}

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
