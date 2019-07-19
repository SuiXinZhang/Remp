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
    <h1>��ﱸ��</h1>
    <div style="padding: 15px;">
    <form action="<%=path%>/ae/ae04mod.html" class="layui-form"  method="post">
    	<div class="layui-form-item" align="center">
		    <div class="layui-inline" >
				<label class="layui-form-label">����״̬</label>
				<div class="layui-input-block">
            		<e:select name="aae415" value="δ����:01,�Ѱ���:02" defval="01"/>
        		</div>
		    </div>
	     </div>
	     <div class="layui-form-item" align="center">
	    	<div class="layui-inline">
		      	<label class="layui-form-label">���ʱ��</label>
		      	<div class="layui-input-block">
		        <input name="aae413" id="date1" class="layui-input" required="true" type="text" placeholder="yyyy-MM-dd" autocomplete="off" lay-verify="date">
	      		</div>
	    	</div>
	    </div>
	    <div class="layui-form-item" align="center">
	    	<div class="layui-inline">
		      	<label class="layui-form-label">ҵ��Ա</label>
		      	<div class="layui-input-block">
		        <input name="aae414" class="layui-input" required="true" type="text" >
	      		</div>
	    	</div>
	    </div>
		<div class="layui-form-item" align="center">
	    	<div class="layui-inline">
		      	<label class="layui-form-label">��ע</label>
		      	<div class="layui-input-block">
		        <textarea name="aae415" cols="60" class="layui-textarea" required="true" type="text">
		        </textarea>
	      		</div>
	    	</div>
	    </div>
	     <div class="layui-form-item" align="center">
				<div class="layui-inline">
						<input class="layui-btn" name="next" type="submit" value="��������">
						<input class="layui-btn" type="submit" value="����"
						formaction="<%=path%>/ae/ae04query.html" formnovalidate="formnovalidate" >
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
//JavaScript��������
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