<%@ page language="java" pageEncoding="GBK"%>
<%@include file="/../base/taglib.jsp" %>
<html>
<head>
	<jsp:include  page="/base/head.jsp"/>
</head>
<body class="layui-layout-body">
<div class="layui-layout layui-layout-admin">
	<jsp:include   page="/base/header.jsp"/>
	<jsp:include   page="/aa/menu.jsp"/>
  <div class="layui-body">
    <div style="padding: 15px;">
	    <form id="myform" class="layui-form" action="<%=path%>/aa/aa06Query.html" method="post">
	     <h1>区域管理</h1>
	        <hr>
		    <table class="layui-table">
			    <thead>
			        <tr>
			        	<th></th>
			            <th>序号</th>
			            <th>名称</th>
			            <th>地址</th>
			            <th>面积</th>
			            <th>备注</th>
			            <th></th>
			            <th></th>
			        </tr>
			    </thead>
			    <tbody>
					<c:choose>
						<c:when test="${rows!= null }">
							<c:forEach items="${rows }" var="ins" varStatus="vs">
								<tr>
									<td>
									<input type="checkbox" lay-skin="primary"  lay-filter="check" name="idlist" value="${ins.aaa601 }">
									</td>
									<td>${vs.count }</td>
									<td><a href="#" style="color:orange" onclick="onEdit('${ins.aaa601 }')">${ins.aaa602 }</a>
									</td>
									<td>${ins.aaa603 }</td>
									<td>${ins.aaa604 }</td>
									<td>${ins.aaa605 }</td>
									<td><a href="#" style="color:blue" onClick="onBuilding('${ins.aaa601}','${ins.aaa602}')">楼栋管理</a></td>
									<td><a href="#" style="color:red" onClick="onDel('${ins.aaa601}')">删除</a></td>
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
								</tr>
							</c:forEach>
						</c:otherwise>
					</c:choose>
			    </tbody>
			</table>
			 <div class="layui-form-item" align="center">
				<div class="layui-inline">
				<td align="center">
					<input type="submit" class="layui-btn" value="查询" name="next">
					<input type="submit" class="layui-btn" value="添加" name="next" formaction="<%=path %>/aa/areaAdd.jsp"> 
					<input type="submit" class="layui-btn layui-btn-disabled" value="删除" name="next" disabled="disabled" formaction="<%=path %>/aa/aa06Delete.html" id="del"> 
					<input type="submit" class="layui-btn" value="返回" name="next" formaction="<%=path %>/aa/aa02Query.html" formnovalidate="formnovalidate"></td>

				</div>
			</div>
			

			<input type="hidden" name="aaa201" value="${param.aaa201 }"> 
			<input type="hidden" id="aaa602" name="aaa602" value="">
				
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
function onEdit(vaaa601)
{
	var myform = document.getElementById("myform");
	myform.action = "<%=path%>/aa06FindById.html?aaa601=" + vaaa601;
	myform.submit();
}
function onDel(vaaa601)
{
	var myform = document.getElementById("myform");
	myform.action = "<%=path%>/aa06DelById.html?aaa601=" + vaaa601;
	myform.submit();
}
function onBuilding(vaaa601,vaaa602)
{
	var aaa602 = document.getElementById("aaa602");
	aaa602.value=vaaa602;
	
	var myform = document.getElementById("myform");
	myform.action = "<%=path%>/aa07Query.html?aaa601=" + vaaa601;
	myform.submit();
}
</script>
<script>
layui.use(['layer', 'form','element'], function(){
	  var layer = layui.layer;
	  var element = layui.element;
	  form = layui.form;
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