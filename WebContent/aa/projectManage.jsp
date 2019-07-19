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
	     <h1>��Ŀ����</h1>
	        <hr>
		    <table class="layui-table">
			    <thead>
			        <tr>
			        	<th></th>
			            <th>���</th>
			            <th>��Ŀ����</th>
			            <th>��Ŀ��ַ</th>
			            <th>��������</th>
			            <th>��������</th>
			            <th>��Ŀ������</th>
			            <th>��Ŀ״̬</th>
			            <th>ռ�����</th>
			            <th>�������</th>
			            <th>�������</th>
			            <th>��������</th>
			            <th>����</th>
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
					<input class="layui-btn" type="submit" value="��ѯ" name="next">
					<input class="layui-btn" type="submit" value="���" name="next" formaction="<%=path %>/aa/projectAdd.jsp"> 
					<input class="layui-btn layui-btn-disabled" type="submit"  value="ɾ��" name="next" disabled="disabled" 
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