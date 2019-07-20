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
    <div style="padding: 15px;">
	    <form id="action" lay-filter="form" class="layui-form" action="<%=path %>/ae/ae04query.html" method="post">
	     <h1 align="center">��Ȩ����</h1>
	        <hr>
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
		    <table class="layui-table">
			    <thead>
			        <tr>
			        	<td></td>
						<td>���</td>
						<td>�ͻ�</td>
						<td>����</td>
						<td>��ϵ�绰</td>
						<td>��ŵ����</td>
						<td>��ŵ���</td>
						<td>�������</td>
						<td></td>
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
						<td><a href="#" onclick='findById(${ins.aae401})'>�鿴��ϸ</a></td>
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
		</form>
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
layui.use(['layer', 'form','element'], function(){
	var element = layui.element;
	var layer = layui.layer
	,form = layui.form;
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