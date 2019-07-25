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
        <c:param name="menu" value="ad10"/>
     </c:import>
  <div class="layui-body">
    <!-- ������������ -->
    <div class="layui-anim layui-anim-scale" style="padding: 15px; margin:50px 100px;">
    <fieldset class="layui-elem-field">
 	<legend style="color:black"><h2>��Ӻ�ͬ</h2></legend>
  		<div class="layui-field-box">
    <form lay-filter="myform" id="myform" class="layui-form" action="<%=path %>/ad/ad07addAgreement.html" method="post">
	<div class="layui-form-item" align="center">
		<div class="layui-inline">
			<label class="layui-form-label">
				<i class="layui-icon layui-icon-username" style="font-size: 20px; color: black;"></i>
				�ͻ�����
			</label>
			<div class="layui-input-inline">
				<input type="text" name="aad702" readonly="readonly" value="${ins.aad402 }"
				 autocomplete="off" class="layui-input">
			</div>
		</div>
		<div class="layui-inline">
			<label class="layui-form-label">
				<i class="layui-icon layui-icon-cellphone" style="font-size: 20px; color: black;"></i>
				��ϵ�绰
			</label>
			<div class="layui-input-inline">
				<input type="text" name="aad721" readonly="readonly" value="${ins.aad421 }"
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
				<input type="text" id="room" name="aad703" required lay-verify="true" value="${ins.aad403 }"
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
				<input type="text" name="aaa504" readonly="readonly" value="${ins.aaa504 }"
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
				<input type="text" name="aaa805" readonly="readonly" value="${ins.saaa805 }"
						 autocomplete="off" class="layui-input">
			</div>
		</div>
		<div class="layui-inline">
			<label class="layui-form-label">
				<i class="layui-icon layui-icon-table" style="font-size: 20px; color: black;"></i>
				�������
			</label>
			<div class="layui-input-inline">
				<input type="number" name="aaa505" readonly="readonly" value="${ins.aaa505 }"
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
					<input type="number" step="0.01" name="aaa506" readonly="readonly" value="${ins.aaa506 }"
					 autocomplete="off" class="layui-input">
				</div>
			</div>
		<div class="layui-inline">
			<label class="layui-form-label">
				<i class="layui-icon layui-icon-rmb" style="font-size: 20px; color: black;"></i>
				��������
			</label>
				<div class="layui-input-inline">
					<input type="number" name="aaa808" readonly="readonly" value="${ins.aaa808 }"
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
				<input type="number" name="aaa810" readonly="readonly" value="${ins.aaa810 }"
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
				<input type="number" name="aad705" required lay-verify="true" value="${ins.aad405 }"
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
				<input type="number" name="aad706" required lay-verify="true" value="${ins.aad406 }"
					step="0.01"	autocomplete="off" class="layui-input">
			</div>
		</div>
		<div class="layui-inline">
			<label class="layui-form-label">
				<i class="layui-icon layui-icon-rmb" style="font-size: 20px; color: black;"></i>
				���ڳɽ���&#8195;&#8195;��
			</label>
			<div class="layui-input-inline">
				<input type="number" name="aad707" required lay-verify="true" value="${ins.aad407 }"
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
				<input type="text" name="aad708" required lay-verify="true" value="${ins.aad408 }"
				 autocomplete="off" class="layui-input">
			</div>
		</div>
		<div class="layui-inline">
			<label class="layui-form-label">
				<i class="layui-icon layui-icon-rmb" style="font-size: 20px; color: black;"></i>
				�����ܼ�
			</label>
			<div class="layui-input-inline">
				<input type="number" name="aad709" required lay-verify="true" value="${ins.aad409 }"
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
				<input type="number" name="aad711" required lay-verify="true" value="${ins.aad410 }"
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
				<input type="number" name="aad713" required lay-verify="true" value="${ins.aad412 }"
					step="0.01"	autocomplete="off" class="layui-input">
			</div>
		</div>
		<div class="layui-inline">
			<label class="layui-form-label">
				<i class="layui-icon layui-icon-rmb" style="font-size: 20px; color: black;"></i>
				Ӧ�ն���
			</label>
			<div class="layui-input-inline">
				<input type="number" name="aad714" required lay-verify="true" value="${ins.aad413 }"
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
				<input type="number" name="aad715" required lay-verify="true" value="${ins.aad414 }"
				    step="0.01" autocomplete="off" class="layui-input">
			</div>
		</div>
		<div class="layui-inline">
			<label class="layui-form-label">
				<i class="layui-icon layui-icon-date" style="font-size: 20px; color: black;"></i>
				ǩ������
			</label>
			<div class="layui-input-inline">
				<input type="text" name="aad716" id="date1" required lay-verify="true"
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
				<input type="text" name="aad717" id="date2" required lay-verify="true"
						 autocomplete="off" class="layui-input">
			</div>
		</div>
		<div class="layui-inline">
			<label class="layui-form-label">
				<i class="layui-icon layui-icon-username" style="font-size: 20px; color: black;"></i>
				��&ensp;��&ensp;��
			</label>
			<div class="layui-input-inline">
				<input type="text" name="aad718" required lay-verify="true" value="${ins.aad417 }"
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
				<input type="text" name="aad720" required lay-verify="true" 
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
	       <input type="submit" name="next" value="���" class="layui-btn layui-btn-normal"
	              formaction="ad07addAgreement.html">
	       <input type="submit" name="next" value="�鿴" class="layui-btn layui-btn-normal"
	          formnovalidate="formnovalidate" formaction="ad/ad07queryAgreement.html">
	       <input type="submit" name="next" value="����" class="layui-btn layui-btn-normal"
	       formaction="ad07queryAgreement.html" formnovalidate="formnovalidate">
	</div>
    <input type="hidden" name="aac401" value="${ins.aac401 }">
    <input type="hidden" name="aad701" value="${param.aad701 }">
    <input type="hidden" name="aad401" value="${ins.aad401 }">
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
		  "aad722":"${ins.aad420}",
		  "aad704":"${ins.aad404}",
		  "aad712":"${ins.aad411}",
		  "aad719":"${ins.aad418}"
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