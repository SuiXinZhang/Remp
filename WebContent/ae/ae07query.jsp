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
	    <form id="action" lay-filter="form" class="layui-form" action="<%=path %>/ae/ae07query.html" method="post">
	     <h1 align="center">面积补差</h1>
	        <hr>
	        <div class="layui-form-item" align="center">
	        	<<!-- div class="layui-inline">
	        		<label class="layui-form-label">执行状态</label>
	        		 <div class="layui-input-inline" style="width: 200px;">
	        		 	<select name="qaae704">
	        		 		<option value="">请选择</option>
	        		 		<option value="01">未执行</option>
	        		 		<option value="02">已执行</option>
	        		 	</select> 
	        		 </div>
	        	</div> -->
                <div class="layui-inline">
                    <label class="layui-form-label">客户姓名</label>
                    <div class="layui-input-inline" style="width: 200px;">
                        <input type="text" value="${param.qaae707 }" name="qaae707" autocomplete="off" class="layui-input">
                    </div>
                </div>
                <div class="layui-inline">
                    <label class="layui-form-label">房间名称</label>
                    <div class="layui-input-inline" style="width: 200px;">
                        <input type="text" value="${param.qaae709 }" name="qaae709" autocomplete="off" class="layui-input">
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
						<td>合同面积</td>
						<td>实际面积</td>
						<td>办理状态</td>
						<td></td>
			        </tr>
			    </thead>
			    <tbody>
			    <c:forEach items="${rows }" var="ins" varStatus="vs">
			        <tr>
			        	<td><input type="checkbox" lay-skin="primary" lay-filter="check"  name="IdList" class="layui-input"
			        	value="${ins.aae701 }" onclick='onSelect(this.checked)' /></td>
						<td>${vs.count}</td>
						<td>${ins.aae707 }</td>
						<td>${ins.aae709 }</td>
						<td>${ins.aae702 }</td>
						<td>${ins.aae703 }</td>
						<td>${ins.snaae704 }</td>
						<td><a href="#" onclick='execute(${ins.aae701})'>执行补差</a></td>
		        	</tr>
			    </c:forEach>
			    </tbody>
			</table>
			 <div class="layui-form-item" align="center">
				<div class="layui-inline">
						<input class="layui-btn" name="next" type="submit" value="添加"
							formaction="<%=path %>/ae/ae07addpage.html">
						<input class="layui-btn layui-btn-disabled"  id="mod" type="submit"  value="批量办理" disabled="disabled"
						formaction="<%=path %>/ae/ae07mod.html">
						<input class="layui-btn" type="submit"  value="查看补差"
						formaction="<%=path %>/ae/ae05query.html">
				</div>
			</div>
		</form>
	</div>
  </div>
  
  <div class="layui-footer">
  </div>
</div>
<script type="text/javascript">
	function execute(id)
	{
		var vform = document.getElementById("action");
		vform.action = "<%=path %>/ae/ae07execute.html?aae701="+id;
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