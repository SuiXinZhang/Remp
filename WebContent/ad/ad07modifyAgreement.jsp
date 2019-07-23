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
    <div class="layui-anim layui-anim-scale" style="padding: 15px; margin:50px 100px;">
    <fieldset class="layui-elem-field">
 	<legend style="color:black"><h2>�޸ĺ�ͬ</h2></legend>
  		<div class="layui-field-box">
    <form lay-filter="myform" id="myform" class="layui-form" action="<%=path %>/ad/ad07modifyAgreement.html" method="post">
	<div class="layui-form-item" align="center">
		<div class="layui-inline">
			<label class="layui-form-label">
				<i class="layui-icon layui-icon-username" style="font-size: 20px; color: black;"></i>
				�ͻ�����
			</label>
			<div class="layui-input-inline">
				<input type="text" name="aad702" required lay-verify="true" value="${ins.aad702 }"
				 autocomplete="off" class="layui-input">
			</div>
		</div>
		<div class="layui-inline">
			<label class="layui-form-label">
				<i class="layui-icon layui-icon-cellphone" style="font-size: 20px; color: black;"></i>
				��ϵ�绰
			</label>
			<div class="layui-input-inline">
				<input type="text" name="aad721" required lay-verify="true" value="${ins.aad721 }"
				autocomplete="off" class="layui-input">
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
				<input type="text" id="room" name="aad703" required lay-verify="true" value="${ins.aad703 }"
				onclick="selectRoom()" readonly="readonly" class="layui-input">
				<input id="roomNo" type="hidden" name="aaa801" value="${ins.aaa801 }">
			</div>
		</div>
		<div class="layui-inline">
			<label class="layui-form-label">
				<i class="layui-icon layui-icon-component" style="font-size: 20px; color: black;"></i>
				����ṹ
			</label>
			<div class="layui-input-inline">
				<input type="text" name="aaa504" required lay-verify="true" value="${ins.aaa504 }"
				 autocomplete="off" class="layui-input">
			</div>
		</div>
	</div>
	<div class="layui-form-item" align="center">
		<div class="layui-inline">
			<label class="layui-form-label">
				<i class="layui-icon layui-icon-engine" style="font-size: 20px; color: black;"></i>
				����״̬
			</label>
			<div class="layui-input-inline">
				<input type="text" name="aaa805" required lay-verify="true" value="${ins.saaa805 }"
						 autocomplete="off" class="layui-input">
			</div>
		</div>
		<div class="layui-inline">
			<label class="layui-form-label">
				<i class="layui-icon layui-icon-table" style="font-size: 20px; color: black;"></i>
				�������
			</label>
			<div class="layui-input-inline">
				<input type="number" name="aaa505" required lay-verify="true" value="${ins.aaa505 }"
				    step="0.01" autocomplete="off" class="layui-input">
			</div>
		</div>
	</div>
	<div class="layui-form-item" align="center">
		<div class="layui-inline">
			<label class="layui-form-label">
				<i class="layui-icon layui-icon-table" style="font-size: 20px; color: black;"></i>
				�������
			</label>
				<div class="layui-input-inline">
					<input type="number" step="0.01" name="aaa506" required lay-verify="true" value="${ins.aaa506 }"
					 autocomplete="off" class="layui-input">
				</div>
			</div>
		<div class="layui-inline">
			<label class="layui-form-label">
				<i class="layui-icon layui-icon-rmb" style="font-size: 20px; color: black;"></i>
				��������
			</label>
				<div class="layui-input-inline">
					<input type="number" name="aaa808" required lay-verify="true" value="${ins.aaa808 }"
						step="0.01"	autocomplete="off" class="layui-input">
				</div>
			</div>
	</div>
	<div class="layui-form-item" align="center" style="padding-left:110px">
		<div class="layui-inline">
			<label class="layui-form-label">
				<i class="layui-icon layui-icon-rmb" style="font-size: 20px; color: black;"></i>
				���ڵ���
			</label>
			<div class="layui-input-inline">
				<input type="number" name="aaa810" required lay-verify="true" value="${ins.aaa810 }"
				    step="0.01" autocomplete="off" class="layui-input">
			</div>
		</div>
		<div class="layui-inline">
			<label class="layui-form-label">
				<i class="layui-icon layui-icon-tips" style="font-size: 20px; color: black;"></i>
				�Ƽ۷�ʽ
			</label>
			<div class="layui-input-inline" style="width:300px;">
				<input type="radio" name="aad722" value="01" title="���������" checked>
				<input type="radio" name="aad722" value="02" title="���������"> 
			</div>
		</div>
	</div>
	<div class="layui-form-item" align="center">
		<div class="layui-inline">
			<label class="layui-form-label">
				<i class="layui-icon layui-icon-tips" style="font-size: 20px; color: black;"></i>
				���ʽ
			</label>
			<div class="layui-input-inline">
				<select name="aad704">
					<option value="01" selected>��ҵ����</option>
					<option value="02">ȫ��</option>
				</select>
			</div>
		</div>
		<div class="layui-inline">
			<label class="layui-form-label">
				<i class="layui-icon layui-icon-senior" style="font-size: 20px; color: black;"></i>
				��&#8195;&#8195;��
			</label>
			<div class="layui-input-inline">
				<input type="number" name="aad705" required lay-verify="true" value="${ins.aad705 }"
				    step="0.1" autocomplete="off" class="layui-input">
			</div>
		</div>
	</div>
	<div class="layui-form-item" align="center">
		<div class="layui-inline">
			<label class="layui-form-label">
				<i class="layui-icon layui-icon-rmb" style="font-size: 20px; color: black;"></i>
				�����ɽ���&#8195;&#8195;��
			</label>
			<div class="layui-input-inline">
				<input type="number" name="aad706" required lay-verify="true" value="${ins.aad706 }"
					step="0.01"	autocomplete="off" class="layui-input">
			</div>
		</div>
		<div class="layui-inline">
			<label class="layui-form-label">
				<i class="layui-icon layui-icon-rmb" style="font-size: 20px; color: black;"></i>
				���ڳɽ���&#8195;&#8195;��
			</label>
			<div class="layui-input-inline">
				<input type="number" name="aad707" required lay-verify="true" value="${ins.aad707 }"
				    step="0.01" autocomplete="off" class="layui-input">
			</div>
		</div>
	</div>
	<div class="layui-form-item" align="center">
		<div class="layui-inline">
			<label class="layui-form-label">
				<i class="layui-icon layui-icon-survey" style="font-size: 20px; color: black;"></i>
				�ۿ�˵��
			</label>
			<div class="layui-input-inline">
				<input type="text" name="aad708" required lay-verify="true" value="${ins.aad708 }"
				 autocomplete="off" class="layui-input">
			</div>
		</div>
		<div class="layui-inline">
			<label class="layui-form-label">
				<i class="layui-icon layui-icon-rmb" style="font-size: 20px; color: black;"></i>
				�����ܼ�
			</label>
			<div class="layui-input-inline">
				<input type="number" name="aad709" required lay-verify="true" value="${ins.aad709 }"
					step="0.01"	autocomplete="off" class="layui-input">
			</div>
		</div>
	</div>
	<div class="layui-form-item" align="center">
		<div class="layui-inline">
			<label class="layui-form-label">
				<i class="layui-icon layui-icon-rmb" style="font-size: 20px; color: black;"></i>
				��ͬ�ܼ�(�����)
			</label>
			<div class="layui-input-inline">
				<input type="number" name="aad711" required lay-verify="true" value="${ins.aad711 }"
				    step="0.01" autocomplete="off" class="layui-input">
			</div>
		</div>
		<div class="layui-inline">
			<label class="layui-form-label">
				<i class="layui-icon layui-icon-dollar" style="font-size: 20px; color: black;"></i>
				��ͬ����
			</label>
			<div class="layui-input-inline">
				<select name="aad712">
					<option value="01" selected>�����</option>
					<option value="02">��Ԫ</option>
					<option value="03">Ӣ��</option>
					<option value="04">��Ԫ</option>
					<option value="05">ŷԪ</option>
				</select>
			</div>
		</div>
	</div>
	<div class="layui-form-item" align="center">
		<div class="layui-inline">
			<label class="layui-form-label">
				<i class="layui-icon layui-icon-senior" style="font-size: 20px; color: black;"></i>
				��ͬ����
			</label>
			<div class="layui-input-inline">
				<input type="number" name="aad713" required lay-verify="true" value="${ins.aad713 }"
					step="0.01"	autocomplete="off" class="layui-input">
			</div>
		</div>
		<div class="layui-inline">
			<label class="layui-form-label">
				<i class="layui-icon layui-icon-rmb" style="font-size: 20px; color: black;"></i>
				Ӧ�ն���
			</label>
			<div class="layui-input-inline">
				<input type="number" name="aad714" required lay-verify="true" value="${ins.aad714 }"
				    step="0.01" autocomplete="off" class="layui-input">
			</div>
		</div>
	</div>
	<div class="layui-form-item" align="center">
		<div class="layui-inline">
			<label class="layui-form-label">
				<i class="layui-icon layui-icon-rmb" style="font-size: 20px; color: black;"></i>
				��ͬ�ܼ�
			</label>
			<div class="layui-input-inline">
				<input type="number" name="aad715" required lay-verify="true" value="${ins.aad715 }"
				    step="0.01" autocomplete="off" class="layui-input">
			</div>
		</div>
		<div class="layui-inline">
			<label class="layui-form-label">
				<i class="layui-icon layui-icon-date" style="font-size: 20px; color: black;"></i>
				ǩ������
			</label>
			<div class="layui-input-inline">
				<input type="text" name="aad716" id="date1" required lay-verify="true" value="${ins.aad716 }"
				 autocomplete="off" class="layui-input">
			</div>
		</div>
	</div>
	<div class="layui-form-item" align="center">
		<div class="layui-inline">
			<label class="layui-form-label">
				<i class="layui-icon layui-icon-date" style="font-size: 20px; color: black;"></i>
				��������
			</label>
			<div class="layui-input-inline">
				<input type="text" name="aad717" id="date2" required lay-verify="true" value="${ins.aad717 }"
						 autocomplete="off" class="layui-input">
			</div>
		</div>
		<div class="layui-inline">
			<label class="layui-form-label">
				<i class="layui-icon layui-icon-username" style="font-size: 20px; color: black;"></i>
				��&ensp;��&ensp;��
			</label>
			<div class="layui-input-inline">
				<input type="text" name="aad718" required lay-verify="true" value="${ins.aad718 }"
				 autocomplete="off" class="layui-input">
			</div>
		</div>
	</div>
	<div class="layui-form-item" align="center">
		<div class="layui-inline">
			<label class="layui-form-label">
				<i class="layui-icon layui-icon-username" style="font-size: 20px; color: black;"></i>
				ҵ&ensp;��&ensp;Ա
			</label>
			<div class="layui-input-inline">
				<input type="text" name="aad720" required lay-verify="true" value="${ins.aad720 }"
				 autocomplete="off" class="layui-input">
			</div>
		</div>
		<c:if test="${!empty param.aad701 }">
		<div class="layui-inline">
			<label class="layui-form-label">
				<i class="layui-icon layui-icon-release" style="font-size: 20px; color: black;"></i>
				��ͬ���
			</label>
				<div class="layui-input-inline">
					<input type="text" name="aad710" value="${ins.aad710 }"
						 autocomplete="off" class="layui-input">
				</div>
			</div>
		</c:if>
	</div>
    
    <div class="layui-form-item" align="center">
	<c:choose>
		<c:when test="${ins.aad603=='������'}">
	       <input type="${!empty param.aad701?'submit':'hidden'}" name="next" value="�޸�" class="layui-btn layui-btn-normal"
	              formaction="ad07modifyAgreement.html">
	    </c:when>
	    <c:otherwise>
	       <input type="${!empty param.aad701?'submit':'hidden'}" name="next" value="�޸�" class="layui-btn layui-btn-normal layui-btn-disabled"
	              disabled="true" formaction="ad07modifyAgreement.html">
	    </c:otherwise>
	</c:choose>
	       <input type="submit" name="next" value="�鿴" class="layui-btn layui-btn-normal"
	          formnovalidate="formnovalidate" formaction="ad/ad07queryAgreement.html">
	       <input type="submit" name="next" value="����" class="layui-btn layui-btn-normal"
	       formaction="ad07queryAgreement.html" formnovalidate="formnovalidate">
	</div>
    <input type="hidden" name="aac401" value="${ins.aac401 }">
    <input type="hidden" name="aaa801" value="${ins.aaa801 }">
    <input type="hidden" name="aad701" value="${param.aad701 }">
    <input type="hidden" name="aad401" value="${ins.aad401 }">
    <input type="hidden" name="aad601" value="${ins.aad601 }">
    <input type="hidden" name="aad603" value="${ins.aad603 }">
    <input type="hidden" name="aad719" value="${ins.aad719 }">
</form>
	</div>
	</fieldset>
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
	  form.val('myform',{
		  "aad722":"${ins.aad722}",
		  "aad704":"${ins.aad704}",
		  "aad712":"${ins.aad712}",
		  "aad719":"${ins.aad719}"
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
		});
</script>
</body>
</html>