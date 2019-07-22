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
	    <form id="myform" class="layui-form" action="<%=path%>/aa/aa09Query.html" method="post">
	     <h1>���ʽ����</h1>
	        <hr>
	        <div id="tableId" style="display: none">
		    <table id="idData"  lay-filter="demo">
			    <thead>
			        <tr>
			        	<td lay-data="{field:'check',width:50}"></td>
			        	<td lay-data="{field:'sort1',width:60}">���</td>
						<td lay-data="{field:'projectname',width:125}">���ʽ</td>
						<td lay-data="{field:'username'}">�ۿ�</td>
						<td lay-data="{field:'userphone'}">��Ч����</td>
						<td lay-data="{field:'empname'}">ʧЧ����</td>
						<td lay-data="{field:'style',width:88}">�Ƿ����</td>
						<td lay-data="{field:'date',sort:true,width:115}">��������</td>
						<td lay-data="{field:'grade',sort:true,width:100}">���Ҿ�ȷ��</td>
						<td lay-data="{field:'gjjyx',sort:true}">����������</td>
						<td lay-data="{field:'gongjijqd',sort:true}">������ȷ��</td>
						<td lay-data="{field:'beizhu',sort:true}">��ע</td>
						<td lay-data="{field:'opt',fixed:'right',width:200}">����</td>
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
									<td>
											<a class="layui-btn layui-btn-xs layui-btn-danger" href="#"
												onClick="onDel('${ins.aaa901}')">
												<i class="layui-icon layui-icon-delete"></i>ɾ��
											</a> 
									</td>
								</tr>
							</c:forEach>
						</c:when>
					</c:choose>
			    </tbody>
			</table>
			 <div class="layui-form-item" align="center">
				<div class="layui-inline">
				<td align="center">	
					<input type="submit" class="layui-btn" value="���" name="next" formaction="<%=path %>/aa/methodAdd.jsp"> 
					<input type="submit" class="layui-btn layui-btn-disabled" value="ɾ��" name="next" disabled="disabled" formaction="<%=path %>/aa/aa09Delete.html" id="del">
				</td>
				</div>
			</div>
			

		<input type="hidden" name="aaa201" value="${param.aaa201 }">
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
layui.use(['layer', 'form','element','table'], function(){
	  var layer = layui.layer;
	  var element = layui.element;
	  form = layui.form
	  ,table = layui.table;
		//ת����̬���
		table.init('demo', {
			limit : 10,
			page : true,
			toolbar : true,
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