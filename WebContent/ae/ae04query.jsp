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
	 <c:import url="/ae/menu.jsp">
        <c:param name="menu" value="ae04"/>
     </c:import>
  <div class="layui-body">
    <div class="layui-anim layui-anim-scale"
				style="padding: 15px; margin: 30px 80px;">
				<fieldset class="layui-elem-field layui-filed-title" style="margin-top: 20px;">
					<legend>��Ȩ����</legend>
	    <form id="action" lay-filter="form" class="layui-form" action="<%=path %>/ae/ae04query.html" method="post">
	    <br>
	        <div class="layui-form-item" align="center">
	                <div class="layui-inline">
	                    <label class="layui-form-label">�ͻ�����</label>
	                    <div class="layui-input-inline" style="width: 200px;">
	                        <input type="text" value="${param.qaae402 }" name="qaae402" autocomplete="off" class="layui-input">
	                    </div>
	                </div>
	                <div class="layui-inline">
	                    <label class="layui-form-label">��������</label>
	                    <div class="layui-input-inline" style="width: 200px;">
	                        <input type="text" value="${param.qaae416 }" name="qaae416" autocomplete="off" class="layui-input">
	                    </div>
	                </div>
	                <input type="submit" class="layui-btn" data-type="reload" value="��ѯ">
	        </div>
	        <div id="tableId" style="display: none">
		    <table id="idData"  lay-filter="demo">
			    <thead>
			        <tr>
			        	<td lay-data="{field:'check',width:60}"></td>
			        	<td lay-data="{field:'sort1',width:60}">���</td>
						<td lay-data="{field:'projectname'}">�ͻ�</td>
						<td lay-data="{field:'username'}">����</td>
						<td lay-data="{field:'userphone'}">��ϵ�绰</td>
						<td lay-data="{field:'empname'}">��ŵ����</td>
						<td lay-data="{field:'style'}">��ŵ���</td>
						<td lay-data="{field:'date',sort:true}">�������</td>
						<td lay-data="{field:'opt',fixed:'right'}">����</td>
			        </tr>
			    </thead>
			    <tbody>
			    <c:forEach items="${rows }" var="ins" varStatus="vs">
			        <tr>
			        	<td><input type="checkbox" lay-skin="primary" lay-filter="check" name="modList" value="${ins.aae401 }"/></td>
						<td>${vs.count}</td>
						<td>${ins.aae402 }</td>
						<td>${ins.aae416 }</td>
						<td>${ins.aae403 }</td>
						<td>${ins.aae409 }</td>
						<td>${ins.aae410 }</td>
						<td>${ins.snaae411 }</td>
						<td><a class="layui-btn layui-btn-xs " href="#" onclick='findById(${ins.aae401})'>�鿴��ϸ</a></td>
		        </tr>
			    </c:forEach>
			    </tbody>
			</table>
			 <div class="layui-form-item" align="center">
				<div class="layui-inline">
						<input class="layui-btn" name="next" type="submit" value="���"
							formaction="<%=path %>/ae/ae04add.jsp">
						<input class="layui-btn layui-btn-disabled"  id="mod" type="submit"  value="�����޸�" disabled="disabled"
						formaction="<%=path %>/ae/ae04mod.jsp">
				</div>
			</div>
			</div>
		</form>
		</fieldset>
	</div>
  </div>
  
  <div class="layui-footer">
  </div>
</div>
<script >
function findById(id)
{
	var vform = document.getElementById("action");
	vform.action = "<%=path %>/ae/ae04findById.html?aae401="+id;
	vform.submit();
}
</script>
<script>
layui.use(['layer', 'form','element','table'], function(){
	var element = layui.element;
	var layer = layui.layer
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
	var count=0;
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
     });
	});
</script>
</body>
</html>