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
		
				销售机会管理
	<div class="layui-form-item" align="center">
		<div class="layui-inline">
			<label class="layui-form-label">客户名称</label>
				<div class="layui-input-inline">
					<input type="text" name="qaac202" value="${param.qaac202 }"
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
			<label class="layui-form-label">意向房屋类型</label>
				<div class="layui-input-inline">
					<select name="qaac207">
						<option value="" selected>不限定</option>
						<option value="01">两室一厅</option>
						<option value="02">两室两厅</option>
						<option value="03">三室两厅</option>
					</select>
				</div>
		</div>
		<div class="layui-inline">
			<label class="layui-form-label">购买可能性</label>
				<div class="layui-input-inline">
					<select name="qaac203">
						<option value="" selected>不限定</option>
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
			<label class="layui-form-label">客户潜在跟进价值评估</label>
				<div class="layui-input-inline">
					<select name="qaac206">
						<option value="" selected>不限定</option>
						<option value="01">差</option>
						<option value="02">中等</option>
						<option value="03">良</option>
						<option value="04">优</option>
					</select>
				</div>
		</div>
	</div>
	<div class="layui-form-item" align="center">
		<div class="layui-inline">
			<label class="layui-form-label">可能购买时间[B]</label>
				<div class="layui-input-inline">
					<input type="text" id="date1" name="baac204" value="${param.baac204 }"
					 autocomplete="off" class="layui-input">
				</div>
		</div>
		<div class="layui-inline">
			<label class="layui-form-label">可能购买时间[E]</label>
				<div class="layui-input-inline">
					<input type="text" id="date2" name="eaac204" value="${param.eaac204 }"
					 autocomplete="off" class="layui-input">
				</div>
		</div>
	</div>
	<div class="layui-form-item" align="center">
		<div class="layui-inline">
			<label class="layui-form-label">意向价格[B]</label>
				<div class="layui-input-inline">
					<input type="number" name="baac209" value="${param.baac209 }"
					 autocomplete="off" class="layui-input">
				</div>
		</div>
		<div class="layui-inline">
			<label class="layui-form-label">意向价格[E]</label>
				<div class="layui-input-inline">
					<input type="number" name="eaac209" value="${param.eaac209 }"
					 autocomplete="off" class="layui-input">
				</div>
		</div>
	</div>
	<div class="layui-form-item" align="center">
		<div class="layui-inline">
			<label class="layui-form-label">意向面积[B]</label>
				<div class="layui-input-inline">
					<input type="number" name="baac208" value="${param.baac208 }"
					 autocomplete="off" class="layui-input">
				</div>
		</div>
		<div class="layui-inline">
			<label class="layui-form-label">意向面积[E]</label>
				<div class="layui-input-inline">
					<input type="number" name="eaac208" value="${param.eaac208 }"
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
				<td>购买可能性</td>
				<td>可能购买时间</td>
				<td>客户潜在跟进价值</td>
				<td>意向房屋类型</td>
				<td>意向面积</td>
				<td>意向价格</td>
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
							<a href="#" onClick="onDel('${ins.aac201}')">删除</a>
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
		<input type="submit" value="查询" name="next" class="layui-btn layui-btn-normal">
		<input type="submit" value="删除" name="next" class="layui-btn layui-btn-normal layui-btn-disabled"
					formaction="<%=path %>/ac/ac02Delete.html" id="del" >
	</div>
	</form>
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
	  ,form = layui.form;
	  var element = layui.element();
	  layer.msg('Hello World');
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
		case "01":showAac206[i].innerHTML = "差";break;
		case "02":showAac206[i].innerHTML = "中等";break;
		case "03":showAac206[i].innerHTML = "良";break;
		case "04":showAac206[i].innerHTML = "优";break;
		}
		}
		
		var showAac207 = document.getElementsByClassName("showAac207");
		for(var i =0 ; i< showAac207.length;i++)
		{
		switch(showAac207[i].getAttribute("value"))
		{
		case "01":showAac207[i].innerHTML = "两室一厅";break;
		case "02":showAac207[i].innerHTML = "两室两厅";break;
		case "03":showAac207[i].innerHTML = "三室两厅";break;
		}
		}
	}
</script>
</body>
</html>