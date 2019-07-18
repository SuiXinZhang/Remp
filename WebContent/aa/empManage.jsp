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
	    <form id="myform" class="layui-form" action="<%=path%>/aa/aa04Query.html" method="post">
	     <h1>员工管理</h1>
	        <hr>
		    <table class="layui-table">
			    <thead>
			        <tr>
			        	<th></th>
			            <th>序号</th>
			            <th>姓名</th>
			            <th>员工编号</th>
			            <th>岗位</th>
			            <th>所属部门</th>
			            <th>性别</th>
			            <th>民族</th>
			            <th>生日</th>
			            <th>联系方式</th>
			            <th>住址</th>
			            <th>备注</th>
			            <th></th>
			        </tr>
			    </thead>
			    <tbody>
					<c:choose>
						<c:when test="${rows!= null }">
							<c:forEach items="${rows }" var="ins" varStatus="vs">
								<tr>
									<td>
									<input type="checkbox" lay-filter="check" name="idlist" value="${ins.aaa401 }">
									</td>
									<td>${vs.count }</td>
									<td><a href="#" onclick="onEdit('${ins.aaa401 }')">${ins.aaa403 }</a>
									</td>
									<td>${ins.aaa402 }</td>
									<td>${ins.aaa404 }</td>
									<td>${ins.aaa405 }</td>
									<td>${ins.aaa407 }</td>
									<td>${ins.aaa406 }</td>
									<td>${ins.aaa411 }</td>
									<td>${ins.aaa408 }</td>
									<td>${ins.aaa409 }</td>
									<td>${ins.aaa410 }</td>
									<td><a href="#" style="color:red" onClick="onDel('${ins.aaa401}')">删除</a></td>
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
					<input type="submit" class="layui-btn" value="添加" name="next" onclick="onAdd()" formaction="<%=path %>/aa/empAdd.jsp"> 
					<input type="submit" class="layui-btn layui-btn-disabled" value="删除" name="next" disabled="disabled" 
						formaction="<%=path %>/aa/aa04Delete.html" id="del"> 
					<input type="submit" class="layui-btn" value="返回" name="next" formaction="<%=path %>/aa/aa03Query.html" 
						formnovalidate="formnovalidate"></td>

				</div>
			</div>
			

		<input type="hidden" name="aaa301" value="${param.aaa301 }"> 
		<input type="hidden" name="aaa201" value="1"> 
		<input type="hidden" name="aaa405" value="${param.aaa302 }">
			
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
function onEdit(vaaa401)
{
	var myform = document.getElementById("myform");
	myform.action = "<%=path%>/aa04FindById.html?aaa401=" + vaaa401;
	myform.submit();
}
function onDel(vaaa401)
{
	var myform = document.getElementById("myform");
	myform.action = "<%=path%>/aa04DelById.html?aaa401=" + vaaa401;
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