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
    <div class="layui-anim layui-anim-scale"
				style="padding: 15px; margin: 30px 80px;">
				<fieldset class="layui-elem-field layui-filed-title" style="margin-top: 20px; padding-top: 20px">
					<legend>Ʊ�ݹ���</legend>
    <form id="myform" lay-filter="myform" class="layui-form" action="<%=path%>/af/af02Query.html" method="post">
		
	<div class="layui-form-item" align="center">
		<div class="layui-inline">
			<label class="layui-form-label">Ʊ��״̬</label>
				<div class="layui-input-inline">
					<select name="qaaf207">
						<option value="">���޶�</option>
						<option value="1">δ��</option>
						<option value="2">������</option>
						<option value="3">�Ѻ���</option>
						<option value="4">�ѷ���</option>
					</select>
				</div>
		</div>
		<div class="layui-inline" >
			<button class="layui-btn layuiadmin-btn-useradmin" type="submit">
					<i class="layui-icon layui-icon-search layuiadmin-button-btn"></i>
					��ѯ
			</button>
		</div>
	
	</div>
	
	<div id="tableId" style="display: none">
			<table id="idData"  lay-filter="demo">
				<thead>
					<tr>
						<td lay-data="{field:'sort1',width:60}">���</td>
						<td lay-data="{field:'username',width:90}">Ʊ�����κ�</td>
						<td lay-data="{field:'state',width:90}">Ʊ��״̬</td>
						<td lay-data="{field:'number',width:90}">��ʼ���</td>
						<td lay-data="{field:'userphone',width:90}">��ֹ���</td>
						<td lay-data="{field:'style'}">������</td>
						<td lay-data="{field:'date',width:115}">��������</td>
						<td lay-data="{field:'grade',width:90}">��Ʊ���</td>
						<td lay-data="{field:'makeemp'}">��Ʊ��</td>
						<td lay-data="{field:'notedate',width:120}">��Ʊ����</td>
						<td lay-data="{field:'opt',fixed:'right',width:285}">����</td>
					</tr>
				</thead>
				<tbody>
					<c:choose>
						<c:when test="${rows!= null }">
							<c:forEach items="${rows }" var="ins" varStatus="vs">
								<tr>
									<td>${vs.count }</td>
									<td>${ins.aaf202 }</td>
									<td>${ins.cnaaf207 }</td>
									<td>${ins.aaf203 }</td>
									<td>${ins.aaf204 }</td>
									<td>${ins.aaf205 }</td>
									<td>${ins.aaf206 }</td>
									<td>${ins.aaf209 }</td>
									<td>${ins.aaf210 }</td>
									<td>${ins.aaf211 }</td>
									<td>
									
									<a class="layui-btn layui-btn-xs" 
									onclick="onReceive('${ins.aaf201}','${ins.aaf202}','${ins.aaf203}','${ins.aaf204}','${ins.aaf205}','${ins.aaf206}','${ins.aaf207 }')"  >
									<i class="layui-icon layui-icon-ok"></i>����Ʊ��
									</a> 
									
									<a class="layui-btn layui-btn-xs " 
									onclick="onWrite('${ins.aaf201}','${ins.aaf202}','${ins.aaf203}','${ins.aaf204}','${ins.aaf205}','${ins.aaf206}','${ins.aaf207 }')"  >
									<i class="layui-icon layui-icon-ok-circle"></i>����Ʊ��
									</a>
									
									<a class="layui-btn layui-btn-xs layui-btn-danger " 
									onclick="onDiscard('${ins.aaf201}','${ins.aaf202}','${ins.aaf203}','${ins.aaf204}','${ins.aaf205}','${ins.aaf206}','${ins.aaf207 }')"  >
									<i class="layui-icon layui-icon-close-fill"></i>����Ʊ��
									</a>
									</td>		
								</tr>
							</c:forEach>
						</c:when>

					</c:choose>
				</tbody>
			</table>
		</div>
		<e:hidden name="aaf202" id="aaf202" value=""/>
		<e:hidden name="aaf203" id="aaf203" value=""/>
		<e:hidden name="aaf204" id="aaf204" value=""/>
		<e:hidden name="aaf205" id="aaf205" value=""/>
		<e:hidden name="aaf206" id="aaf206" value=""/>
	</form>
	</fieldset>
    </div>
  </div>

</div>
<script>
function onReceive(vaaf201,vaaf202,vaaf203,vaaf204,vaaf205,vaaf206,vaac207)
{
	if(vaac207 == "1")
	{
		onSetValue(vaaf202,vaaf203,vaaf204,vaaf205,vaaf206);
		var myform = document.getElementById("myform");
		myform.action = "<%=path%>/af/af02ReceiveNote.jsp?aaf201=" + vaaf201 ;
		myform.submit();
	}else
	{
		layui.use('layer',function(){
			var layer = layui.layer;
			layer.open({
				title:'��ʾ',
				content:'ֻ��δ��Ʊ�ݲſ�������!',
				skin: 'layui-layer-molv'
			});
		})
	}

}
function onWrite(vaaf201,vaaf202,vaaf203,vaaf204,vaaf205,vaaf206,vaac207)
{
	if(vaac207 == "2")
	{
	onSetValue(vaaf202,vaaf203,vaaf204,vaaf205,vaaf206);
	var myform = document.getElementById("myform");
	myform.action = "<%=path%>/af/af02WriteOffNote.jsp?aaf201=" + vaaf201 ;
	myform.submit();
	}else
	{
	layui.use('layer',function(){
		var layer = layui.layer;
		layer.open({
			title:'��ʾ',
			content:'ֻ������Ʊ�ݲſ��Ժ���!',
			skin: 'layui-layer-molv'
		});
	})
	}
}
function onDiscard(vaaf201,vaaf202,vaaf203,vaaf204,vaaf205,vaaf206,vaaf207)
{
	if(vaaf207 == "2")
	{
		onSetValue(vaaf202,vaaf203,vaaf204,vaaf205,vaaf206);
		var myform = document.getElementById("myform");
		myform.action = "<%=path%>/af/af02DiscardNote.jsp?aaf201=" + vaaf201 ;
		myform.submit();
	}else
	{
	layui.use('layer',function(){
		var layer = layui.layer;
		layer.open({
			title:'��ʾ',
			content:'ֻ������Ʊ�ݲſ�������!',
			skin: 'layui-layer-molv'
		});
	})
	}
}
function onSetValue(vaaf202,vaaf203,vaaf204,vaaf205,vaaf206)
{
	var aaf202 = document.getElementById("aaf202");
	aaf202.value = vaaf202;
	var aaf203 = document.getElementById("aaf203");
	aaf203.value = vaaf203;
	var aaf204 = document.getElementById("aaf204");
	aaf204.value = vaaf204;
	var aaf205 = document.getElementById("aaf205");
	aaf205.value = vaaf205;
	var aaf206 = document.getElementById("aaf206");
	aaf206.value = vaaf206;
}
</script>
<script>
//JavaScript��������
	layui.use(['layer', 'form','element','table'], function(){
	  var element = layui.element
	  ,layer = layui.layer
	  ,form = layui.form
	  ,table = layui.table;
	  
	  if("${msg }" != "")
	  {
		  layer.msg("${msg }");
	  }
	  
	  form.val('myform',{
		  "qaaf207":"${param.qaaf207}"
	  });
	  
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
</script>
</body>
</html>