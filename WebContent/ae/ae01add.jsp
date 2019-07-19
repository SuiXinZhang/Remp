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
  <h1 align="center">合同备案</h1>
    <div style="padding: 15px;">
	    <form action="" lay-filter="form" class="layui-form"  method="post">
	    <div class="layui-form-item" align="center">
		    <div class="layui-inline" >
		        	<c:if test="${!empty param.aae101 }">
						<label class="layui-form-label">合同编号</label>
						<div class="layui-input-block">
		            		<input type="text" name="aad710" readonly="readonly" value="${ins.aad710 }" lay-verify="title" autocomplete="off" class="layui-input">
		        		</div>
					</c:if>
		    </div>
	    </div>
	    <div class="layui-form-item" align="center">
	    	<div class="layui-inline">
		      	<label class="layui-form-label">承诺办理</label>
		      	<div class="layui-input-block">
		        <input name="aae102" id="date1" class="layui-input" type="text" value="${ins.aae102 }" placeholder="yyyy-MM-dd" autocomplete="off" lay-verify="date">
	      		</div>
	    	</div>
		    <div class="layui-inline">
		      	<label class="layui-form-label">承诺完成</label>
		      	<div class="layui-input-block">
		        <input name="aae103" id="date2" class="layui-input" type="text" value="${ins.aae103 }" placeholder="yyyy-MM-dd" autocomplete="off" lay-verify="date">
	      		</div>
	    	</div>
    	</div>
    	<div class="layui-form-item" align="center">
	      	<div class="layui-inline">
                    <label class="layui-form-label">办理状态</label>
                    <div class="layui-input-inline" >
				        <select name="aae104">
				          <option value="">请选择</option>
				          <option value="1">已办理</option>
				          <option value="0">未办理</option>
				        </select>
                    </div>
            </div>
		    <div class="layui-inline">
		      	<label class="layui-form-label">完成时间</label>
		      	<div class="layui-input-block">
		        <input name="aae105" id="date3" class="layui-input" id="aae105" 
		        value="${ins.aae105 }" type="text" placeholder="yyyy-MM-dd" autocomplete="off" lay-verify="date">
	      		</div>
	    	</div>
    	</div>
    	<div class="layui-form-item" align="center">
	    	<div class="layui-inline">
		      	<label class="layui-form-label">建筑面积</label>
		      	<div class="layui-input-block">
		        <input name="aae106" value="${ins.aae106 }" class="layui-input" type="number" autocomplete="off">
	      		</div>
	    	</div>
		    <div class="layui-inline">
		      	<label class="layui-form-label">业务员</label>
		      	<div class="layui-input-block">
		        <input name="aae107" value="${ins.aae107 }" class="layui-input" type="text" autocomplete="off">
	      		</div>
	    	</div>
    	</div>
    	<div class="layui-form-item" align="center">
	    	<div class="layui-inline">
		      	<label class="layui-form-label">合同备案号</label>
		      	<div class="layui-input-block">
		        <input name="aae108" class="layui-input" type="text" value="${ins.aae108 }" autocomplete="off">
	      		</div>
	    	</div>
		    <div class="layui-inline">
		      	<label class="layui-form-label">备案时间</label>
		      	<div class="layui-input-block">
		        <input name="aae109" id="date4" class="layui-input" type="text" value="${ins.aae109 }" placeholder="yyyy-MM-dd" autocomplete="off" lay-verify="date">
	      		</div>
	    	</div>
    	</div>
    	<div class="layui-form-item layui-form-text" align="center">
	    	<div class="layui-inline">
		      	<label class="layui-form-label">备注</label>
		      	<div class="layui-input-block" >
		        <textarea cols="60" name="aae110" class="layui-textarea" placeholder="请输入内容">${ins.aae110 }</textarea>
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
layui.use(['layer', 'form'], function(){
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