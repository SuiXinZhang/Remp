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
	    <form id="myform" class="layui-form" action="<%=path%>/aa/aa08Query.html" method="post">
	     <h1>¥������</h1>
	        <hr>
		    <table class="layui-table">
			    <thead>
			        <tr>
			        	<th></th>
			            <th>���</th>
			            <th>�����</th>
			            <th>�������</th>
			            <th>��ַ</th>
			            <th>״̬</th>
			            <th>��������</th>
			            <th>����</th>
			            <th>��������</th>
			            <th>�����ܼ�</th>
			            <th>���ڵ���</th>
			            <th>�����ܼ�</th>
			            <th>��ע</th>
			            <th></th>
			        </tr>
			    </thead>
			    <tbody>
					<c:choose>
						<c:when test="${rows!= null }">
							<c:forEach items="${rows }" var="ins" varStatus="vs">
								<tr>
									<td><input type="checkbox" lay-filter="check" name="idlist" value="${ins.aaa801 }"></td>
									<td>${vs.count }</td>
									<td><a href="#" onclick="onEdit('${ins.aaa801 }')">${ins.aaa803 }</a>
									</td>
									<td>${ins.aaa802 }</td>
									<td>${ins.aaa804 }</td>
									<td>${ins.cnaaa805  }</td>
									<td>${ins.aaa806 }</td>
									<td>${empty ins.aaa807?'��δ����':ins.aaa807 }</td>
									<td>${empty ins.aaa808?'��δ����':ins.aaa808  }</td>
									<td>${empty ins.aaa809?'��δ����':ins.aaa809  }</td>
									<td>${empty ins.aaa810?'��δ����':ins.aaa810  }</td>
									<td>${empty ins.aaa811?'��δ����':ins.aaa811  }</td>
									<td>${ins.aaa812 }</td>
									<td><a href="#" style="color:red" onClick="onDel('${ins.aaa801}')">ɾ��</a></td>
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
					<input type="submit" class="layui-btn layui-btn-disabled" value="�޸�" name="next" disabled="disabled" formaction="<%=path %>/aa/roomsModify.jsp" id="modify"> 
					<input type="submit" class="layui-btn layui-btn-disabled" value="ɾ��" name="next" disabled="disabled" formaction="<%=path %>/aa/aa08Delete.html" id="del"> 
					<input type="submit" class="layui-btn"  value="����" name="next" formaction="<%=path %>/aa/aa07Query.html" formnovalidate="formnovalidate">
				</div>
			</div>
			

		<input type="hidden" name="aaa201" value="1"> 
		<input type="hidden" name="aaa701" value="${param.aaa701 }"> 
		<input type="hidden" name="aaa601" value="${param.aaa601 }"> 
		<input type="hidden" name="aaa602" value="${param.aaa708 }">	
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
function onEdit(vaaa801)
{
	var myform = document.getElementById("myform");
	myform.action = "<%=path%>/aa08FindById.html?aaa801=" + vaaa801;
	myform.submit();
}
function onDel(vaaa801)
{
	var myform = document.getElementById("myform");
	myform.action = "<%=path%>/aa08DelById.html?aaa801=" + vaaa801;
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