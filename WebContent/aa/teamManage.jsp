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
	    <form id="myform" class="layui-form" action="<%=path%>/aa/aa03Query.html" method="post">
	     <h1>部门管理</h1>
	        <hr>
		    <table class="layui-table">
			    <thead>
			        <tr>
			        	<th></th>
			            <th>序号</th>
			            <th>部门名称</th>
			            <th>部门描述</th>
			            <th>操作</th>
			        </tr>
			    </thead>
			    <tbody>
					<c:choose>
						<c:when test="${rows!= null }">
							<c:forEach items="${rows }" var="ins" varStatus="vs">
								<tr>
									<td>
									<input type="checkbox" lay-filter="check" lay-skin="primary" name="idlist" value="${ins.aaa301 }">
									</td>
									<td>${vs.count }</td>
									<td><a href="#" style="color:orange" onclick="onEdit('${ins.aaa301 }')">${ins.aaa302 }</a>
									</td>
									<td>${ins.aaa303 }</td>
									<td>
											<a class="layui-btn layui-btn-xs" href="#"
												onClick="onEmp('${ins.aaa301}','${ins.aaa302}')">
												<i class="layui-icon layui-icon-edit"></i>员工管理
											</a> 
									
											<a class="layui-btn layui-btn-xs layui-btn-danger" href="#"
												onClick="onDel('${ins.aaa301}')">
												<i class="layui-icon layui-icon-delete"></i>删除
											</a> 
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
					<input type="submit" class="layui-btn" value="添加" name="next" formaction="<%=path %>/aa/teamAdd.jsp"> 
					<input type="submit" class="layui-btn layui-btn-disabled" value="删除" name="next" disabled="disabled" 
							formaction="<%=path %>/aa/aa03Delete.html" id="del">
				</div>
			</div>
			
		<input type="hidden" name="aaa201" value="${param.aaa201 }"> 
		<input type="hidden" id="aaa302" name="aaa302" value="">
			
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
function onEdit(vaaa301)
{
	var myform = document.getElementById("myform");
	myform.action = "<%=path%>/aa03FindById.html?aaa301=" + vaaa301;
	myform.submit();
}
function onDel(vaaa301)
{
	var myform = document.getElementById("myform");
	myform.action = "<%=path%>/aa03DelById.html?aaa301=" + vaaa301;
	myform.submit();
}

function onEmp(vaaa301,vaaa302)
{
	var aaa302 = document.getElementById("aaa302");
	aaa302.value=vaaa302;
	
	var myform = document.getElementById("myform");
	myform.action = "<%=path%>/aa04Query.html?aaa301=" + vaaa301;
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