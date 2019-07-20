<%@ page language="java" pageEncoding="GBK"%>
<%@include file="/base/taglib.jsp"%>
<html>
<head>
	<jsp:include page="/base/head.jsp" />
</head>
<body class="layui-layout-body">
	<div class="layui-layout layui-layout-admin">
		<jsp:include page="/base/header.jsp" />
		<jsp:include page="/af/menu.jsp" />
		<div class="layui-body">
			<form id="myform" class="layui-form" action="<%=path%>/af/af07Query.html" method="post">
	
			<!------------------ ��ѯ������---------------------->
				<fieldset class="layui-elem-field layui-field-title" style="margin-top: 20px;">
					<legend>Ƿ���б�</legend>
				</fieldset>
				
				<div class="layui-form-item">
					<div class="layui-inline">
						<label class="layui-form-label">�ͻ�����</label>
						<div class="layui-input-inline">
							<input type="text" name="qaaf703" class="layui-input">
						</div>
					</div>
					<div class="layui-inline">
						<label class="layui-form-label">������</label>
						<div class="layui-input-inline">
							<input type="text" name="qaaf702" class="layui-input" >
						</div>
					</div>
				</div>
				
				<div class="layui-form-item">
					<div class="layui-inline">
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
				</div>
				
				<!-----------------���ݵ����� -------------------->
				<table class="layui-table">
					<tr>
					  <td></td>
					  <td>���</td>
					  <td>������</td>
					  <td>�ͻ�����</td>
					  <td>�ͻ�����</td>
					  <td>ǩ������</td>
					  <td>ǩ����</td>
					  <td>������</td>
					  <td></td>
					</tr>
			  
			  <c:choose>
			  	<c:when test="${rows!=null }">
			  		<!-- ��ʾ��ѯ�������� -->
			  		<c:forEach items="${rows }" var="ins" varStatus="vs">
			  			<tr>
			  				<td>
			  					<input type="checkbox" name="emailList" value="${ins.aaf704 }"
			  						onclick="onSelect(this.checked)" >
			  				</td>
			  				<td>
			  					${vs.count }
			  				</td>
			  				<td>${ins.aaf702 }</td>
			  				<td>${ins.aaf703 }</td>
			  				<td>${ins.aaf704 }</td>
			  				<td>${ins.aaf705 }</td>
						    <td>${ins.aaf706 }</td>
						    <td>${ins.aaf709 }</td>
						    <td>
						    	<a href="#" onclick="onEdit('${ins.aaf701}')" class="layui-btn">�ѽɷ�</a>
						    </td>
			  			</tr>
			  		</c:forEach>
			  		
			  		<!-- ������� -->
			  		<c:forEach begin="${fn:length(rows)+1 }" step="1" end="15">
					          <tr>
					            <td></td>
					            <td></td>
					            <td></td>
					            <td></td>
					            <td></td>
					            <td></td>
					            <td></td>
					            <td></td>
					            <td></td>
					          </tr>
				      </c:forEach>
			  	</c:when>
			  	<c:otherwise>
			        <c:forEach begin="1" step="1" end="15">
			           <tr>
			             <td></td>
			             <td></td>
			             <td></td>
			             <td></td>
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
			  
			  	<!-- ���ܰ�ť�� -->
				<div class="layui-form-item" align="center">
				       <input type="submit" name="next" value="��ѯ" class="layui-btn">
				       <input type="submit" name="next" value="���" 
				       formaction="<%=path%>/af/af07Add.jsp" class="layui-btn">
			
				       <input type="submit" id="del" name="next" value="�ʼ��߿�" 
				       formaction="<%=path%>/af/af07Mail.html" disabled="disabled" class="layui-btn">
				</div>
			</form>
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
	
	function onEdit(vaaf701)
	{
		var vform = document.getElementById("myform");
	  	 vform.action="<%=path%>/af/af07FindById.html?aaf701="+vaaf701;
	  	 vform.submit();
	}
	
	function onDel(vaaf701)
    {
  	 var vform = document.getElementById("myform");
  	 vform.action="<%=path%>/af/af07DelById.html?aaf701="+vaaf701;
  	 vform.submit();
    }

</script>
	<script>
//JavaScript��������
	layui.use(['layer', 'form','element'], function(){
	  var element = layui.element;
	  var layer = layui.layer
	  ,form = layui.form;
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