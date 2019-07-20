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
	    <form id="action" lay-filter="form" class="layui-form" action="<%=path %>/ae/ae02query.html" method="post">
	     <h1 align="center">贷款管理</h1>
	        <hr>
	        <div class="layui-form-item" align="center">
	        		<div class="layui-inline">
	                    <label class="layui-form-label">办理状态</label>
	                    <div class="layui-input-inline" >
					        <select name="qaae218">
					          <option value="">请选择</option>
					          <option value="02">已办理</option>
					          <option value="01">未办理</option>
					        </select>
	                    </div>
	                </div>
	                <div class="layui-inline">
	                    <label class="layui-form-label">客户姓名</label>
	                    <div class="layui-input-inline" style="width: 200px;">
	                        <input type="text" value="${param.qaae202 }" name="qaae202" autocomplete="off" class="layui-input">
	                    </div>
	                </div>
	                <input type="submit" class="layui-btn" data-type="reload" value="查询">
	        </div>
		    <table class="layui-table">
			    <thead>
			        <tr>
			        	<td></td>
						<td>序号</td>
						<td>客户</td>
						<td>房间</td>
						<td>联系电话</td>
						<td>承诺办理</td>
						<td>承诺完成</td>
						<td>当前进程</td>
						<td></td>
			        </tr>
			    </thead>
			    <tbody>
			    <c:forEach items="${rows }" var="ins" varStatus="vs">
			        <tr>
			        	<td><input type="checkbox" lay-skin="primary" lay-filter="check" name="IdList" value="${ins.aae201 }"
									onclick='onSelect(this.checked)'/></td>
						<td>${vs.count}</td>
						<td>${ins.aae202 }</td>
						<td>${ins.aae204 }</td>
						<td>${ins.aae203 }</td>
						<td>${ins.aae214 }</td>
						<td>${ins.aae215 }</td>
						<td>${ins.snaae218 }</td>
						<td><a href="#" onclick='modify(${ins.aae201})'>查看明细</a></td>
		        </tr>
			    </c:forEach>
			    </tbody>
			</table>
			 <div class="layui-form-item" align="center">
				<div class="layui-inline">
						<input class="layui-btn" name="next" type="submit" value="添加"
							formaction="<%=path %>/ae/ae02add.jsp">
						<input class="layui-btn layui-btn-disabled"  id="mod" type="submit"  value="批量修改" disabled="disabled"
							formaction="<%=path %>/ae/ae02mod.jsp">
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
	vform.action = "<%=path %>/ae/ae02findById.html?aae201="+id;
	vform.submit();
}
</script>
<script>
layui.use(['layer', 'form','element'], function(){
		var element = layui.element;
	  var layer = layui.layer
	  ,form = layui.form;
	  var count=0;
	  form.val('form',{
		  'qaae218':"${param.qaae218}",
	  });
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