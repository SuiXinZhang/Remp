<%@ page language="java" pageEncoding="GBK"%>
<%@include file="/base/taglib.jsp" %>
<html>
<head>
	<jsp:include   page="/base/head.jsp"/>
</head>
<body class="layui-layout-body">
<div class="layui-layout layui-layout-admin">
  	<jsp:include   page="/base/header.jsp"/>
	<jsp:include   page="/ac/menu.jsp"/>
  <div class="layui-body">
    <div class="layui-anim layui-anim-scale"
				style="padding: 15px; margin: 30px 80px;">
				<fieldset class="layui-elem-field layui-filed-title" style="margin-top: 20px;">
					<legend>�ͻ���������</legend>
    <form id="myform" lay-filter="myform" class="layui-form" action="<%=path%>/ac/ac03Query.html" method="post">
		

	<div class="layui-form-item" align="center">
		<div class="layui-inline">
			<label class="layui-form-label">�ͻ�����</label>
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
	</div>
	<div class="layui-form-item" align="center">
		<div class="layui-inline">
			<label class="layui-form-label">����ҵ��Ա</label>
				<div class="layui-input-inline">
					<input type="text" name="qaac306" value="${param.qaac306 }"
					 autocomplete="off" class="layui-input">
				</div>
		</div>
		<div class="layui-inline">
			<label class="layui-form-label">����ҵ��Ա���</label>
				<div class="layui-input-inline">
					<input type="text" name="qaac307" value="${param.qaac307 }"
					 autocomplete="off" class="layui-input">
				</div>
		</div>
	</div>
	<div class="layui-form-item" align="center">
		<div class="layui-inline">
			<label class="layui-form-label">����״̬</label>
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
			<label class="layui-form-label">�޸ĺ�ĸ���״̬</label>
				<div class="layui-input-inline">
					<select id="maac304" name="maac304">
						<option value="">���޶�</option>
						<option value="01">������</option>
						<option value="02">�Ѹ���</option>
						<option value="03">���ٴθ���</option>
					</select>
				</div>
		</div>
	</div>
	<div class="layui-form-item" align="center">
		<div class="layui-inline">
			<label class="layui-form-label">����ʱ��[B]</label>
				<div class="layui-input-inline">
					<input type="text" id="date1" name="baac305" value="${param.baac305 }"
					 autocomplete="off" class="layui-input">
				</div>
		</div>
		<div class="layui-inline">
			<label class="layui-form-label">����ʱ��[E]</label>
				<div class="layui-input-inline">
					<input type="text" id="date2" name="eaac305" value="${param.eaac305 }"
					 autocomplete="off" class="layui-input">
				</div>
		</div>
	</div>
	
	<table class="layui-table" lay-even lay-skin="nob">
			<tr>
				<td></td>
				<td>���</td>
				<td>�ͻ���</td>
				<td>�ͻ����</td>
				<td>��������</td>
				<td>����״̬</td>
				<td>����ʱ��</td>
				<td>����ҵ��Ա</td>
				<td>����ҵ��Ա���</td>
				<td></td>
			</tr>
			<!--
				         ע������
				    1.$�������ŵĽ������ }��˫����֮��,��������ֿո�
				    	��    }"   д��һ��
				    2.���е�����֮������Ҫ��һ���ո�,���򱨴�
				    3.var ����,�൱����ҳ�涨���������,���  ins����������$ {  }
				   -->
			<c:choose>
				<c:when test="${rows!= null }">
					<c:forEach items="${rows }" var="ins" varStatus="vs">
						<tr>
							<td>
							<input type="checkbox" lay-skin="primary" onclick="onSelect(this.checked)" name="idlist" value="${ins.aac301 }" >
							</td>
							<td>${vs.count }</td>
							<td>
							<a href="#" onclick = "onEdit('${ins.aac301 }')" >${ins.aac403 }</a>
							</td>
							<td>${ins.aac402 }</td>
							<td>${ins.aac303 }</td>
							<td>${ins.cnaac304 }</td>
							<td>${ins.aac305 }</td>
							<td>${ins.aac306 }</td>
							<td>${ins.aac307 }</td>
							<td>
							<a href="#" onClick="onDel('${ins.aac301}')">ɾ��</a>
							</td>
						</tr>
					</c:forEach>
					<c:forEach begin="${fn:length(rows)+1 }" end="15" step="1">
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
						</tr>
					</c:forEach>
				</c:when>
				<c:otherwise>
					<c:forEach begin="1" end="15" step="1">
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
						</tr>
					</c:forEach>
				</c:otherwise>
			</c:choose>
	</table>
	<div class="layui-form-item" align="center">
		<input type="submit" value="��ѯ" name="next" class="layui-btn layui-btn-normal">
		<input type="submit" value="���" name="next"  class="layui-btn layui-btn-normal"
		formaction="<%=path %>/ac/addFollow.jsp"> 
		<input type="button" value="�����޸�״̬" class="layui-btn layui-btn-normal layui-btn-disabled" onclick="onBatchUpdate()"
		  name="next1" id="update" >
		  <input type="button" value="������Ӹ���ҵ��Ա" class="layui-btn layui-btn-normal layui-btn-disabled" onclick="onBatchUpdate2()"
		  name="next2" id="modifyFollow" >
		<input type="submit" value="ɾ��" name="next" class="layui-btn layui-btn-normal layui-btn-disabled"
		formaction="<%=path %>/ac/ac03Delete.html" id="del" >
	</div>
	</form>
	</fieldset>
    </div>
  </div>
  
  <div class="layui-footer">
    <!-- �ײ��̶����� -->
  </div>
</div>
<script>
//JavaScript��������
	layui.use(['layer', 'form','element'], function(){
	  var layer = layui.layer
	  ,form = layui.form,
	  element = layui.element;
	  if("${msg }" != "")
	  {
		  layer.msg("${msg }");
	  }
	  form.val('myform',{
		  "qaac304":"${param.qaac304}",
		  "maac304":"${param.maac304}"
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
		//formaction="<%=path%>/ac/ac03BatchUpdate.html"
		var myform = document.getElementById("myform");
		myform.action = "<%=path%>/ac/ac03BatchUpdate.html";
		var maac304 = document.getElementById("maac304");
		console.log(maac304);
		if(maac304.value != null)
		{
			myform.submit();
		}
		else 
		{
			alert("��ѡ���޸ĺ�ĸ���״̬����")
		}
	}
	function onBatchUpdate2()
	{
		var myform = document.getElementById("myform");
		myform.action = "<%=path%>/ac/ac03ModifyFollow.html";
		var maac306 = document.getElementById("maac306");
		console.log(maac306);
		var maac307 = document.getElementById("maac307");
		console.log(maac307);
		alert(maac307.value);
		if(maac306.value != null)
		{
			if(maac307.value != null)
			{
				myform.submit();
			}
			else 
			{
				alert("���ҵ��Ա���");
			}
		}
		else 
		{
			alert("���ҵ��Ա����");
		}
	}
</script>
</body>
</html>