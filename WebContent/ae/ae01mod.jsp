<%@ page language="java" pageEncoding="GBK"%>
<%@page import="java.util.Map"%>
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
    <h1>合同备案</h1>
    <div style="padding: 15px;">
    <form action="<%=path%>/ae/ae01modifyList.html" class="layui-form"  method="post">
		 <div class="layui-form-item" align="center">
		    <div class="layui-inline" >
				<label class="layui-form-label">办理状态</label>
				<div class="layui-input-block">
            		<e:select name="aae104" value="未办理:0,已办理:1" defval="0"/>
        		</div>
		    </div>
	     </div>
	     <div class="layui-form-item" align="center">
	    	<div class="layui-inline">
		      	<label class="layui-form-label">完成时间</label>
		      	<div class="layui-input-block">
		        <input name="aae105" id="date1" class="layui-input" required="true" type="text" placeholder="yyyy-MM-dd" autocomplete="off" lay-verify="date">
	      		</div>
	    	</div>
	    </div>
	    <div class="layui-form-item" align="center">
	    	<div class="layui-inline">
		      	<label class="layui-form-label">业务员</label>
		      	<div class="layui-input-block">
		        <input name="aae107" class="layui-input" required="true" type="text" >
	      		</div>
	    	</div>
	    </div>
	    <div class="layui-form-item" align="center">
	    	<div class="layui-inline">
		      	<label class="layui-form-label">备案时间</label>
		      	<div class="layui-input-block">
		        <input name="aae109" id="date2" class="layui-input" required="true" type="text" placeholder="yyyy-MM-dd" autocomplete="off" lay-verify="date">
	      		</div>
	    	</div>
	    </div>
		<div class="layui-form-item" align="center">
	    	<div class="layui-inline">
		      	<label class="layui-form-label">备注</label>
		      	<div class="layui-input-block">
		        <textarea name="aae110" cols="60" class="layui-textarea" required="true" type="text">
		        </textarea>
	      		</div>
	    	</div>
	    </div>
	     <div class="layui-form-item" align="center">
				<div class="layui-inline">
						<input class="layui-btn" name="next" type="submit" value="批量备案">
						<input class="layui-btn" type="submit" value="返回"
						formaction="<%=path%>/ae/ae01query.html" formnovalidate="formnovalidate" >
				</div>
			</div>
		<%Map<String,String[]> map = request.getParameterMap();
		String[] idList = map.get("modList");%>
		<c:forEach items="<%=idList %>" var="ins" >
			<input type="hidden" name="IdList" value="${ins }">
		</c:forEach>
		
	</form>
</div>
  </div>
  
  <div class="layui-footer">
  </div>
</div>
<script>
//JavaScript代码区域
layui.use(['layer', 'form','element'], function(){
		var element = layui.element;
	  	var layer = layui.layer
	  	,form = layui.form;
	});
layui.use('laydate',function(){
	 var laydate = layui.laydate;
	  laydate.render({
		  elem:'#date1'
		 
	  });
	  laydate.render({
		  elem:'#date2'
		 
	  });
});
</script>
</body>
</html>