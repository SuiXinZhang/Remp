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
	    	<c:param name="menu" value="af05a"/>
	    </c:import>
		<div class="layui-body">
			${msg }
			<div class="layui-anim layui-anim-scale"
			style="padding: 15px; margin: 30px 80px;">
			<fieldset class="layui-elem-field layui-filed-title" style="margin-top: 20px;">
				<legend style="color:black;"><h2>���������ſ��б�</h2></legend>
			
			<form class="layui-form" id="myform" layfilter="form" 
			action="<%=path%>/af/af06Query.html" method="post">
			
			<div align="center">
	
	<!------------------ ��ѯ������---------------------->
				
				<div class="layui-form-item">
					<div class="layui-inline">
						<label class="layui-form-label">��Ŀ����</label>
						<div class="layui-input-inline">
							<select name="qaaf612" required>
							    <c:forEach items='<%=session.getAttribute("prjs")%>' var="ins">
							    	<option value="${ins.aaa202 }">${ins.aaa202 }</option>
							    </c:forEach>
							</select>
							<!-- <input type="text" name="qaaf612" class="layui-input"> -->
						</div>
					</div>
					<div class="layui-inline">
						<label class="layui-form-label">��������</label>
						<div class="layui-input-inline">
							<input type="text" name="qaaf604" class="layui-input">
						</div>
					</div>
					<div class="layui-inline">
						<label class="layui-form-label">�ſ��</label>
						<div class="layui-input-inline">
							<input type="text" name="qaaf602" class="layui-input">
						</div>
					</div>
				</div>
				
				<div class="layui-form-item" align="left">
					<div class="layui-inline" style="padding-left:85px">
						<label class="layui-form-label">��ʼ����</label>
						<div class="layui-input-inline">
							<input type="text" name="bdate" class="layui-input" id="test29" placeholder="yyyy-MM-dd">
						</div>
					</div>
					<div class="layui-inline">
						<label class="layui-form-label">��ֹ����</label>
						<div class="layui-input-inline">
							<input type="text" name="edate" class="layui-input" id="test30" placeholder="yyyy-MM-dd">
						</div>
					</div>
					<div class="layui-inline" style=" padding-left:110px">
						<input type="submit" name="next" value="��ѯ" class="layui-btn">
					</div>
					
				</div>
				
			</div>

		
		<!-----------------���ݵ����� -------------------->
		<div id="tableId" style="display: none">
		<table lay-filter="demo" border="1" width="95%" align="center">
		<thead>
			<tr>
			<td lay-data="{field:'sort1',width:60}">���</td>
			<td lay-data="{field:'projectname',width:125}">�ſ��</td>
			<td lay-data="{field:'username'}">�ſ�����</td>
			<td lay-data="{field:'userphone'}">��Ŀ����</td>
			<td lay-data="{field:'empname'}">�ſ�����</td>
			<td lay-data="{field:'style',width:88}">�Ǽ���</td>
			<td lay-data="{field:'date',sort:true,width:115}">�����</td>
			<td lay-data="{field:'opt',fixed:'right',width:200}">����</td>
			</tr>
	  </thead>
	  <tbody>
	  <c:choose>
	  	<c:when test="${rows!=null }">
	  		<!-- ��ʾ��ѯ�������� -->
	  		<c:forEach items="${rows }" var="ins" varStatus="vs">
	  			<tr>
	  				<!-- <td>
	  					<input type="checkbox" name="idlist" value="${ins.aaf601 }"
	  						onclick="onSelect(this.checked)" >
	  				</td> -->
	  				<td>
	  					${vs.count }
	  				</td>
	  				<td>${ins.aaf602 }</td>
	  				<td>${ins.aaf604 }</td>
	  				<td>${ins.aaf612 }</td>
				    <td>${ins.aaf605 }</td>
				    <td>${ins.aaf603 }</td>
				    <td>${ins.aaf606 }</td>
				    <td>
					    <a href="#" onclick="onEdit('${ins.aaf601}')"
						class="layui-btn layui-btn-xs">
						<i class="layui-icon layui-icon-edit"></i>���
						</a>
				    </td>
	  			</tr>
	  		</c:forEach>
	  		
	  	</c:when>
	  	<c:otherwise>
	       
	     </c:otherwise>
	  </c:choose>
	  </tbody>
	  </table>
	  
	  	<!-- ���ܰ�ť�� -->
	  	<div class="layui-form-item" align="center">
		       <input type="submit" name="next" value="���" 
		       formaction="<%=path%>/af/af06Add.jsp" class="layui-btn">
		</div>
		</div>
	</form>
	</fieldset>
	</div>
			
		</div>

	</div>
	
	<script type="text/javascript">

	var count=0;
	function onSelect(vstate)
	{
		vstate?count++:count--;
		var vdel=document.getElementById("del");
		vdel.disabled=(count==0);
	}
	
	function onEdit(vaaf601)
	{
		var vform = document.getElementById("myform");
	  	 vform.action="<%=path%>/af/af06FindById.html?aaf601="+vaaf601;
	  	 vform.submit();
	}
	
	function onDel(vaaf601)
    {
  	 var vform = document.getElementById("myform");
  	 vform.action="<%=path%>/af/af06DelById.html?aaf601="+vaaf601;
  	 vform.submit();
    }

</script>
	<script>
//JavaScript��������
	layui.use(['layer', 'form','element','table'], function(){
	  var element = layui.element;
	  var layer = layui.layer
	  ,form = layui.form
	  ,table = layui.table;
		//ת����̬���
		table.init('demo', {
			limit : 10,
			page : true,
			toolbar : true,
			done : function(res, curr, count) {
				$('#tableId').css('display', 'block');
			}
		});
	});
	
	//����ѡ���
	  layui.use('laydate', function() {
	  	var laydate = layui.laydate;
	  
	  	laydate.render({
	  		elem: '#test29',
	  		theme: 'molv',
			trigger: 'click'
	  	});
		
		laydate.render({
			elem: '#test30',
			theme: 'molv',
			trigger: 'click'
		});
	  });
</script>
</body>
</html>
