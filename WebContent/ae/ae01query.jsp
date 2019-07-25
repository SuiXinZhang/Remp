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
        <c:param name="menu" value="ae01"/>
     </c:import>
  <div class="layui-body">
    <div class="layui-anim layui-anim-scale"
				style="padding: 15px; margin: 30px 80px;">
				<fieldset class="layui-elem-field layui-filed-title" style="margin-top: 20px;">
					<legend>合同管理</legend>
	    <form id="action" lay-filter="form" class="layui-form" action="<%=path %>/ae01/ae01query.html" method="post">
	    <br>
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
	                    <div class="layui-input-inline" style="width: 200px;">
	                        <input type="text" value="${param.qaae402 }" name="qaad702" autocomplete="off" class="layui-input">
	                    </div>
	                </div>
	                <div class="layui-inline">
	                    <label class="layui-form-label">房间名称</label>
	                    <div class="layui-input-inline" style="width: 200px;">
	                        <input type="text" name="qaae416" value="${param.qaae416 }" autocomplete="off" class="layui-input">
	                    </div>
	                </div>
	                <input type="submit" class="layui-btn" data-type="reload" value="查询">
	        </div>
	        <div id="tableId" style="display: none">
		    <table id="idData"  lay-filter="demo">
			    <thead>
			        <tr>
			        	<td lay-data="{field:'check',width:60}"></td>
			        	<td lay-data="{field:'sort1',width:60}">序号</td>
						<td lay-data="{field:'projectname'}">客户</td>
						<td lay-data="{field:'username'}">房间</td>
						<td lay-data="{field:'userphone'}">联系电话</td>
						<td lay-data="{field:'empname'}">承诺办理时间</td>
						<td lay-data="{field:'style'}">承诺完成时间</td>
						<td lay-data="{field:'date',sort:true}">当前进程</td>
						<td lay-data="{field:'grade',sort:true}">完成时间</td>
						<td lay-data="{field:'opt',fixed:'right'}">操作</td>
			        </tr>
			    </thead>
			    <tbody>
			    <c:forEach items="${rows }" var="ins" varStatus="vs">
			        <tr>
			        	<td>
			        	<input type="checkbox" lay-skin="primary" lay-filter="check" name="modList" value="${ins.aae101 }"/>
			        	</td>
			            <td>${vs.count}</td>
			            <td>${ins.aad702 }</td>
			            <td>${ins.aaa803 }</td>
						<td>${ins.aac407 }</td>
						<td>${ins.aae102 }</td>
						<td>${ins.aae103 }</td>
						<td>${ins.snaae104 }</td>
						<td>${ins.aae105 }</td>
						<td><a class="layui-btn layui-btn-xs " href="#" onclick='modify(${ins.aae101})'>录入备案日期</a></td>
			        </tr>
			    </c:forEach>
			    </tbody>
			</table>
			 <div class="layui-form-item" align="center">
				<div class="layui-inline">
						<%-- <input class="layui-btn" name="next" type="submit" value="添加"
							formaction="<%=path %>/ae/AeSelectcontractServlet"> --%>
							<input class="layui-btn" name="next" type="submit" value="添加"
							formaction="<%=path %>/ae/aeSelectcontract.html">
						<input class="layui-btn layui-btn-disabled"  id="mod" type="submit"  value="批量修改" disabled="disabled"
							formaction="<%=path %>/ae/ae01mod.jsp">
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
function modify(id)
{
	var vform = document.getElementById("action");
	vform.action = "<%=path %>/ae/ae01findById.html?aae101="+id;
	vform.submit();
}
</script>
<script>
layui.use(['layer', 'form','element','table'], function(){
	  var element = layui.element
	  ,layer = layui.layer
	  ,form = layui.form
	  ,table = layui.table;
	  var count=0;
	  form.val('form',{
		  'qaae104':"${param.qaae104}",
	  });
		//转换静态表格
		table.init('demo', {
			limit : 10,
			page : true,
			toolbar : true,
			done : function(res, curr, count) {
				$('#tableId').css('display', 'block');
			}
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