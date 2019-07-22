<%@ page language="java" pageEncoding="GBK"%>
<%@include file="/../base/taglib.jsp" %>
<html>
<head>
	<jsp:include   page="/base/head.jsp"/>
</head>
<body class="layui-layout-body">
<div class="layui-layout layui-layout-admin">
	<jsp:include   page="/base/header.jsp"/>
	 <c:import url="/ae/menu.jsp">
        <c:param name="menu" value="ae07"/>
     </c:import>
  <div class="layui-body">
    <div style="padding: 15px;">
	    <form id="action" lay-filter="form" class="layui-form" action="<%=path %>/ae/ae05query.html" method="post">
	     <h1 align="center">�������</h1>
	        <hr>
	        <div class="layui-form-item" align="center">
	                <div class="layui-inline">
	                    <label class="layui-form-label">�ͻ�����</label>
	                    <div class="layui-input-inline" style="width: 200px;">
	                        <input type="text" value="${param.qaae707 }" name="qaae707" autocomplete="off" class="layui-input">
	                    </div>
	                </div>
	                <div class="layui-inline">
	                    <label class="layui-form-label">��������</label>
	                    <div class="layui-input-inline" style="width: 200px;">
	                        <input type="text" value="${param.qaae709 }" name="qaae709" autocomplete="off" class="layui-input">
	                    </div>
	                </div>
	                <input type="submit" class="layui-btn" data-type="reload" value="��ѯ">
	        </div>
	        <div id="tableId" style="display: none">
		    <table id="idData"  lay-filter="demo">
			    <thead>
			        <tr>
			        	<td lay-data="{field:'sort1',width:60}">���</td>
						<td lay-data="{field:'projectname',width:125}">�ͻ�</td>
						<td lay-data="{field:'username'}">����</td>
						<td lay-data="{field:'userphone'}">���䲹���</td>
						<td lay-data="{field:'empname'}">�������䲹���</td>
						<td lay-data="{field:'style',width:88}">�β���</td>
						<td lay-data="{field:'date',sort:true,width:115}">ʵ�ʲ����</td>
						<td lay-data="{field:'opt',fixed:'right',width:200}">����</td>
			        </tr>
			    </thead>
			    <tbody>
			    <c:forEach items="${rows }" var="ins" varStatus="vs">
			        <tr>
			        	<td>${vs.count}</td>
						<td>${ins.aae707 }</td>
						<td>${ins.aae709 }</td>
						<td>${ins.aae502 }</td>
						<td>${ins.aae503 }</td>
						<td>${ins.aae504 }</td>
						<td>${ins.aae505 }</td>
						<td><a href="#" onclick='modify(${ins.aae501})'>�鿴��ϸ</a></td>
		        </tr>
			    </c:forEach>
			    </tbody>
			</table>
			</div>
		</form>
	</div>
  </div>
  
  <div class="layui-footer">
  </div>
</div>
<script >
function modify(id)
{
	var vform = document.getElementById("action");
	vform.action = "<%=path %>/ae/ae05findById.html?aae501="+id;
	vform.submit();
}
</script>
<script>
layui.use(['layer', 'form','element','table'], function(){
	var element = layui.element
	,layer = layui.layer
	,form = layui.form
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
	
	/*var count=0;
	  form.on('checkbox(check)', function(data){
         if(data.elem.checked==true){
              	count++;
              	if(count!=0){
              		document.getElementById("mod").className="layui-btn";
              	}else{
              		document.getElementById("mod").className="layui-btn layui-btn-disabled";
              	}
              	document.getElementById("mod").disabled=(count==0)
              		
         }else{
       	  count--;
      		  if(count!=0){
      				document.getElementById("mod").className="layui-btn";
      		  }else{
            		document.getElementById("mod").className="layui-btn layui-btn-disabled";
            }
      		document.getElementById("mod").disabled=(count==0)
         }
     }); */
	});
</script>
</body>
</html>