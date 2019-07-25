<%@ page language="java" pageEncoding="GBK"%>
<%@include file="/base/taglib.jsp" %>
<html>
<head>
	<jsp:include   page="/base/head.jsp"/>
</head>
<body class="layui-layout-body">
<div class="layui-layout layui-layout-admin">
  	<jsp:include   page="/base/header.jsp"/>
  	<c:if test="${empty ins.aac401 }">
  	<c:import url="/ac/menu.jsp">
  		 <c:param name="menu" value="ac07"/>
  	</c:import>
  	</c:if>
  	<c:if test="${!empty ins.aac401 }">
  	<jsp:include   page="/ac/menu.jsp"/>
  	</c:if>
  <div class="layui-body">
  <div class="layui-anim layui-anim-scale"
				style="padding: 15px; margin: 30px 80px;">
				<fieldset class="layui-elem-field layui-filed-title" style="margin-top: 20px;padding-top: 20px">
					<legend> 客户信息${empty ins.aac401?'添加':'修改' }</legend>
    <form class="layui-form" lay-filter="myform" action="<%=path%>/ac/ac04Add.html" method="post">
	<div class="layui-form-item" align="center">
		<div class="layui-inline">
			<label class="layui-form-label">
			<i class="layui-icon layui-icon-face-smile" style="font-size: 20px; color: black;"></i>
			客户名称</label>
				<div class="layui-input-inline">
					<input type="text" name="aac403" required lay-verify="true" value="${ins.aac403 }"
					 autofocus="autofocus" autocomplete="off" class="layui-input">
				</div>
		</div>
		<div class="layui-inline">
			<label class="layui-form-label">
			<i class="layui-icon layui-icon-note" style="font-size: 20px; color: black;"></i>
			称&emsp;谓</label>
				<div class="layui-input-inline" >
					<input type="radio" name="aac414" value="1" title="先生" checked>
					<input type="radio" name="aac414" value="2" title="女士">
				</div>
		</div>
	</div>
	
	<div class="layui-form-item" align="left">
		<div class="layui-inline" style="padding-left:245px">
			<label class="layui-form-label">
			<i class="layui-icon layui-icon-rate-half" style="font-size: 20px; color: black;"></i>
			性&emsp;&emsp;别</label>
				<div class="layui-input-inline" style="width:230px">
					<input type="radio" name="aac404" value="1" title="男" checked>
					<input type="radio" name="aac404" value="2" title="女">
					<input type="radio" name="aac404" value="3" title="不确定">
				</div>
		</div>
	</div>
	<div class="layui-form-item" align="center">
			<div class="layui-inline">
			<label class="layui-form-label">
			<i class="layui-icon layui-icon-cellphone" style="font-size: 20px; color: black;"></i>
			联系电话</label>
				<div class="layui-input-inline" >
					<input type="text" required lay-verify="true" name="aac407" value="${ins.aac407 }"
					 autocomplete="off" class="layui-input">
				</div>
			</div>
			<div class="layui-inline">
			<label class="layui-form-label">
			<i class="layui-icon layui-icon-tree" style="font-size: 20px; color: black;"></i>
			籍&emsp;贯</label>
				<div class="layui-input-inline" >
					<input type="text" name="aac405" required lay-verify="true" value="${ins.aac405 }"
					 autocomplete="off" class="layui-input">
				</div>
			</div>
	</div>
	<div class="layui-form-item" align="center">
		<div class="layui-inline">
			<label class="layui-form-label">
			<i class="layui-icon layui-icon-component" style="font-size: 20px; color: black;"></i>
			政治背景</label>
				<div class="layui-input-inline" >
					<select name="aac409">
						<option value="群众">群众</option>
						<option value="团员">团员</option>
						<option value="党员">党员</option>
						<option value="其他">其他</option>
					</select>
				</div>
		</div>
		<div class="layui-inline">
			<label class="layui-form-label">
			<i class="layui-icon layui-icon-user" style="font-size: 20px; color: black;"></i>
			民&emsp;族</label>
				<div class="layui-input-inline" >
					<select name="aac406" lay-verify="required">
						<option value="">请选择</option>
						<option value="1">汉族</option>
						<option value="2">蒙古族</option>
						<option value="3">回族</option>
						<option value="4">藏族</option>
						<option value="5">维吾尔族</option>
						<option value="6">苗族</option>
						<option value="7">彝族</option>
					</select>
				</div>
		</div>
	</div>
	<div class="layui-form-item" align="center">
		<div class="layui-inline">
			<label class="layui-form-label">
			<i class="layui-icon layui-icon-diamond" style="font-size: 20px; color: black;"></i>
			经济状况</label>
				<div class="layui-input-inline" >
					<select name="aac410" lay-verify="required">
						<option value="">请选择</option>
						<option value="极其富有">极其富有</option>
						<option value="富有">富有</option>
						<option value="小康">小康</option>
						<option value="温饱">温饱</option>
						<option value="贫穷">贫穷</option>
						<option value="极其贫穷">极其贫穷</option>
						<option value="未知">未知</option>
					</select>
				</div>
		</div>
		<div class="layui-inline">
			<label class="layui-form-label">
			<i class="layui-icon layui-icon-templeate-1" style="font-size: 20px; color: black;"></i>
			职&emsp;业</label>
				<div class="layui-input-inline" >
					<select name="aac413">
						<option value="商人">商人</option>
						<option value="教师">教师</option>
						<option value="学生">学生</option>
						<option value="演员">演员</option>
						<option value="医生">医生</option>
						<option value="工人">工人</option>
						<option value="记者">记者</option>
						<option value="其他">其他</option>
					</select>
				</div>
		</div>
	</div>
	<div class="layui-form-item" align="center">
		<div class="layui-inline">
			<label class="layui-form-label">
			<i class="layui-icon layui-icon-list" style="font-size: 20px; color: black;"></i>
			购房信息</label>
				<div class="layui-input-inline">
					<input type="text" required lay-verify="true" name="aac411" value="${ins.aac411 }"
					 autocomplete="off" class="layui-input">
				</div>
		</div>
		<div class="layui-inline">
			<label class="layui-form-label">
			<i class="layui-icon layui-icon-link" style="font-size: 20px; color: black;"></i>
			邮&emsp;箱</label>
				<div class="layui-input-inline" >
					<input type="email" required lay-verify="true" name="aac408" value="${ins.aac408 }"
					 autocomplete="off" class="layui-input">
				</div>
		</div>
	</div>
	<div class="layui-form-item" align="center">
		<div class="layui-inline">
			<label class="layui-form-label">
			<i class="layui-icon layui-icon-dollar" style="font-size: 20px; color: black;"></i>
			资金状况</label>
				<div class="layui-input-inline">
					<input type="text" required lay-verify="true" name="aac412" value="${ins.aac412 }"
					 autocomplete="off" class="layui-input">
				</div>
		</div>
		<div class="layui-inline">
			<label class="layui-form-label" >
			<i class="layui-icon layui-icon-username" style="font-size: 20px; color: black;"></i>
			业务员</label>
				<div class="layui-input-inline">
					<input type="text" required lay-verify="true" name="aac415" value="${ins.aac415 }"
					 autocomplete="off" class="layui-input">
				</div>
		</div>
	</div>
	
	<div class="layui-form-item" align="center">
	<div class="layui-inline">
	<label class="layui-form-label">
	<i class="layui-icon layui-icon-vercode" style="font-size: 20px; color: black;"></i>
	员工编号</label>
		<div class="layui-input-inline">
			<input type="text" required lay-verify="true" name="aac416" value="${ins.aac416 }"
			  autocomplete="off" class="layui-input">
		</div>
	</div>
	<c:if test="${!empty param.aac401 }">
		<div class="layui-inline">
			<label class="layui-form-label">
			<i class="layui-icon layui-icon-template-1" style="font-size: 20px; color: black;"></i>
			客户编号</label>
				<div class="layui-input-inline">
					<input type="text" name="aac402" required lay-verify="true" value="${ins.aac402 }"
					 readonly="readonly" autocomplete="off" class="layui-input">
				</div>
		</div>
	</c:if>
	</div>
	<div class="layui-form-item" align="center">	
	<div class="layui-inline">
			<button class="layui-btn " name="next" type="submit"
			formaction="<%=path %>/ac/${empty param.aac401?'ac04Add.html':'ac04Modify.html' }">
			<c:if test="${empty ins.aac401}">
			<i class="layui-icon layui-icon-add-1"></i>添加
			</c:if>
			<c:if test="${!empty ins.aac401}">
			<i class="layui-icon layui-icon-edit"></i>修改
			</c:if>
			</button>
	</div>
	<c:if test="${!empty ins.aac401 }">
	<div class="layui-inline">
			<button class="layui-btn " name="next" type="submit" formnovalidate="formnovalidate"
			formaction="<%=path%>/ac/ac04Query.html" >
			<i class="layui-icon layui-icon-return"></i>返回
			</button>
	</div>
	</c:if>
	</div>
		<input type="hidden" name="aac401" value="${ins.aac401 }"/>
		<e:hidden name="qaac401" />
		<e:hidden name="qaac407" />
		<e:hidden name="qaac405" />
		<e:hidden name="qaac403" />
		<e:hidden name="qaac402" />
	</form>
	</fieldset>
    </div>
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
		  "aac409":"${ins.aac409}",
		  "aac410":"${ins.aac410}",
		  "aac413":"${ins.aac413}",
		  "aac414":"${ins.aac414}"
	  });
	});
</script>
</body>
</html>