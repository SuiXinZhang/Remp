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
	    <form id="myform" class="layui-form" action="<%=path%>/aa/aa09Query.html" method="post">
	     <h1>付款方式管理</h1>
	        <hr>
		    <table class="layui-table">
			    <thead>
			        <tr>
			        	<th></th>
			            <th>序号</th>
			            <th>付款方式</th>
			            <th>折扣</th>
			            <th>生效日期</th>
			            <th>失效日期</th>
			            <th>是否贷款</th>
			            <th>按揭银行</th>
			            <th>按揭精确度</th>
						<th>公积金银行</th>
						<th>公积金精确度</th>
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
									<input type="checkbox" lay-filter="check" lay-skin="primary" name="idlist" value="${ins.aaa901 }">
									</td>
									<td>${vs.count }</td>
									<td><a href="#" style="color:orange" onclick="onEdit('${ins.aaa901 }')">${ins.aaa902 }</a>
									</td>
									<td>${ins.aaa903 }</td>
									<td>${ins.aaa904 }</td>
									<td>${ins.aaa905 }</td>
									<td>${ins.aaa906 }</td>
									<td>${ins.aaa907 }</td>
									<td>${ins.aaa908 }</td>
									<td>${ins.aaa909 }</td>
									<td>${ins.aaa910 }</td>
									<td>${ins.aaa911 }</td>
									<td><a href="#" style="color:red" onClick="onDel('${ins.aaa901}')">删除</a></td>
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
					<input type="submit" class="layui-btn" value="添加" name="next" formaction="<%=path %>/aa/methodAdd.jsp"> 
					<input type="submit" class="layui-btn layui-btn-disabled" value="删除" name="next" disabled="disabled" formaction="<%=path %>/aa/aa09Delete.html" id="del">
				</div>
			</div>
			

		<input type="hidden" name="aaa201" value="1">
			
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
function onEdit(vaaa901)
{
	var myform = document.getElementById("myform");
	myform.action = "<%=path%>/aa09FindById.html?aaa901=" + vaaa901;
	myform.submit();
}
function onDel(vaaa901)
{
	var myform = document.getElementById("myform");
	myform.action = "<%=path%>/aa09DelById.html?aaa901=" + vaaa901;
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