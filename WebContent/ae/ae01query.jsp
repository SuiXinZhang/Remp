<%@ page language="java" pageEncoding="GBK"%>
<%@include file="/../base/taglib.jsp" %>
<html>
<head>
	<jsp:include   page="/base/head.jsp"/>
</head>
<body class="layui-layout-body">
<div class="layui-layout layui-layout-admin">
	<jsp:include   page="/base/header.jsp"/>
	<jsp:include   page="/ae/menu.jsp"/>
  <div class="layui-body">
    <div style="padding: 15px;">
	    <form id="action" class="layui-form" action="<%=path %>/ae01/ae01query.html" method="post">
	     <h1 align="center">合同管理</h1>
	        <hr>
	        <div class="layui-form-item" align="center">
	        		<div class="layui-inline">
	                    <label class="layui-form-label">办理状态</label>
	                    <div class="layui-input-inline" >
					        <select name="qaae104">
					          <option value="">请选择</option>
					          <option value="1">已办理</option>
					          <option value="0">未办理</option>
					        </select>
	                    </div>
	                </div>
	                <div class="layui-inline">
	                    <label class="layui-form-label">客户姓名</label>
	                    <div class="layui-input-inline" style="width: 100px;">
	                        <input type="text" name="qaad702" autocomplete="off" class="layui-input">
	                    </div>
	                </div>
	                <div class="layui-inline">
	                    <label class="layui-form-label">房间名称</label>
	                    <div class="layui-input-inline" style="width: 200px;">
	                        <input type="text" name="qaaa803" autocomplete="off" class="layui-input">
	                    </div>
	                </div>
	                <input type="submit" class="layui-btn" data-type="reload" value="查询">
	        </div>
		    <table class="layui-table">
			    <thead>
			        <tr>
			        	<th></th>
			            <th>序号</th>
			            <th>客户</th>
			            <th>房间</th>
			            <th>联系电话</th>
			            <th>承诺办理</th>
			            <th>承诺完成</th>
			            <th>当前进程</th>
			            <th>完成时间</th>
			            <th></th>
			        </tr>
			    </thead>
			    <tbody>
			    <c:forEach items="${rows }" var="ins" varStatus="vs">
			        <tr>
			        	<td><input type="checkbox" lay-filter="check" name="modList" value="${ins.aab101 }"/></td>
			            <td>${vs.count}</td>
			            <td>${ins.aad702 }</td>
			            <td>${ins.aaa803 }</td>
						<td>${ins.aac407 }</td>
						<td>${ins.aae102 }</td>
						<td>${ins.aae103 }</td>
						<td>${ins.snaae104 }</td>
						<td>${ins.aae105 }</td>
						<td><a href="#" style="color:green" onclick='modify(${ins.aae101})'>录入备案日期</a></td>
			        </tr>
			    </c:forEach>
			    </tbody>
			</table>
			 <div class="layui-form-item" align="center">
				<div class="layui-inline">
						<input class="layui-btn" name="next" type="submit" value="添加"
							formaction="<%=path %>/ae/ae01add.jsp">
						<input class="layui-btn layui-btn-disabled"  id="mod" type="submit"  value="批量修改" disabled="disabled"
							formaction="<%=path %>/ae/ae01mod.jsp">
				</div>
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
	vform.action = "<%=path %>/ae/ae01findById.html?aae101="+id;
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