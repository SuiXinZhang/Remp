<%@ page language="java" pageEncoding="GBK"%>
<%@include file="/base/taglib.jsp" %>
<html>
<head>
	<jsp:include   page="/base/head.jsp"/>
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
	</script>
	<script type="text/javascript">
	var count=0;
    
    function onConfirm(vaaa801)
    {
  	 var vform = document.getElementById("myform");
  	 vform.action='<%=path%>/ad/ad03confirm.html?aaa801='+vaaa801;
  	 //alert(vform.action);
  	 vform.submit();
    } 
    function onReserve(vaaa801)
    {
  	 var vform = document.getElementById("myform");
  	 vform.action='<%=path%>/ad/ad05turnReserve.html?aaa801='+vaaa801;
  	 //alert(vform.action);
  	 vform.submit();
    } 
	</script>
</head>
<body class="layui-layout-body">
<div class="layui-layout layui-layout-admin">
  	<jsp:include   page="/base/header.jsp"/>
	<jsp:include   page="/ad/menu.jsp"/>
  <div class="layui-body">
    <!-- ������������ -->
    <div style="padding: 15px;">
<form lay-filter="myform" id="myform" class="layui-form" action="<%=path %>/ad/adqueryRoom.html" method="post">
    	<div class="layui-form-item" align="center">
			<div class="layui-inline">
				<label class="layui-form-label">�����ܼ�[B]</label>
				<div class="layui-input-inline">
					<input type="text" name="baaa809" autocomplete="off" class="layui-input">
				</div>
			</div>
			<div class="layui-inline">
				<label class="layui-form-label">�����ܼ�[E]</label>
				<div class="layui-input-inline">
					<input type="text" name="eaaa809" autocomplete="off" class="layui-input">
				</div>
			</div>
		</div>
		<div class="layui-form-item" align="center">
			<div class="layui-inline">
				<label class="layui-form-label">�������[B]</label>
				<div class="layui-input-inline">
					<input type="text" name="baaa505" autocomplete="off" class="layui-input">
				</div>
			</div>
			<div class="layui-inline">
				<label class="layui-form-label">�������[E]</label>
				<div class="layui-input-inline">
					<input type="text" name="eaaa505" autocomplete="off" class="layui-input">
				</div>
			</div>
		</div>
		<div class="layui-form-item" align="center">
			<div class="layui-inline">
				<label class="layui-form-label">����</label>
				<div class="layui-input-inline">
					<select name="qaaa502">
						<option value="">���޶�</option>
						<option value="A">A</option>
 						<option value="B">B</option>
 						<option value="C">C</option>
					</select>
				</div>
			</div>
			<div class="layui-inline">
				<label class="layui-form-label">����ṹ</label>
				<div class="layui-input-inline">
					<select name="qaaa504">
						<option value="">���޶�</option>
						<option value="��������һ��">��������һ��</option>
 						<option value="������������">������������</option>
 						<option value="����һ��һ��">����һ��һ��</option>
					</select>
				</div>
			</div>
		</div>
		<div class="layui-form-item" align="center">
			<div class="layui-inline">
				<label class="layui-form-label">״̬</label>
				<div class="layui-input-inline">
					<select name="qaaa805">
						<option value="">���޶�</option>
						<option value="01">�ȴ�</option>
 						<option value="02">����</option>
 						<option value="03">����</option>
 						<option value="04">��ѡ</option>
 						<option value="05">Ԥ��</option>
					</select>
				</div>
			</div>
		</div>
	<!-- ���ݵ����� -->
	<table class="layui-table" lay-even lay-skin="nob">
	  <tr>
	    <td></td>
	    <td>���</td>
	    <td>�����</td>
	    <td>��ַ</td>
	    <td>״̬</td>
	    <td>����</td>
	    <td>����ṹ</td>
	    <td>���</td>
	    <td>��������</td>
	    <td>�����ܼ�</td>
	    <td></td>
	    <td></td>
	  </tr>
	  <c:choose>
	     <c:when test="${rows!=null }">
	         <!-- ��ʾʵ�ʲ�ѯ�������� -->
		     <c:forEach items="${rows }" var="ins" varStatus="vs">
	    	   	  <tr>
				    <td></td>
				    <td>${vs.count }</td>
				    <td>${ins.aaa803}</td>
				    <td>${ins.aaa804 }</td>
				    <td>${ins.caaa805 }</td>
				    <td>${ins.aaa502 }</td>
				    <td>${ins.aaa504 }</td>
				    <td>${ins.aaa505 }</td>
				    <td>${ins.aaa808 }</td>
				    <td>${ins.aaa809 }</td>
				    <c:choose>
					    <c:when test="${ins.caaa805=='ǩԼ'||ins.caaa805=='��ѡ'||ins.caaa805=='Ԥ��'}">
					    <td><a href="#"  onclick="" style="color:grey">ȷ��ѡ��</a></td>
					    <td><a href="#"  onclick="" style="color:grey">���Ԥ��</a></td>
					    </c:when>
					    <c:otherwise>
					    <td><a href="#" onclick="onConfirm('${ins.aaa801}')">ȷ��ѡ��</a></td>
					    <td><a href="#" onclick="onReserve('${ins.aaa801}')">���Ԥ��</a></td>
					    </c:otherwise>
				    </c:choose>
				  </tr>
		      </c:forEach>
		      </c:when>
	   </c:choose>
	</table>
	<div class="layui-form-item" align="center">
	       <input type="submit" name="next" class="layui-btn layui-btn-normal" value="��ѯ">
	</div>
	</form>
    </div>
  </div>
  <div class="layui-footer">
    <!-- �ײ��̶����� -->
    ? layui.com - �ײ��̶�����
  </div>
</div>
</body>
</html>