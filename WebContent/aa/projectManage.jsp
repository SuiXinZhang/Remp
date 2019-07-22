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
	    <form id="myform" class="layui-form" action="<%=path%>/aa/aa02Query.html" method="post">
	     <h1>项目管理</h1>
	        <hr>
	        <div id="tableId" style="display: none">
		    <table id="idData"  lay-filter="demo">
			    <thead>
			        <tr>
			       		<td lay-data="{field:'check',width:50}"></td>
			        	<td lay-data="{field:'sort1',width:60}">序号</td>
						<td lay-data="{field:'projectname',width:100}">项目名称</td>
						<td lay-data="{field:'username'}">项目地址</td>
						<td lay-data="{field:'userphone'}">开工日期</td>
						<td lay-data="{field:'empname'}">开盘日期</td>
						<td lay-data="{field:'style',width:110}">项目负责人</td>
						<td lay-data="{field:'date',width:100}">项目状态</td>
						<td lay-data="{field:'zdmj'}">占地面积</td>
						<td lay-data="{field:'jzmj'}">建筑面积</td>
						<td lay-data="{field:'ksmj'}">可售面积</td>
						<td lay-data="{field:'ksts'}">可售套数</td>
						<td lay-data="{field:'opt',fixed:'right',width:100}">操作</td>
			        </tr>
			    </thead>
			    <tbody>
					<c:choose>
						<c:when test="${rows!= null }">
							<c:forEach items="${rows }" var="ins" varStatus="vs">
								<tr>
									<td>
									<input type="checkbox"  lay-filter="check" lay-skin="primary"  name="idlist" value="${ins.aaa201 }"></td>
									<td>${vs.count }</td>
									<td><a href="#"  style="color:orange" onclick="onEdit('${ins.aaa201 }')">${ins.aaa202 }</a>
									</td>
									<td>${ins.aaa203 }</td>
									<td>${ins.aaa204 }</td>
									<td>${ins.aaa206 }</td>
									<td>${ins.aaa208 }</td>
									<td>${ins.aaa209 }</td>
									<td>${ins.aaa211 }</td>
									<td>${ins.aaa212 }</td>
									<td>${ins.aaa213 }</td>
									<td>${ins.aaa214 }</td>
									<td>
										<a class="layui-btn layui-btn-xs layui-btn-danger" href="#"
											onClick="onDel('${ins.aaa201}')">
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
					<input class="layui-btn" type="submit" value="查询" name="next">
					<input class="layui-btn" type="submit" value="添加" name="next" formaction="<%=path %>/aa/projectAdd.jsp"> 
					<input class="layui-btn layui-btn-disabled" type="submit"  value="删除" name="next" disabled="disabled" 
							formaction="<%=path %>/aa/aa02Delete.html" id="del">
				</div>
			</div>
			
			<input type="hidden" name="aaa101" value="1">
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
function onEdit(vaaa201)
{
	var myform = document.getElementById("myform");
	myform.action = "<%=path%>/aa02FindById.html?aaa201=" + vaaa201;
	myform.submit();
}
function onDel(vaaa201)
{
	var myform = document.getElementById("myform");
	myform.action = "<%=path%>/aa02DelById.html?aaa201=" + vaaa201;
	myform.submit();
}
</script>
<script>
layui.use(['layer', 'form','element','table'], function(){
	  var layer = layui.layer;
	  var element = layui.element;
	  form = layui.form
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
</html>