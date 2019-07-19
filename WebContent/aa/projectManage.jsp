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
		    <table class="layui-table">
			    <thead>
			        <tr>
			        	<th></th>
			            <th>序号</th>
			            <th>项目名称</th>
			            <th>项目地址</th>
			            <th>开工日期</th>
			            <th>开盘日期</th>
			            <th>项目负责人</th>
			            <th>项目状态</th>
			            <th>占地面积</th>
			            <th>建筑面积</th>
			            <th>可售面积</th>
			            <th>可售套数</th>
			            <th>操作</th>
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
									<a href="#"  class="layui-icon" onClick="onDel('${ins.aaa201}')">&#xe640;</a>
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
					<input class="layui-btn" type="submit" value="查询" name="next">
					<input class="layui-btn" type="submit" value="添加" name="next" formaction="<%=path %>/aa/projectAdd.jsp"> 
					<input class="layui-btn layui-btn-disabled" type="submit"  value="删除" name="next" disabled="disabled" 
							formaction="<%=path %>/aa/aa02DelById.html" id="del">
				</div>
			</div>
			
			<input type="hidden" name="aaa101" value="1">
			
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
</html>