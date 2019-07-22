<%@ page language="java" pageEncoding="GBK"%>
<%@include file="/base/taglib.jsp" %>
<html>
<head>
	<jsp:include   page="/base/head.jsp"/>
</head>
<body class="layui-layout-body">
<div class="layui-layout layui-layout-admin">
  	<jsp:include   page="/base/header.jsp"/>
	<jsp:include   page="/ac/menu.jsp"/>
  <div class="layui-body">
    	
    <div style="padding: 15px;">
    <form class="layui-form" lay-filter="myform" action="<%=path%>/ac/ac03Add.html" id="form" method="post">
				客户跟进${empty ins.aac301?'添加':'修改' }

	<div class="layui-form-item" align="center">
		<div class="layui-inline">
			<label class="layui-form-label">客户名称</label>
				<div class="layui-input-inline">
					<input type="text" name="aac403" required lay-verify="true" value="${empty param.aac401?ins.aac403:param.aac403 }"
					 readonly="readonly" autocomplete="off" class="layui-input">
				</div>
		</div>
	</div>
	<div class="layui-form-item" align="center">
		<div class="layui-inline">
			<label class="layui-form-label">客户编号</label>
				<div class="layui-input-inline">
					<input type="text" name="aac402" required lay-verify="true" value="${empty param.aac401?ins.aac402:param.aac402 }"
					 readonly="readonly" autocomplete="off" class="layui-input">
				</div>
		</div>
	</div>
	<div class="layui-form-item" align="center">
		<div class="layui-inline">
			<label class="layui-form-label">跟进状态</label>
				<div class="layui-input-inline">
					<select name="aac304">
						<option value="01" selected="selected">未跟进</option>
						<option value="02">已跟进</option>
						<option value="03">待再次跟进</option>
					</select>
				</div>
		</div>
	</div>
	<div class="layui-form-item" align="center">
		<div class="layui-inline">
			<label class="layui-form-label">跟进内容</label>
				<div class="layui-input-inline">
					<textarea name="aac303" required lay-verify="true"
					 class="layui-textarea">${ins.aac303 }</textarea>
				</div>
		</div>
	</div>

	<div class="layui-form-item" align="center">
		<div class="layui-inline">
			<label class="layui-form-label">跟进时间</label>
				<div class="layui-input-inline">
					<input type="text" name="aac305" id="date" required lay-verify="true" value="${ins.aac305 }"
					 autocomplete="off" class="layui-input">
				</div>
		</div>
	</div>
	<div class="layui-form-item" align="center">
		<div class="layui-inline">
			<label class="layui-form-label">跟进业务员</label>
				<div class="layui-input-inline">
					<input type="text" name="aac306" required lay-verify="true" value="${ins.aac306 }"
					 autocomplete="off" class="layui-input">
				</div>
		</div>
	</div>
	<div class="layui-form-item" align="center">
		<div class="layui-inline">
			<label class="layui-form-label">员工编号</label>
				<div class="layui-input-inline">
					<input type="text" name="aac307" required lay-verify="true" value="${ins.aac307 }"
					 autocomplete="off" class="layui-input">
				</div>
		</div>
	</div>
			
	<div class="layui-form-item" align="center">
	<div class="layui-inline">			
			<button class="layui-btn " name="next" type="submit"
			formaction="<%=path %>/ac/${empty ins.aac301?'ac03Add.html':'ac03Modify.html' }"  >
			<c:if test="${empty ins.aac301}">
			<i class="layui-icon layui-icon-add-1"></i>添加
			</c:if>
			<c:if test="${!empty ins.aac301}">
			<i class="layui-icon layui-icon-edit"></i>修改
			</c:if>
			</button>
	</div>
	<div class="layui-inline">
	<c:if test="${empty ins.aac301 }">
	<button class="layui-btn " name="next" type="submit" formnovalidate="formnovalidate"
			formaction="<%=path %>/ac/ac04Query.html" >	
			<i class="layui-icon layui-icon-return"></i>返回
	</button>
	</c:if>
	<c:if test="${!empty ins.aac301 }">
	<button class="layui-btn " name="next" type="submit" formnovalidate="formnovalidate"
		formaction="<%=path %>/ac/ac03Query.html" >
			<i class="layui-icon layui-icon-return"></i>返回
		</button>
	</c:if>

	</div>
	</div>				
		<input type="hidden" name="aac301" value="${ins.aac301 }"> 
		<input type="hidden" name="aac401" value="${empty param.aac401?ins.aac401:param.aac401 }">
		<e:hidden name="qaac301" />
		<e:hidden name="qaac307" />
		<e:hidden name="qaac305" />
		<e:hidden name="qaac303" />
		<e:hidden name="qaac302" />
	</form>
    </div>
  </div>
  
  <div class="layui-footer">
    <!-- 底部固定区域 -->
  </div>
</div>
<script>
//JavaScript代码区域
	layui.use(['layer', 'form','element'], function(){
	  var layer = layui.layer
	  ,form = layui.form
	  ,element = layui.element;
	  if("${msg }" != "")
	  {
		  layer.msg("${msg }");
	  }
	  form.val('myform',{
		  "aac304":"${ins.aac304}"
	  });
	});
	layui.use('laydate', function(){
		  var laydate = layui.laydate;
		 
		  //执行一个laydate实例
		  laydate.render({
		    elem: '#date',  //指定元素
		    trigger: 'click'
		  });
		});
</script>
</body>
</html>