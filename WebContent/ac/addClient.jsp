<%@ page language="java" pageEncoding="GBK"%>
<%@include file="/base/taglib.jsp" %>
<html>
<head>
	<jsp:include   page="/base/head.jsp"/>
</head>
<body class="layui-layout-body">
<div class="layui-layout layui-layout-admin">
  	<jsp:include   page="/base/header.jsp"/>
  	<c:import url="/ac/menu.jsp">
  		 <c:param name="menu" value="ac07"/>
  	</c:import>
  <div class="layui-body">
    	
    <div style="padding: 15px;">
    <form class="layui-form" lay-filter="myform" action="<%=path%>/ac/ac04Add.html" method="post">
				客户信息${empty ins.aac401?'添加':'修改' }
	<div class="layui-form-item" align="center">
		<div class="layui-inline">
			<label class="layui-form-label">客户名称</label>
				<div class="layui-input-inline">
					<input type="text" name="aac403" required lay-verify="true" value="${ins.aac403 }"
					 autofocus="autofocus" autocomplete="off" class="layui-input">
				</div>
		</div>
	</div>
	<div class="layui-form-item" align="center">
		<div class="layui-inline">
			<label class="layui-form-label">客户编号</label>
				<div class="layui-input-inline">
					<input type="text" name="aac402" required lay-verify="true" value="${ins.aac402 }"
					 readonly="readonly" autocomplete="off" class="layui-input">
				</div>
		</div>
	</div>
	<div class="layui-form-item" align="center">
		<div class="layui-inline">
			<label class="layui-form-label">性别</label>
				<div class="layui-input-inline">
					<input type="radio" name="aac404" value="1" title="男" checked>
					<input type="radio" name="aac404" value="2" title="女">
					<input type="radio" name="aac404" value="3" title="不确定">
				</div>
		</div>
	</div>
	<div class="layui-form-item" align="center">
		<div class="layui-inline">
			<label class="layui-form-label">籍贯</label>
				<div class="layui-input-inline">
					<input type="text" name="aac405" required lay-verify="true" value="${ins.aac405 }"
					 autocomplete="off" class="layui-input">
				</div>
		</div>
	</div>
	<div class="layui-form-item" align="center">
		<div class="layui-inline">
			<label class="layui-form-label">民族</label>
				<div class="layui-input-inline">
					<select name="aac406">
						<option value="1">汉族</option>
						<option value="2">蒙古族</option>
						<option value="3">回族</option>
						<option value="4">藏族</option>
					</select>
				</div>
		</div>
	</div>
	<div class="layui-form-item" align="center">
		<div class="layui-inline">
			<label class="layui-form-label">职业</label>
				<div class="layui-input-inline">
					<input type="text" name="aac413" value="${ins.aac413 }"
					 autocomplete="off" class="layui-input">
				</div>
		</div>
	</div>
	<div class="layui-form-item" align="center">
		<div class="layui-inline">
			<label class="layui-form-label">称谓</label>
				<div class="layui-input-inline">
					<input type="radio" name="aac414" value="1" title="先生" checked>
					<input type="radio" name="aac414" value="2" title="女士">
				</div>
		</div>
	</div>
	<div class="layui-form-item" align="center">
		<div class="layui-inline">
			<label class="layui-form-label">联系电话</label>
				<div class="layui-input-inline">
					<input type="text" required lay-verify="true" name="aac407" value="${ins.aac407 }"
					 autocomplete="off" class="layui-input">
				</div>
		</div>
	</div>
	<div class="layui-form-item" align="center">
		<div class="layui-inline">
			<label class="layui-form-label">邮箱</label>
				<div class="layui-input-inline">
					<input type="email" required lay-verify="true" name="aac408" value="${ins.aac408 }"
					 autocomplete="off" class="layui-input">
				</div>
		</div>
	</div>
	<div class="layui-form-item" align="center">
		<div class="layui-inline">
			<label class="layui-form-label">政治背景</label>
				<div class="layui-input-inline">
					<input type="text" required lay-verify="true" name="aac409" value="${ins.aac409 }"
					 autocomplete="off" class="layui-input">
				</div>
		</div>
	</div>
	<div class="layui-form-item" align="center">
		<div class="layui-inline">
			<label class="layui-form-label">经济状况</label>
				<div class="layui-input-inline">
					<input type="text" required lay-verify="true" name="aac410" value="${ins.aac410 }"
					 autocomplete="off" class="layui-input">
				</div>
		</div>
	</div>
	<div class="layui-form-item" align="center">
		<div class="layui-inline">
			<label class="layui-form-label">购房信息</label>
				<div class="layui-input-inline">
					<input type="text" required lay-verify="true" name="aac411" value="${ins.aac411 }"
					 autocomplete="off" class="layui-input">
				</div>
		</div>
	</div>
	<div class="layui-form-item" align="center">
		<div class="layui-inline">
			<label class="layui-form-label">资金状况</label>
				<div class="layui-input-inline">
					<input type="text" required lay-verify="true" name="aac412" value="${ins.aac412 }"
					 autocomplete="off" class="layui-input">
				</div>
		</div>
	</div>
	<div class="layui-form-item" align="center">
		<div class="layui-inline">
			<label class="layui-form-label">记录业务员</label>
				<div class="layui-input-inline">
					<input type="text" required lay-verify="true" name="aac415" value="${ins.aac415 }"
					 autocomplete="off" class="layui-input">
				</div>
		</div>
	</div>
	<div class="layui-form-item" align="center">
	<c:if test="${!empty param.aac401 }">
		<div class="layui-inline">
			<label class="layui-form-label">员工编号</label>
				<div class="layui-input-inline">
					<input type="text" required lay-verify="true" name="aac416" value="${ins.aac416 }"
					 readonly="readonly" autocomplete="off" class="layui-input">
				</div>
		</div>
	</c:if>
	</div>
	<div class="layui-form-item" align="center">	
			<input type="submit" name="next" class="layui-btn layui-btn-normal"
					value="${empty param.aac401?'添加':'修改'}"
					formaction="<%=path %>/ac/${empty param.aac401?'ac04Add.html':'ac04Modify.html' }">
			<input type="submit" name="next" value="返回" class="layui-btn layui-btn-normal"
					formaction="<%=path%>/ac/ac04Query.html"
					formnovalidate="formnovalidate">
	</div>
		<input type="hidden" name="aac401" value="${ins.aac401 }"/>
		<e:hidden name="qaac401" />
		<e:hidden name="qaac407" />
		<e:hidden name="qaac405" />
		<e:hidden name="qaac403" />
		<e:hidden name="qaac402" />
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
		  "aac404":"${ins.aac404}",
		  "aac406":"${ins.aac406}",
		  "aac414":"${ins.aac414}"
	  });
	});
</script>
</body>
</html>