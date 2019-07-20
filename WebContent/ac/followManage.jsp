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
					<legend>客户跟进管理</legend>
    <form id="myform" lay-filter="myform" class="layui-form" action="<%=path%>/ac/ac03Query.html" method="post">
		

	<div class="layui-form-item" align="center">
		<div class="layui-inline">
			<label class="layui-form-label">客户名称</label>
				<div class="layui-input-inline">
					<input type="text" name="qaac403" value="${param.qaac403 }"
					 autocomplete="off" class="layui-input">
				</div>
		</div>
		<div class="layui-inline">
			<label class="layui-form-label">客户编号</label>
				<div class="layui-input-inline">
					<input type="text" name="qaac402" value="${param.qaac402 }"
					 autocomplete="off" class="layui-input">
				</div>
		</div>
	</div>
	<div class="layui-form-item" align="center">
		<div class="layui-inline">
			<label class="layui-form-label">跟进业务员</label>
				<div class="layui-input-inline">
					<input type="text" name="qaac306" value="${param.qaac306 }"
					 autocomplete="off" class="layui-input">
				</div>
		</div>
		<div class="layui-inline">
			<label class="layui-form-label">跟进业务员编号</label>
				<div class="layui-input-inline">
					<input type="text" name="qaac307" value="${param.qaac307 }"
					 autocomplete="off" class="layui-input">
				</div>
		</div>
	</div>
	<div class="layui-form-item" align="center">
		<div class="layui-inline">
			<label class="layui-form-label">跟进状态</label>
				<div class="layui-input-inline">
					<select name="qaac304">
						<option value="">不限定</option>
						<option value="01">待跟进</option>
						<option value="02">已跟进</option>
						<option value="03">待再次跟进</option>
					</select>
				</div>
		</div>
		<div class="layui-inline">
			<label class="layui-form-label">修改后的跟进状态</label>
				<div class="layui-input-inline">
					<select id="maac304" name="maac304">
						<option value="">不限定</option>
						<option value="01">待跟进</option>
						<option value="02">已跟进</option>
						<option value="03">待再次跟进</option>
					</select>
				</div>
		</div>
	</div>
	<div class="layui-form-item" align="center">
		<div class="layui-inline">
			<label class="layui-form-label">跟进时间[B]</label>
				<div class="layui-input-inline">
					<input type="text" id="date1" name="baac305" value="${param.baac305 }"
					 autocomplete="off" class="layui-input">
				</div>
		</div>
		<div class="layui-inline">
			<label class="layui-form-label">跟进时间[E]</label>
				<div class="layui-input-inline">
					<input type="text" id="date2" name="eaac305" value="${param.eaac305 }"
					 autocomplete="off" class="layui-input">
				</div>
		</div>
	</div>
	
	<table class="layui-table" lay-even lay-skin="nob">
			<tr>
				<td></td>
				<td>序号</td>
				<td>客户名</td>
				<td>客户编号</td>
				<td>跟进内容</td>
				<td>跟进状态</td>
				<td>跟进时间</td>
				<td>跟进业务员</td>
				<td>跟进业务员编号</td>
				<td></td>
			</tr>
			<!--
				         注意事项
				    1.$及大括号的结束标记 }与双引号之间,不允许出现空格
				    	即    }"   写在一起
				    2.所有的属性之间至少要有一个空格,否则报错
				    3.var 属性,相当于在页面定义变量名称,因此  ins不允许再用$ {  }
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
							<a href="#" onClick="onDel('${ins.aac301}')">删除</a>
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
		<input type="submit" value="查询" name="next" class="layui-btn layui-btn-normal">
		<input type="submit" value="添加" name="next"  class="layui-btn layui-btn-normal"
		formaction="<%=path %>/ac/addFollow.jsp"> 
		<input type="button" value="批量修改状态" class="layui-btn layui-btn-normal layui-btn-disabled" onclick="onBatchUpdate()"
		  name="next1" id="update" >
		  <input type="button" value="批量添加跟进业务员" class="layui-btn layui-btn-normal layui-btn-disabled" onclick="onBatchUpdate2()"
		  name="next2" id="modifyFollow" >
		<input type="submit" value="删除" name="next" class="layui-btn layui-btn-normal layui-btn-disabled"
		formaction="<%=path %>/ac/ac03Delete.html" id="del" >
	</div>
	</form>
	</fieldset>
    </div>
  </div>
  
  <div class="layui-footer">
    <!-- 底部固定区域 -->
  </div>
</div>
<script>
//JavaScript代码区域
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
		 
		  //执行一个laydate实例
		  laydate.render({
		    elem: '#date1'  //指定元素
		  });
		  laydate.render({
			elem: '#date2'  //指定元素
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
			alert("请选择修改后的跟进状态类型")
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
				alert("添加业务员编号");
			}
		}
		else 
		{
			alert("添加业务员名称");
		}
	}
</script>
</body>
</html>