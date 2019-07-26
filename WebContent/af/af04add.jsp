<%@ page language="java" pageEncoding="GBK"%>
<%@include file="/base/taglib.jsp" %>
<html>
<head>
	<jsp:include   page="/base/head.jsp"/>
</head>
<body class="layui-layout-body">
<div class="layui-layout layui-layout-admin">
  	<jsp:include   page="/base/header.jsp"/>
	<c:import url="/af/menu.jsp">
        <c:param name="menu" value="af04"/>
     </c:import>
  <div class="layui-body">
    <!-- ������������ -->
    <div class="layui-anim layui-anim-scale" style="padding: 15px; margin:50px 100px;">
    <fieldset class="layui-elem-field">
 	<legend style="color:black"><h2>¥������</h2></legend>
  		<div class="layui-field-box">
    <form class="layui-form" lay-filter="myform" action="<%=path %>/af/af03add.html" method="post">
    <div class="layui-form-item" align="center">
			<div class="layui-inline">
				<label class="layui-form-label">
					<i class="layui-icon layui-icon-face-smile" style="font-size: 20px; color: black;"></i>
					��Ŀ����
				</label>
				<div class="layui-input-inline">
					<%-- <input type="text" name="aaf303" required lay-verify="true" value="${ins.aaf303 }"
					 autocomplete="off" class="layui-input"> --%>
					 <select name="aaf303" required>
					    <c:forEach items='<%=session.getAttribute("prjs")%>' var="ins">
					    	<option value="${ins.aaa202 }">${ins.aaa202 }</option>
					    </c:forEach>
					</select>
				</div>
			</div>
			<div class="layui-inline">
				<label class="layui-form-label">
					<i class="layui-icon layui-icon-home" style="font-size: 20px; color: black;"></i>
					�������
				</label>
				<div class="layui-input-inline">
					<input id="room" type="text" name="aaf302" required lay-verify="true" value="${ins.aad703 }"
					   onclick="selectRoom()" readonly="readonly" class="layui-input">
					<input id="roomNo" type="hidden" name="aaa801" value="${ins.aaa801 }">
				</div>
			</div>
			<div class="layui-inline">
				<label class="layui-form-label">
					<i class="layui-icon layui-icon-release" style="font-size: 20px; color: black;"></i>
					Ʊ�ݱ��
				</label>
				<div class="layui-input-inline">
					<input type="text" name="aaf304" required lay-verify="true" value="${ins.aaf304 }"
					 autocomplete="off" class="layui-input">
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
					<input type="text" name="aaf305" required lay-verify="true" value="${ins.aaf305 }"
					 autocomplete="off" class="layui-input">
				</div>
			</div>
			<div class="layui-inline">
				<label class="layui-form-label">
					<i class="layui-icon layui-icon-user" style="font-size: 20px; color: black;"></i>
					��&ensp;Ʊ&ensp;��
				</label>
				<div class="layui-input-inline">
					<input type="text" name="aaf306" required lay-verify="true" value="${ins.aaf306 }"
					 autocomplete="off" class="layui-input">
				</div>
			</div>
			<div class="layui-inline">
				<label class="layui-form-label">
					<i class="layui-icon layui-icon-date" style="font-size: 20px; color: black;"></i>
					��Ʊ����
				</label>
				<div class="layui-input-inline">
					<input type="text" name="aaf307" id="date1" required lay-verify="true" value="${ins.aaf307 }"
					 autocomplete="off" class="layui-input">
				</div>
			</div>
	</div>
	<div class="layui-form-item" align="center">
			<div class="layui-inline">
				<label class="layui-form-label">
					<i class="layui-icon layui-icon-tips" style="font-size: 20px; color: black;"></i>
					Ʊ��״̬
				</label>
				<div class="layui-input-inline">
					<input type="text" name="aaf309" required lay-verify="true" value="${ins.aaf309 }"
					 autocomplete="off" class="layui-input">
				</div>
			</div>
			<div class="layui-inline">
				<label class="layui-form-label">
					<i class="layui-icon layui-icon-user" style="font-size: 20px; color: black;"></i>
					��&ensp;��&ensp;��
				</label>
				<div class="layui-input-inline">
					<input type="text" name="aaf310" required lay-verify="true" value="${ins.aaf310 }"
					 autocomplete="off" class="layui-input">
				</div>
			</div>
			<div class="layui-inline">
				<label class="layui-form-label">
					<i class="layui-icon layui-icon-tips" style="font-size: 20px; color: black;"></i>
					����˱��
				</label>
				<div class="layui-input-inline">
					<input type="text" name="aaf312" required lay-verify="true" value="${ins.aaf312 }"
					 autocomplete="off" class="layui-input">
				</div>
			</div>
	</div>
	<div class="layui-form-item" align="center">
			<div class="layui-inline">
				<label class="layui-form-label">
					<i class="layui-icon layui-icon-tips" style="font-size: 20px; color: black;"></i>
					Ʊ������
				</label>
				<div class="layui-input-block">
					<input type="radio" name="aaf308" value="�վ�" title="�վ�" checked>
					<input type="radio" name="aaf308" value="��Ʊ" title="��Ʊ">
					<input type="radio" name="aaf308" value="��Ʊ��" title="��Ʊ��"> 
				</div>
			</div>
			<div class="layui-inline">
				<label class="layui-form-label">
					<i class="layui-icon layui-icon-date" style="font-size: 20px; color: black;"></i>
					�������
				</label>
				<div class="layui-input-inline">
					<input type="text" name="aaf311" id="date2" required lay-verify="true" value="${ins.aaf311 }"
					 autocomplete="off" class="layui-input">
				</div>
			</div>
	</div>
<div id="tableId" style="">
<table class="layui-table" lay-size="sm">
	<thead>
	<tr>
	<td>��������</td>
	<td>��������</td>
	<td>���</td>
	<td>����</td>
	<td>����</td>
	<td>������ҽ��</td>
	<td>֧����ʽ</td>
	<td>��ע</td>
	</tr>
	</thead>
	<tbody>
	<tr>
	<td><e:select name="aaf403" value="�Ǵ����෿��:�Ǵ����෿��,�����෿��:�����෿��,ȫ��:ȫ��,����:����,"/></td>
	<td><e:select name="aaf409" value="����:����,ԤԼ��:ԤԼ��,�׸�:�׸�,¥��:¥��,���а���:���а���,�����:�����"/></td>
	<td><e:number step="0.01" required="true" name="aaf404" defval="${ins.aad413 }"/></td>
	<td><e:select name="aaf405" value="�����:�����,��Ԫ:��Ԫ,Ӣ��:Ӣ��,��Ԫ:��Ԫ,ŷԪ:ŷԪ"/></td>
	<td><e:number step="0.01" required="true" name="aaf410"/></td>
	<td><e:number step="0.01" required="true" name="aaf406"/></td>
	<td><e:select value="�ֽ�:�ֽ�,���п�:���п�,������֧��:������֧��" name="aaf407"/></td>
	<td><e:text name="aaf408"/></td>
	</tr>
	</tbody>
</table>
	<div class="layui-form-item" align="center">
		<input type="submit" name="text" value="${empty param.aaf301?'���':'�޸�' }"
		 class="layui-btn layui-btn-normal" formaction="${empty param.aaf301?'af03add':'af03modify' }.html">
		<input type="submit" name="text" value="�鿴" class="layui-btn layui-btn-normal"
		 formnovalidate="formnovalidate" formaction="<%=path%>/af/af03query.html">
		 <input type="submit" name="text" value="����" class="layui-btn layui-btn-normal"
		 formnovalidate="formnovalidate" formaction="<%=path%>/ad/ad07queryAgreement.html">
	</div>
<input type="hidden" name="aaf301" value="${param.aaf301 }">
</div>
</form>
	</div>
	</fieldset>
    </div>
  </div>
  
  <div class="layui-footer">
    <!-- �ײ��̶����� -->
  </div>
</div>
<script ></script>
<script>
//JavaScript��������
	layui.use(['layer', 'form','element','table'], function(){
	  var element = layui.element;
	  var layer = layui.layer
	  ,form = layui.form
	  ,table = layui.table;
	  if("${msg }" != "")
	  {
		  layer.msg("${msg }");
	  }
		
	  form.val('myform',{
		  "aaf308":"${ins.aaf308}",
		  "aaf303":"${ins.aaf303}"
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