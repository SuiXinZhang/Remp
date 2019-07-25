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
        <c:param name="menu" value="ad06"/>
     </c:import>
  <div class="layui-body">
    <!-- ������������ -->
    <div class="layui-anim layui-anim-scale" style="padding: 15px; margin:50px 100px;">
    <fieldset class="layui-elem-field">
 	<legend style="color:black"><h2>��Ӷ���</h2></legend>
  		<div class="layui-field-box">
    <form lay-filter="myform" class="layui-form" action="<%=path %>/ad/ad04addPurchase.html" method="post">
     
     <div class="layui-form-item" align="center">
		<div class="layui-inline">
			<label class="layui-form-label">
				<i class="layui-icon layui-icon-username" style="font-size: 20px; color: black;"></i>
				�ͻ�����
			</label>
			<div class="layui-input-inline">
				<input type="text" name="aad402" required lay-verify="true" value="${ins.aad305 }"
				 readonly="readonly" class="layui-input">
			</div>
		</div>
		<div class="layui-inline">
			<label class="layui-form-label">
				<i class="layui-icon layui-icon-cellphone" style="font-size: 20px; color: black;"></i>
				��ϵ�绰
			</label>
			<div class="layui-input-inline">
				<input type="text" name="aad421" required lay-verify="true" value="${ins.aac407 }"
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
				<input type="text" id="room" name="aad403" required lay-verify="true" value="${ins.aad302 }"
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
				readonly="readonly"  autocomplete="off" class="layui-input">
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
				readonly="readonly" autocomplete="off" class="layui-input">
			</div>
		</div>
		<div class="layui-inline">
			<label class="layui-form-label">
				<i class="layui-icon layui-icon-table" style="font-size: 20px; color: black;"></i>
				�������
			</label>
			<div class="layui-input-inline">
				<input type="number" name="aaa505" required lay-verify="true" value="${ins.aaa505 }"
				 readonly="readonly" step="0.01" autocomplete="off" class="layui-input">
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
				 readonly="readonly" class="layui-input">
			</div>
		</div>
		<div class="layui-inline">
			<label class="layui-form-label">
				<i class="layui-icon layui-icon-rmb" style="font-size: 20px; color: black;"></i>
				��������
			</label>
			<div class="layui-input-inline">
				<input type="number" name="aaa808" required lay-verify="true" value="${ins.aaa808 }"
					step="0.01"	readonly="readonly" class="layui-input">
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
				    step="0.01" readonly="readonly" class="layui-input">
			</div>
		</div>
		<div class="layui-inline">
			<label class="layui-form-label">
				<i class="layui-icon layui-icon-tips" style="font-size: 20px; color: black;"></i>
				�Ƽ۷�ʽ
			</label>
			<div class="layui-input-inline" style="width:300px;">
				<input type="radio" name="aad420" value="01" title="���������" checked>
				<input type="radio" name="aad420" value="02" title="���������"> 
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
				<select name="aad404">
					<option value="">��ѡ��</option>
					<option value="01">��ҵ����</option>
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
				<input type="number" name="aad405" 
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
					<input type="number" name="aad406" required lay-verify="true" value="${ins.aad406 }"
					step="0.01"	autocomplete="off" class="layui-input">
				</div>
		</div>
		<div class="layui-inline">
				<label class="layui-form-label">
					<i class="layui-icon layui-icon-rmb" style="font-size: 20px; color: black;"></i>
					���ڳɽ���&#8195;&#8195;��
				</label>
				<div class="layui-input-inline">
					<input type="number" name="aad407" required lay-verify="true" value="${ins.aad407 }"
					    step="0.01" autocomplete="off" class="layui-input">
				</div>
			</div>
	</div>
	<div class="layui-form-item" align="center">
		<div class="layui-inline">
			<label class="layui-form-label">
				<i class="layui-icon layui-icon-rmb" style="font-size: 20px; color: black;"></i>
				�����ܼ�
			</label>
			<div class="layui-input-inline">
				<input type="number" name="aad409" required lay-verify="true" value="${ins.aad409 }"
					step="0.01"	autocomplete="off" class="layui-input">
			</div>
		</div>
		<div class="layui-inline">
				<label class="layui-form-label">
					<i class="layui-icon layui-icon-survey" style="font-size: 20px; color: black;"></i>
					�ۿ�˵��
				</label>
				<div class="layui-input-inline">
					<input type="text" name="aad408" value="${ins.aad408 }"
			 		 autocomplete="off" class="layui-input">
				</div>
		</div>
	</div>
	<div class="layui-form-item" align="center">
		<div class="layui-inline">
			<label class="layui-form-label">
				<i class="layui-icon layui-icon-rmb" style="font-size: 20px; color: black;"></i>
				Э���ܼ�(�����)
			</label>
			<div class="layui-input-inline">
				<input type="number" name="aad410" required lay-verify="true" value="${ins.aad410 }"
				    step="0.01" autocomplete="off" class="layui-input">
			</div>
		</div>
		<div class="layui-inline">
			<label class="layui-form-label">
				<i class="layui-icon layui-icon-dollar" style="font-size: 20px; color: black;"></i>
				Э�����
			</label>
			<div class="layui-input-inline">
				<select name="aad411">
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
				Э�����
			</label>
			<div class="layui-input-inline">
				<input type="number" name="aad412" required lay-verify="true" value="${ins.aad412 }"
					step="0.01"	autocomplete="off" class="layui-input">
			</div>
		</div>
		<div class="layui-inline">
			<label class="layui-form-label">
				<i class="layui-icon layui-icon-rmb" style="font-size: 20px; color: black;"></i>
				Ӧ�ն���
			</label>
			<div class="layui-input-inline">
				<input type="number" name="aad413" required lay-verify="true" value="${ins.aad413 }"
				    step="0.01" autocomplete="off" class="layui-input">
			</div>
		</div>
	</div>
	<div class="layui-form-item" align="center">
		<div class="layui-inline">
			<label class="layui-form-label">
				<i class="layui-icon layui-icon-rmb" style="font-size: 20px; color: black;"></i>
				Э���ܼ�
			</label>
			<div class="layui-input-inline">
				<input type="number" name="aad414" required lay-verify="true" value="${ins.aad414 }"
				    step="0.01" autocomplete="off" class="layui-input">
			</div>
		</div>
		<div class="layui-inline">
			<label class="layui-form-label">
				<i class="layui-icon layui-icon-date" style="font-size: 20px; color: black;"></i>
				ǩ������
			</label>
			<div class="layui-input-inline">
				<input type="text" name="aad415" id="date1" required lay-verify="true" value="${ins.aad415 }"
				 autocomplete="off" class="layui-input">
			</div>
		</div>
	</div>
	<div class="layui-form-item" align="center">
		<div class="layui-inline">
			<label class="layui-form-label">
				<i class="layui-icon layui-icon-date" style="font-size: 20px; color: black;"></i>
				ʧЧ����
			</label>
			<div class="layui-input-inline">
				<input type="text" name="aad416" id="date2" required lay-verify="true" value="${ins.aad416 }"
						 autocomplete="off" class="layui-input">
			</div>
		</div>
		<div class="layui-inline">
			<label class="layui-form-label">
				<i class="layui-icon layui-icon-tips" style="font-size: 20px; color: black;"></i>
				��������
			</label>
			<div class="layui-input-inline">
				<select name="aad418">
					<option value="01" selected>�Ϲ�</option>
					<option value="02">С��</option>
					<option value="03">ǩԼ</option>
				</select>
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
				<input type="text" name="aad417" required lay-verify="true" value="${ins.aad417 }"
				 autocomplete="off" class="layui-input">
			</div>
		</div>
		<div class="layui-inline">
			<label class="layui-form-label">
				<i class="layui-icon layui-icon-username" style="font-size: 20px; color: black;"></i>
				ҵ&ensp;��&ensp;Ա
			</label>
			<div class="layui-input-inline">
				<input type="text" name="aad419" required lay-verify="true" value="${ins.aad419 }"
				 autocomplete="off" class="layui-input">
			</div>
		</div>
	</div>
    
	<div class="layui-form-item" align="center">    
	       <input type="submit" name="next" value="${empty param.aad401?'���':'�޸�'}" class="layui-btn layui-btn-normal"
	              formaction="${empty param.aad401?'ad04addPurchase':'ad04modifyPurchase'}.html">
	       <input type="submit" name="next" value="�鿴" class="layui-btn layui-btn-normal"
	          formnovalidate="formnovalidate" formaction="ad04queryPurchase.html">
	       <input type="submit" name="next" value="����" formaction="${empty param.aad401?'ad03query':'ad04queryPurchase'}.html"
	         formnovalidate="formnovalidate" class="layui-btn layui-btn-normal">
	</div>
	<input type="hidden" name="aac401" value="${ins.aac401 }">
    <input type="hidden" name="aad401" value="${param.aad401 }">
    <input type="hidden" name="aad301" value="${ins.aad301 }">
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
		  "aad420":"${ins.aad420}",
		  "aad404":"${ins.aad404}",
		  "aad411":"${ins.aad411}",
		  "aad418":"${ins.aad418}"
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