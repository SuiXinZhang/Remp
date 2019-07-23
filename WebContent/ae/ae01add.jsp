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
	<%-- <jsp:include   page="/ae/menu.jsp"/> --%>
  <div class="layui-body">
  <h1 align="center">合同备案</h1>
    <div style="padding: 15px;">
	    <form action="" lay-filter="form" class="layui-form"  method="post">
	    <div class="layui-form-item" align="center">
		    <div class="layui-inline" >
		        	<c:if test="${!empty param.aae101 }">
						<label class="layui-form-label">合同编号</label>
						<div class="layui-input-inline">
		            		<input type="text" name="aad710" readonly="readonly" value="${ins.aad710 }" lay-verify="title" autocomplete="off" class="layui-input">
		        		</div>
					</c:if>
		    </div>
	    </div>
	    <div class="layui-form-item" align="center">
	    	<div class="layui-inline">
		      	<label class="layui-form-label">
		      	<i class="layui-icon layui-icon-date" style="font-size: 20px; color: black;"></i>承诺办理</label>
		      	<div class="layui-input-inline">
		        <input name="aae102" id="date1" class="layui-input" type="text" value="${ins.aae102 }" placeholder="yyyy-MM-dd" autocomplete="off" lay-verify="date">
	      		</div>
	    	</div>
		    <div class="layui-inline">
		      	<label class="layui-form-label">
		      	<i class="layui-icon layui-icon-date" style="font-size: 20px; color: black;"></i>承诺完成</label>
		      	<div class="layui-input-inline">
		        <input name="aae103" id="date2" class="layui-input" type="text" value="${ins.aae103 }" placeholder="yyyy-MM-dd" autocomplete="off" lay-verify="date">
	      		</div>
	    	</div>
    	</div>
    	<div class="layui-form-item" align="center">
	      	<div class="layui-inline">
                    <label class="layui-form-label">
                    <i class="layui-icon layui-icon-tips" style="font-size: 20px; color: black;"></i>办理状态</label>
                    <div class="layui-input-inline" >
				        <select name="aae104">
				          <option value="">请选择</option>
				          <option value="1">已办理</option>
				          <option value="0">未办理</option>
				        </select>
                    </div>
            </div>
		    <div class="layui-inline">
		      	<label class="layui-form-label">
		      	<i class="layui-icon layui-icon-date" style="font-size: 20px; color: black;"></i>完成时间</label>
		      	<div class="layui-input-inline">
		        <input name="aae105" id="date3" class="layui-input" id="aae105" 
		        value="${ins.aae105 }" type="text" placeholder="yyyy-MM-dd" autocomplete="off" lay-verify="date">
	      		</div>
	    	</div>
    	</div>
    	<div class="layui-form-item" align="center">
	    	<div class="layui-inline">
		      	<label class="layui-form-label">
		      	<i class="layui-icon layui-icon-tree" style="font-size: 20px; color: black;"></i>建筑面积</label>
		      	<div class="layui-input-inline">
		        <input name="aae106" value="${ins.aae106 }" class="layui-input" type="number" autocomplete="off">
	      		</div>
	    	</div>
		    <div class="layui-inline">
		      	<label class="layui-form-label">
		      	<i class="layui-icon layui-icon-user" style="font-size: 20px; color: black;"></i>业&ensp;务&ensp;员</label>
		      	<div class="layui-input-inline">
		        <input name="aae107" value="${ins.aae107 }" class="layui-input" type="text" autocomplete="off">
	      		</div>
	    	</div>
    	</div>
    	<div class="layui-form-item" align="center">
	    	<div class="layui-inline">
		      	<label class="layui-form-label">
		      	合同备案号</label>
		      	<div class="layui-input-inline">
		        <input name="aae108" class="layui-input" type="text" value="${ins.aae108 }" autocomplete="off">
	      		</div>
	    	</div>
		    <div class="layui-inline">
		      	<label class="layui-form-label">
		      	<i class="layui-icon layui-icon-date" style="font-size: 20px; color: black;"></i>备案时间</label>
		      	<div class="layui-input-inline">
		        <input name="aae109" id="date4" class="layui-input" type="text" value="${ins.aae109 }" placeholder="yyyy-MM-dd" autocomplete="off" lay-verify="date">
	      		</div>
	    	</div>
    	</div>
    	<div class="layui-form-item layui-form-text" align="center">
	    	<div class="layui-inline">
		      	<label class="layui-form-label">
		      	<i class="layui-icon layui-icon-list" style="font-size: 20px; color: black;"></i>备注</label>
		      	<div class="layui-input-inline" >
		        <textarea cols="66" name="aae110" class="layui-textarea" placeholder="请输入内容">${ins.aae110 }</textarea>
	      		</div>
	    	</div>
    	</div>
    	
    	<div class="layui-form-item" align="center">
				<div class="layui-inline">
						<input class="layui-btn" name="next" type="submit" value="${empty param.aae101?'添加':'修改' }"
							formaction="<%=path%>/ae/${empty param.aae101?'ae01Add.html?aad701=1':'ae01Modify.html'}">
						<input class="layui-btn" type="submit" value="返回"
						formaction="<%=path%>/ae/ae01query.html" formnovalidate="formnovalidate" >
				</div>
			</div>
	</form>
	</div>
  </div>
  
  <div class="layui-footer">
  </div>
</div>
<script>
layui.use(['layer', 'form','element'], function(){
	var element = layui.element;
	  var layer = layui.layer
	  ,form = layui.form;
	  form.val('form',{
		  'aae104':"${ins.aae104}",
	  })
	 
	});
	layui.use('laydate',function(){
		 var laydate = layui.laydate;
		  laydate.render({
			  elem:'#date1'
			 
		  });
		  laydate.render({
			  elem:'#date2'
			 
		  });
		  laydate.render({
			  elem:'#date3'
			 
		  });
		  laydate.render({
			  elem:'#date4',
		  });
	});
</script>
</body>
</html>