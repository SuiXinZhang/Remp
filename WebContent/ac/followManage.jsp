<!DOCTYPE html>
<%@ page language="java" pageEncoding="GBK"%>
<%@include file="/base/taglib.jsp" %>
<html>
<head>
	<jsp:include   page="/base/head.jsp"/>
	<link rel="stylesheet" type="text/css"
	href="/remp/static/css/ac/clueManageCss.css">
</head>
<body class="layui-layout-body">
<div class="layui-layout layui-layout-admin">
  	<jsp:include   page="/base/header.jsp"/>
	<c:import url="/ac/menu.jsp">
  		 <c:param name="menu" value="ac12"/>
  	</c:import>
  <div class="layui-body">
    <div class="layui-anim layui-anim-scale"
				style="padding: 15px; margin: 30px 80px;">
				<fieldset class="layui-elem-field layui-filed-title" style="margin-top: 20px;padding-top: 20px">
					<legend>�ͻ���������</legend>
    <form id="myform" lay-filter="myform" class="layui-form" action="<%=path%>/ac/ac03Query.html" method="post">
		

	<div class="layui-form-item" align="left">
		<div class="layui-inline">
			<label class="layui-form-label" style="width:126px">��&emsp;��&emsp;��&emsp;��</label>
				<div class="layui-input-inline">
					<input type="text" name="qaac403" value="${param.qaac403 }"
					 autocomplete="off" class="layui-input">
				</div>
		</div>
		<div class="layui-inline">
			<label class="layui-form-label">�ͻ����</label>
				<div class="layui-input-inline">
					<input type="text" name="qaac402" value="${param.qaac402 }"
					 autocomplete="off" class="layui-input">
				</div>
		</div>
		<div class="layui-inline">
			<label class="layui-form-label">����ҵ��Ա</label>
				<div class="layui-input-inline">
					<input type="text" name="qaac306" value="${param.qaac306 }"
					 autocomplete="off" class="layui-input">
				</div>
		</div>
	</div>
	<div class="layui-form-item" align="left">
		<div class="layui-inline">
			<label class="layui-form-label" style="width:126px">��&emsp;��&emsp;״&emsp;̬</label>
				<div class="layui-input-inline">
					<select name="qaac304">
						<option value="">���޶�</option>
						<option value="01">������</option>
						<option value="02">�Ѹ���</option>
						<option value="03">���ٴθ���</option>
					</select>
				</div>
		</div>
		<div class="layui-inline">
			<label class="layui-form-label" >����ʱ��</label>
			<div class="layui-input-inline">
				<input type="date" name="baac305" id="date1"
					placeholder="B" lay-verify="date" value="${param.baac305 }"
					autocomplete="off" class="layui-input">
			</div>
			<div class="layui-form-mid" id="toCenter2">----</div>
			<div class="layui-input-inline">
				<input type="date" name="eaac305" id="date2"
					placeholder="E" lay-verify="date" value="${param.baac305 }"
					autocomplete="off" class="layui-input">
			</div>
			<div class="layui-inline" style="padding-left:14px">
				<button class="layui-btn layuiadmin-btn-useradmin" type="submit">
				<i class="layui-icon layui-icon-search layuiadmin-button-btn"></i>��ѯ
				</button>
			</div>
		</div>
	</div>
	<div class="layui-form-item" align="left">
	<div class="layui-inline">
			<label class="layui-form-label" style="width:126px">�����޸ĸ���״̬</label>
				<div class="layui-input-inline">
					<select id="maac304" name="maac304">
						<option value="">���޶�</option>
						<option value="01">������</option>
						<option value="02">�Ѹ���</option>
						<option value="03">���ٴθ���</option>
					</select>
				</div>
		</div>
		<div class="layui-inline" style="padding-left:110px">
			<button class="layui-btn layui-btn-disabled"  id="mod2" onclick="onBatchUpdate()" 
			 disabled="disabled" type="button">
			<i class="layui-icon layui-icon-edit"></i>�����޸�
			</button>
		</div>
		<div class="layui-inline" style="padding-left:194px">
				<button class="layui-btn layui-btn-disabled"  id="mod3" disabled="disabled"
				formaction="<%=path %>/ac/ac03Delete.html"  type="submit">
				<i class="layui-icon layui-icon-delete"></i>����ɾ��
				</button>
		</div>
	</div>
	<div class="layui-form-item" align="left">
		<div class="layui-inline">
			<label class="layui-form-label" style="width:126px">��&thinsp;��&thinsp;��&thinsp;��&thinsp;ҵ&thinsp;��&thinsp;Ա</label>
				<div class="layui-input-inline">
					<input type="text" name="maac306" id="maac306" value="${param.maac306 }"
					 autocomplete="off" class="layui-input">
				</div>
		</div>
		<div class="layui-inline">
			<label class="layui-form-label">ҵ��Ա���</label>
				<div class="layui-input-inline">
					<input type="text" name="maac307" id="maac307" value="${param.maac307 }"
					 autocomplete="off" class="layui-input">
				</div>
		</div>
		<div class="layui-inline" style="padding-left:108px">
				<button class="layui-btn layui-btn-disabled"  id="mod" onclick="onBatchUpdate2()"
				 disabled="disabled" type="button">
				<i class="layui-icon layui-icon-add-1"></i>�������
				</button>
		</div>
	</div>
	
	
	<div id="tableId" style="display: none">
			<table id="idData"  lay-filter="demo">
				<thead>
					<tr>
						<td lay-data="{field:'check',width:50}"></td>
						<td lay-data="{field:'sort1',width:60}">���</td>
						<td lay-data="{field:'username'}">�ͻ���</td>
						<td lay-data="{field:'number',width:125}">�ͻ����</td>
						<td lay-data="{field:'userphone'}">��������</td>
						<td lay-data="{field:'style',width:88}">����״̬</td>
						<td lay-data="{field:'date',width:115}">����ʱ��</td>
						<td lay-data="{field:'grade',width:100}">����ҵ��Ա</td>
						<td lay-data="{field:'makeemp',width:120}">ҵ��Ա���</td>
						<td lay-data="{field:'opt',fixed:'right',width:150}">����</td>
					</tr>
				</thead>
				<tbody>
					<c:choose>
						<c:when test="${rows!= null }">
							<c:forEach items="${rows }" var="ins" varStatus="vs">
								<tr>
									<td>
									<input type="checkbox" lay-skin="primary" lay-filter="check" name="idlist" value="${ins.aac301 }" ></td>
									<td>${vs.count } </td>
									<td>${ins.aac403 }</td>
									<td>${ins.aac402 }</td>
									<td>${ins.aac303 }</td>
									<td>${ins.cnaac304 }</td>
									<td>${ins.aac305 }</td>
									<td>${ins.aac306 }</td>
									<td>${ins.aac307 }</td>
									<td>
									
									<a class="layui-btn layui-btn-xs " 
									href="<%=path%>/ac03FindById.html?aac301=${ins.aac301 }" >
									<i class="layui-icon layui-icon-edit"></i>�༭
									</a> 
									
									<a class="layui-btn layui-btn-xs layui-btn-danger" href="#"
										onClick="onDel('${ins.aac301}')">
										<i class="layui-icon layui-icon-delete"></i>ɾ��
									</a> 
									</td>		
								</tr>
							</c:forEach>
						</c:when>

					</c:choose>
				</tbody>
			</table>
	</div>
	</form>
	</fieldset>
    </div>
  </div>
</div>
<script>
//JavaScript��������
	layui.use(['layer', 'form','element','table'], function(){
	  var layer = layui.layer
	  ,form = layui.form
	  ,element = layui.element
	  ,table = layui.table;
	  if("${msg }" != "")
	  {
		  layer.msg("${msg }");
	  }
	  form.val('myform',{
		  "qaac304":"${param.qaac304}",
		  "maac304":"${param.maac304}"
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
		var count = 0;
		form.on('checkbox(check)', function(data){
			var mod = document.getElementById("mod");
			var mod2 = document.getElementById("mod2");
			var mod3 = document.getElementById("mod3");
	          if(data.elem.checked==true){
	               	count++;
	               	if(count!=0){
	               		mod.className="layui-btn";
	               		mod2.className="layui-btn ";
	               		mod3.className="layui-btn ";
	               	}else{
	               		mod.className="layui-btn layui-btn-disabled";
	               		mod2.className="layui-btn layui-btn-disabled";
	               		mod3.className="layui-btn layui-btn-disabled";
	               	}
	               	mod.disabled=(count==0);
	               	mod2.disabled=(count==0);
	               	mod3.disabled=(count==0);
	               		
	          }else{
	        	  count--;
	       		  if(count!=0){
	       				mod.className="layui-btn";
	       				mod2.className="layui-btn ";
	       				mod3.className="layui-btn ";
	       		  }else{
	             		mod.className="layui-btn layui-btn-disabled";
	             		mod2.className="layui-btn layui-btn-disabled";
	             		mod3.className="layui-btn layui-btn-disabled";
	             }
	       		mod.disabled=(count==0);
	       		mod2.disabled=(count==0);
	       		mod3.disabled=(count==0);
	          }
	      });
	
	});
	layui.use('laydate', function(){
		  var laydate = layui.laydate;
		 
		  //ִ��һ��laydateʵ��
		  laydate.render({
		    elem: '#date1',  //ָ��Ԫ��
		    trigger: 'click'
		  });
		  laydate.render({
			elem: '#date2',  //ָ��Ԫ��
			trigger: 'click'
		  });
		});
	var count = 0;
	function onSelect(vstate)
	{
		vstate?count++:count--;
		var delB = document.getElementById("del");
		var batchUpdateB = document.getElementById("update");
		var modifyFollow = document.getElementById("modifyFollow");
		modifyFollow.disabled = (count == 0);
		batchUpdateB.disabled= (count ==0);
		delB.disabled = (count == 0);
	}
	function onEdit(vaac301)
	{
		var myform = document.getElementById("myform");
		myform.action = "<%=path%>/ac03FindById.html?aac301=" + vaac301;
		myform.submit();
	}
	function onDel(vaac301)
	{
		var myform = document.getElementById("myform");
		myform.action = "<%=path%>/ac03DelById.html?aac301=" + vaac301;
		myform.submit();
	}
	function onBatchUpdate()
	{
		var myform = document.getElementById("myform");
		var maac304 = document.getElementById("maac304");
		if(maac304.value.length > 0)
		{
			myform.action = "<%=path%>/ac/ac03BatchUpdate.html";
			myform.submit();
		}
		else 
		{
			layui.use('layer', function(){
				  var layer = layui.layer;
				  layer.alert("��ѡ���޸ĺ�ĸ���״̬����");
				}); 
		}
	}
	function onBatchUpdate2()
	{
		var myform = document.getElementById("myform");
		var maac306 = document.getElementById("maac306");
		var maac307 = document.getElementById("maac307");
		if(maac306.value.length >0)
		{
			if(maac307.value.length>0)
			{
				myform.action = "<%=path%>/ac/ac03ModifyFollow.html";
				myform.submit();
			}
			else 
			{
				layui.use('layer', function(){
					  var layer = layui.layer;
					  layer.alert("�����ҵ��Ա���");
					}); 
			}
		}
		else 
		{
			layui.use('layer', function(){
				  var layer = layui.layer;
				  layer.alert("�����ҵ��Ա����");
				}); 
		}
	}
</script>
</body>
</html>