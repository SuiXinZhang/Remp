<%@ page language="java" pageEncoding="GBK"%>
<%@include file="/../base/taglib.jsp" %>
<html>
<head>
	<jsp:include page="/base/head.jsp"/>
</head>
<body class="layui-layout-body">
<div class="layui-layout layui-layout-admin">
	<jsp:include   page="/base/header.jsp"/>
	<jsp:include   page="/aa/menu.jsp"/>
  <div class="layui-body">
    <div style="padding: 15px;">
	    <form id="myform" class="layui-form" action="<%=path%>/aa/aa07Query.html" method="post">
	     <h1>楼栋管理</h1>
	        <hr>
		    <table class="layui-table">
			    <thead>
			        <tr>
			        	<th></th>
			            <th>序号</th>
			            <th>名称</th>
			            <th>所属区域</th>
			            <th>建筑性质</th>
			            <th>楼层数</th>
			            <th>单元数</th>
			            <th>每层户数</th>
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
									<td><input type="checkbox" lay-filter="check" name="idlist" value="${ins.aaa601 }"></td>
									<td>${vs.count }</td>
									<td><a href="#" style="color:orange" onclick="onEdit('${ins.aaa701 }')">${ins.aaa702 }栋</a>
									</td>
									<td>${ins.aaa708 }</td>
									<td>${ins.aaa703 }</td>
									<td>${ins.aaa704 }</td>
									<td>${ins.aaa705 }</td>
									<td>${ins.aaa706 }</td>
									<td>${ins.aaa707 }</td>
									<td><a href="#" style="color:blue" onClick="onRoom('${ins.aaa701}')">房间管理</a></td>
									<td><a href="#" style="color:red" onClick="onDel('${ins.aaa701}')">删除</a></td>
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
			    </tbody>
			</table>
			 <div class="layui-form-item" align="center">
				<div class="layui-inline">
				<td align="center">
					<input type="submit" class="layui-btn" value="添加" name="next" formaction="<%=path %>/aa/buildingAdd.jsp"> 
					<input type="submit" class="layui-btn layui-btn-disabled" value="删除" name="next" disabled="disabled" formaction="<%=path %>/aa/aa07Delete.html" id="del"> 
					<input type="submit" class="layui-btn" value="返回" name="next" formaction="<%=path %>/aa/aa06Query.html" formnovalidate="formnovalidate">
				</div>
			</div>
			

		<input type="hidden" name="aaa601" value="${param.aaa601 }">
		<input type="hidden" name="aaa201" value="1"> 
		<input type="hidden" name="aaa708" value="${param.aaa602 }">		
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
function onEdit(vaaa701)
{
	var myform = document.getElementById("myform");
	myform.action = "<%=path%>/aa07FindById.html?aaa701=" + vaaa701;
	myform.submit();
}
function onDel(vaaa701)
{
	var myform = document.getElementById("myform");
	myform.action = "<%=path%>/aa07DelById.html?aaa701=" + vaaa701;
	myform.submit();
}
function onRoom(vaaa701)
{
	
	var myform = document.getElementById("myform");
	myform.action = "<%=path%>/aa08Query.html?aaa701=" + vaaa701;
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