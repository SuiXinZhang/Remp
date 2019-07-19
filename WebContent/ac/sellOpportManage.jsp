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
    	
    <div style="padding: 15px;">
    <form class="layui-form" lay-filter="myform" action="<%=path%>/ac/ac02Query.html" id="myform" method="post">
		
				���ۻ������
	<div class="layui-form-item" align="center">
		<div class="layui-inline">
			<label class="layui-form-label">�ͻ�����</label>
				<div class="layui-input-inline">
					<input type="text" name="qaac202" value="${param.qaac202 }"
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
			<label class="layui-form-label">����������</label>
				<div class="layui-input-inline">
					<select name="qaac207">
						<option value="" selected>���޶�</option>
						<option value="01">����һ��</option>
						<option value="02">��������</option>
						<option value="03">��������</option>
					</select>
				</div>
		</div>
		<div class="layui-inline">
			<label class="layui-form-label">���������</label>
				<div class="layui-input-inline">
					<select name="qaac203">
						<option value="" selected>���޶�</option>
						<option value="01">25%</option>
						<option value="02">50%</option>
						<option value="03">75%</option>
						<option value="04">90%</option>
						<option value="05">100%</option>
					</select>
				</div>
		</div>
	</div>
	<div class="layui-form-item" align="center">
		<div class="layui-inline">
			<label class="layui-form-label">�ͻ�Ǳ�ڸ�����ֵ����</label>
				<div class="layui-input-inline">
					<select name="qaac206">
						<option value="" selected>���޶�</option>
						<option value="01">��</option>
						<option value="02">�е�</option>
						<option value="03">��</option>
						<option value="04">��</option>
					</select>
				</div>
		</div>
	</div>
	<div class="layui-form-item" align="center">
		<div class="layui-inline">
			<label class="layui-form-label">���ܹ���ʱ��[B]</label>
				<div class="layui-input-inline">
					<input type="text" id="date1" name="baac204" value="${param.baac204 }"
					 autocomplete="off" class="layui-input">
				</div>
		</div>
		<div class="layui-inline">
			<label class="layui-form-label">���ܹ���ʱ��[E]</label>
				<div class="layui-input-inline">
					<input type="text" id="date2" name="eaac204" value="${param.eaac204 }"
					 autocomplete="off" class="layui-input">
				</div>
		</div>
	</div>
	<div class="layui-form-item" align="center">
		<div class="layui-inline">
			<label class="layui-form-label">����۸�[B]</label>
				<div class="layui-input-inline">
					<input type="number" name="baac209" value="${param.baac209 }"
					 autocomplete="off" class="layui-input">
				</div>
		</div>
		<div class="layui-inline">
			<label class="layui-form-label">����۸�[E]</label>
				<div class="layui-input-inline">
					<input type="number" name="eaac209" value="${param.eaac209 }"
					 autocomplete="off" class="layui-input">
				</div>
		</div>
	</div>
	<div class="layui-form-item" align="center">
		<div class="layui-inline">
			<label class="layui-form-label">�������[B]</label>
				<div class="layui-input-inline">
					<input type="number" name="baac208" value="${param.baac208 }"
					 autocomplete="off" class="layui-input">
				</div>
		</div>
		<div class="layui-inline">
			<label class="layui-form-label">�������[E]</label>
				<div class="layui-input-inline">
					<input type="number" name="eaac208" value="${param.eaac208 }"
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
				<td>���������</td>
				<td>���ܹ���ʱ��</td>
				<td>�ͻ�Ǳ�ڸ�����ֵ</td>
				<td>����������</td>
				<td>�������</td>
				<td>����۸�</td>
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
						<tr >
							<td>
							<input type="checkbox" onclick="onSelect(this.checked)" lay-skin="primary" name="idlist" value="${ins.aac201 }" >
							</td>
							<td>${vs.count }</td>
							<td>
							<a href="#" onclick = "onEdit('${ins.aac201 }')" >${ins.aac202 }</a>
							</td>
							<td>${ins.aac402 }</td>
							<td class="showAac203" value="${ins.aac203 }"></td>
							<td>${ins.aac204 }</td>
							<td class="showAac206" value="${ins.aac206 }"></td>
							<td class="showAac207" value="${ins.aac207 }"></td>
							<td>${ins.aac208 }</td>
							<td>${ins.aac209 }</td>
							<td>
							<a href="#" onClick="onDel('${ins.aac201}')">ɾ��</a>
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
							<td></td>
						</tr>
					</c:forEach>
				</c:otherwise>
			</c:choose>
	</table>
	<div class="layui-form-item" align="center">
		<input type="submit" value="��ѯ" name="next" class="layui-btn layui-btn-normal">
		<input type="submit" value="ɾ��" name="next" class="layui-btn layui-btn-normal layui-btn-disabled"
					formaction="<%=path %>/ac/ac02Delete.html" id="del" >
	</div>
	</form>
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
	  ,form = layui.form;
	  var element = layui.element();
	  layer.msg('Hello World');
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
		delB.disabled = (count == 0);
	}
	function onEdit(vaac201)
	{
		var myform = document.getElementById("myform");
		myform.action = "<%=path%>/ac02FindById.html?aac201=" + vaac201;
		myform.submit();
	}
	function onDel(vaac201)
	{
		var myform = document.getElementById("myform");
		myform.action = "<%=path%>/ac02DelById.html?aac201=" + vaac201;
		myform.submit();
	}
	function onload1()
	{
		var showAac203 = document.getElementsByClassName("showAac203");
		for(var i =0 ; i< showAac203.length;i++)
		{
			switch(showAac203[i].getAttribute("value"))
			{
			case "01":showAac203[i].innerHTML = "25%";break;
			case "02":showAac203[i].innerHTML = "50%";break;
			case "03":showAac203[i].innerHTML = "75%";break;
			case "04":showAac203[i].innerHTML = "90%";break;
			case "05":showAac203[i].innerHTML = "100%";break;
			}
		}
		
		var showAac206 = document.getElementsByClassName("showAac206");
		for(var i =0 ; i< showAac206.length;i++)
		{
		switch(showAac206[i].getAttribute("value"))
		{
		case "01":showAac206[i].innerHTML = "��";break;
		case "02":showAac206[i].innerHTML = "�е�";break;
		case "03":showAac206[i].innerHTML = "��";break;
		case "04":showAac206[i].innerHTML = "��";break;
		}
		}
		
		var showAac207 = document.getElementsByClassName("showAac207");
		for(var i =0 ; i< showAac207.length;i++)
		{
		switch(showAac207[i].getAttribute("value"))
		{
		case "01":showAac207[i].innerHTML = "����һ��";break;
		case "02":showAac207[i].innerHTML = "��������";break;
		case "03":showAac207[i].innerHTML = "��������";break;
		}
		}
	}
</script>
</body>
</html>