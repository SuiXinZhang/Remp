<%@ page language="java" pageEncoding="GBK"%>
<%@include file="/base/taglib.jsp" %>
<html>
<head>
	<jsp:include   page="/base/head.jsp"/>
</head>
<body class="layui-layout-body">
<div class="layui-layout layui-layout-admin">
  	<jsp:include   page="/base/header.jsp"/>
	<jsp:include   page="/ad/menu.jsp"/>
  <div class="layui-body">
    <!-- ������������ -->
    <div style="padding: 15px;">
    <form id="myform" class="layui-form" action="<%=path %>/ad/ad08querysalesLog.html" method="post">
	<div class="layui-form-item" align="center">
			<div class="layui-inline">
				<label class="layui-form-label">��������</label>
				<div class="layui-input-inline">
					<input type="text" name="qaad815" value="${param.qaad815 }" id="date"
					 autocomplete="off" class="layui-input">
				</div>
			</div>
	<table class="layui-table" lay-even lay-skin="nob">
	  <tr>
	    <td></td>
	    <td>���</td>
	    <td>��������</td>
	    <td>��������</td>
	    <td>ԤԼ�ź���</td>
	    <td>С������</td>
	    <td>�Ϲ�����</td>
	    <td>ǩԼ����</td>
	    <td>������</td>
	    <td>ҵ�����</td>
	    <td>��д��</td>
	  </tr>
	  <c:choose>
	     <c:when test="${rows!=null }">
	         <!-- ��ʾʵ�ʲ�ѯ�������� -->
		     <c:forEach items="${rows }" var="ins" varStatus="vs">
	    	   	  <tr>
				    <td></td>
				    <td>${vs.count }</td>
				    <td>${ins.aad802}</td>
				    <td>${ins.aad803 }</td>
				    <td>${ins.aad804 }</td>
				    <td>${ins.aad806 }</td>
				    <td>${ins.aad807 }</td>
				    <td>${ins.aad808 }</td>
				    <td>${ins.aad812 }</td>
				    <td>${ins.aad813 }</td>
				    <td><a href="#" onclick="onSelect('${ins.aad801}')">�޸�</a></td>
				  </tr>
		      </c:forEach>
		      <!-- ������� -->
		      <c:forEach begin="${fn:length(rows)+1 }" step="1" end="6">
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
			            <td></td>
			            <td></td>
			          </tr>
		      </c:forEach>
	     </c:when>
	     <c:otherwise>
	        <c:forEach begin="1" step="1" end="3">
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
	             <td></td>
	             <td></td>
	           </tr>
	        </c:forEach>
	     </c:otherwise>
	   </c:choose>
	</table>
	<div class="layui-form-item" align="center">
	       <input type="submit" class="layui-btn layui-btn-normal" name="next" value="��ѯ">
	 </div>
</form>
    </div>
  </div>
  
  <div class="layui-footer">
    <!-- �ײ��̶����� -->
    ? layui.com - �ײ��̶�����
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
	});
	function onSelect(vaad801)
    {
  	 var vform = document.getElementById("myform");
  	 vform.action="<%=path%>/ad/ad08findById.html?aad801="+vaad801;
  	 vform.submit();
    }
	layui.use('laydate', function(){
		  var laydate = layui.laydate;
		 
		  //ִ��һ��laydateʵ��
		  laydate.render({
		    elem: '#date'  //ָ��Ԫ��
		  });
		});
</script>
</body>
</html>