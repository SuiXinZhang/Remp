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
	     <h1>��Ŀ���͹���</h1>
	        <hr>
		    <table class="layui-table">
			    <thead>
			        <tr>
			        	<th></th>
			            <th>���</th>
			            <th>���ͱ��</th>
			            <th>��Ʒ����</th>
			            <th>����ṹ</th>
			            <th>�������</th>
			            <th>�������</th>
			            <th>����ƽ��ͼ</th>
			            <th>��ע</th>
			            <th></th>
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
									<td><a href="#" style="color:red" onClick="onDel('${ins.aaa501}')">ɾ��</a></td>
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
			    </tbody>
			</table>
			 <div class="layui-form-item" align="center">
				<div class="layui-inline">
				<td align="center">	
					<input type="submit" class="layui-btn" value="��ѯ" name="next">
					<input type="submit" class="layui-btn" value="���" name="next" formaction="<%=path %>/aa/typeAdd.jsp"> 
					<input type="submit" class="layui-btn layui-btn-disabled" value="ɾ��" name="next" disabled="disabled" 
							formaction="<%=path %>/aa/aa05Delete.html" id="del">
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