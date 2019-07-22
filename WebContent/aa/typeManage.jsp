<!DOCTYPE html>
<%@ page language="java" pageEncoding="GBK"%>
<%@include file="/../base/taglib.jsp" %>
<html>
<head>
	<jsp:include   page="/base/head.jsp"/>
</head>
<body class="layui-layout-body">
<div class="layui-layout layui-layout-admin">
	<jsp:include   page="/base/header.jsp"/>
	<jsp:include   page="/aa/menu.jsp"/>
  <div class="layui-body">
    <div style="padding: 15px;">
	    <form id="myform" class="layui-form" action="<%=path%>/aa/aa05Query.html" method="post">
	     <h1>项目户型管理</h1>
	        <hr>
	        <div id="tableId" style="display: none">
		    <table id="idData"  lay-filter="demo">
			    <thead>
			        <tr>
			        	<td lay-data="{field:'check',width:50}"></td>
			        	<td lay-data="{field:'sort1',width:60}">序号</td>
						<td lay-data="{field:'projectname',width:100}">户型编号</td>
						<td lay-data="{field:'username',width:140}">产品类型</td>
						<td lay-data="{field:'userphone',width:140}">房间结构</td>
						<td lay-data="{field:'empname',width:88}">建筑面积</td>
						<td lay-data="{field:'style',width:88}">套内面积</td>
						<td lay-data="{field:'date',width:100}">户型平面图</td>
						<td lay-data="{field:'grade'}">备注</td>
						<td lay-data="{field:'opt',fixed:'right',width:200}">操作</td>
			        </tr>
			    </thead>
			    <tbody>
					<c:choose>
						<c:when test="${rows!= null }">
							<c:forEach items="${rows }" var="ins" varStatus="vs">
								<tr>
									<td>
									<input type="checkbox" lay-filter="check" lay-skin="primary" name="idlist" value="${ins.aaa501 }">
									</td>
									<td>${vs.count }</td>
									<td><a href="#" style="color:orange" onclick="onEdit('${ins.aaa501 }')">${ins.aaa502 }</a>
									</td>
									<td>${ins.aaa503 }</td>
									<td>${ins.aaa504 }</td>
									<td>${ins.aaa505 }</td>
									<td>${ins.aaa506 }</td>
									<td>${ins.aaa507 }</td>
									<td>${ins.aaa508 }</td>
									<td>							
										<a class="layui-btn layui-btn-xs layui-btn-danger" href="#"
											onClick="onDel('${ins.aaa501}')">
											<i class="layui-icon layui-icon-delete"></i>删除
										</a> 
									</td>
								</tr>
							</c:forEach>
							<c:forEach begin="${fn:length(rows)+1 }" end="10" step="1">
								<tr>
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
					</c:choose>
			    </tbody>
			</table>
			 <div class="layui-form-item" align="center">
				<div class="layui-inline">
				<td align="center">	
					<input type="submit" class="layui-btn" value="查询" name="next">
					<input type="submit" class="layui-btn" value="添加" name="next" formaction="<%=path %>/aa/typeAdd.jsp"> 
					<input type="submit" class="layui-btn layui-btn-disabled" value="删除" name="next" disabled="disabled" 
							formaction="<%=path %>/aa/aa05Delete.html" id="del">
				</div>
			</div>
			

		<input type="hidden" name="aaa201" value="${param.aaa201 }">
		</div>
		</form>
	</div>
  </div>
  
  <div class="layui-footer">
  </div>
</div>

<script>
var count = 0;
function onSelect(vstate)
{
	value?count++:count--;
	if(count!=0)
	{
		${"del"}.class="layui-btn";
	}
}
function onEdit(vaaa501)
{
	var myform = document.getElementById("myform");
	myform.action = "<%=path%>/aa05FindById.html?aaa501=" + vaaa501;
	myform.submit();
}
function onDel(vaaa501)
{
	var myform = document.getElementById("myform");
	myform.action = "<%=path%>/aa05DelById.html?aaa501=" + vaaa501;
	myform.submit();
}
</script>
<script>
layui.use(['layer', 'form','element','table'], function(){
	  var layer = layui.layer
	  ,element = layui.element
	  ,form = layui.form
	  ,table = layui.table;
		//转换静态表格
		table.init('demo', {
			limit : 10,
			page : true,
			
			done : function(res, curr, count) {
				$('#tableId').css('display', 'block');
			}
		});
	  var count=0;
	  form.on('checkbox(check)', function(data){
          if(data.elem.checked==true){
               	count++;
               	if(count!=0){
               		document.getElementById("del").className="layui-btn";
               	}else{
               		document.getElementById("del").className="layui-btn layui-btn-disabled";
               	}
               	document.getElementById("del").disabled=(count==0)
               		
          }else{
        	  count--;
       		  if(count!=0){
       				document.getElementById("del").className="layui-btn";
       		  }else{
             		document.getElementById("del").className="layui-btn layui-btn-disabled";
             }
       		document.getElementById("del").disabled=(count==0)
          }
      });
	});
</script>
</body>