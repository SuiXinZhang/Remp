<!DOCTYPE html>
<%@ page language="java" pageEncoding="GBK"%>
<%@include file="/base/taglib.jsp" %>
<html>
<head>
	<jsp:include   page="/base/head.jsp"/>
</head>
<body class="layui-layout-body">
<div class="layui-layout layui-layout-admin">
  	<jsp:include   page="/base/header.jsp"/>
  	<c:if test="${empty ins.aac501 }">
	<c:import url="/ac/menu.jsp">
  		 <c:param name="menu" value="ac09"/>
  	</c:import>
  	</c:if>
  	<c:if test="${!empty ins.aac501 }">
  	<jsp:include   page="/ac/menu.jsp"/>
  	</c:if>
  <div class="layui-body">
    	
    <div class="layui-anim layui-anim-scale" style="padding: 15px; margin: 30px 80px;">
		<fieldset class="layui-elem-field layui-filed-title" style="margin-top: 20px;">
			<legend>客户关怀计划</legend>
			<form  lay-filter="form" class="layui-form" id="myform" method="post">
			
			<div align="left">
			<div class="layui-form-item">
				<div class="layui-inline">
					<label class="layui-form-label">业&ensp;务&ensp;员</label>
					<div class="layui-input-inline">
						<input type="tel" name="aac507" value="${ins.aac507 }" required="true"
							autocomplete="off" class="layui-input">
					</div>
				</div>
			</div>
			
			<div class="layui-form-item">
				<div class="layui-inline">
					<label class="layui-form-label">业务员编号</label>
					<div class="layui-input-inline">
						<input type="tel" name="aac503" value="${ins.aac503 }" required="true"
							 autocomplete="off" class="layui-input">
					</div>
				</div>
			</div>
	
			<div class="layui-form-item">
				<div class="layui-inline">
			    <label class="layui-form-label">发送类型</label>
			    <div class="layui-input-inline">
			      <input type="radio"  name="aac509" value="2" title="邮箱" checked="">
			      <input type="radio"  name="aac509" value="1" title="电话">
			    </div>
			    </div>
		 	</div>
		 	
		 	<div class="layui-form-item">
		 	<div class="layui-inline">
			      <label class="layui-form-label" style="width:100px">计划发送时间</label>
			      <div class="layui-input-inline">
			        <input type="text"  name="aac505" id="date" lay-verify="date" placeholder="yyyy-MM-dd hh:mm:ss"  autocomplete="off" class="layui-input">
			      </div>
    		</div>
    		</div>
				
				
			<div class="layui-form-item">
				<div class="layui-inline">
					<label class="layui-form-label" >消息主题</label>
					<div class="layui-input-inline">
						<input type="tel" name="aac502"  value="${ins.aac502 }" required="true"
							autocomplete="off" class="layui-input">
					</div>
				</div>
			</div>
			
			<div class="layui-form-item">
			<div class="layui-form-item layui-form-text">
			    <label class="layui-form-label">发送内容</label>
			    <div class="layui-input-block">
			      <textarea placeholder="请输入内容"  name="aac506" class="layui-textarea" >${ins.aac506 }</textarea>
			    </div>
  			</div>
  			</div>
	
				
	
				<c:if test="${!empty ins.aac501}">
				<div class="layui-form-item">
			    <label class="layui-form-label">发送类型</label>
			    <div class="layui-input-inline">
			      <input type="radio"  name="aac504" value="01" title="未执行">
			      <input type="radio"  name="aac504" value="02" title="已执行">
			      <input type="radio"  name="aac504" value="03" title="已废弃">
			    </div>
		 		</div>
				</c:if>
				
				
				<div class="layui-form-item" align="center">
				<c:if test="${empty ins.aac501 }">
				<div class="layui-inline">
					<button class="layui-btn " 
					formaction="<%=path %>/ac/ac05Add.html" >
					<i class="layui-icon layui-icon-add-1"></i>添加
					</button>
				</div>
				</c:if>
				<c:if test="${!empty ins.aac501 }">
				<div class="layui-inline">
					<button class="layui-btn " 
					formaction="<%=path %>/ac/ac05Query.html" >
					<i class="layui-icon layui-icon-return"></i>返回
					</button>
				</div>
				</c:if>
				</div>
			</div>
			<c:if test="${empty ins.aac501 }">
			
			<div id="tableId" style="display: none">
			
			<div class="layui-form-item">
				<div class="layui-inline">
					<label class="layui-form-label">客&ensp;户&ensp;名</label>
					<div class="layui-input-inline">
						<input type="text" name="qaac403" value="${param.qaac403 }"
						id="qaac403" autocomplete="off" class="layui-input">
					</div>
				</div>
				<div class="layui-inline">
					<label class="layui-form-label">客户编号</label>
					<div class="layui-input-inline">
						<input type="text" name="qaac402" value="${param.qaac402 }"
						id="qaac402" autocomplete="off" class="layui-input">
					</div>
				</div>
				
				<div class="layui-inline" >
				<button class="layui-btn layuiadmin-btn-useradmin"  id="search" formnovalidate="formnovalidate"
				formaction="<%=path %>/ac/ac04QueryForClient.html">
				<i class="layui-icon layui-icon-search layuiadmin-button-btn"></i>查询
				</button>
				</div>
			</div>
			
							<table id="idData" lay-data="{id: 'idTest'}"  lay-filter="demo">
								<thead>
									<tr>
										<td lay-data="{field:'aac401',width:50}"></td>
										<td lay-data="{field:'squence',width:60}">序号</td>
										<td lay-data="{field:'aac402',width:125}">客户编号</td>
										<td lay-data="{field:'aac403'}">客户名</td>
										<td lay-data="{field:'userphone'}">联系电话</td>
										<td lay-data="{field:'aac408'}">邮箱</td>
									</tr>
								</thead>
								<tbody>
									<c:choose>
										<c:when test="${rows!= null }">
											<c:forEach items="${rows }" var="ins" varStatus="vs">
												<tr>
													<td>
													<input type="checkbox" lay-skin="primary" lay-filter="check" name="idlist" value="${ins.aac401 }" ></td>
													<td>${vs.count } </td>
													<td>${ins.aac402 }</td>
													<td>${ins.aac403 }</td>
													<td>${ins.aac407 }</td>
													<td>${ins.aac408 }</td>
												</tr>
											</c:forEach>
										</c:when>

									</c:choose>
								</tbody>
							</table>
					</div>
			
			</c:if>
	</form>
			
			
		</fieldset>
	</div>
  </div>
</div>
<script src="https://cdn.staticfile.org/jquery/1.10.2/jquery.min.js"></script>
<script>
//JavaScript代码区域
	layui.use(['element','form','laydate','table','layer'], function(){
	  var element = layui.element
	  ,form = layui.form
	  ,laydate = layui.laydate
	  ,table = layui.table
	  ,layer = layui.layer;
	  
	  if("${msg }" != "")
	  {
		  layer.msg("${msg }");
	  }
	  
	  form.val('form',{
		  "aac509":"${empty param.aac501?'2':ins.aac509 }",
		  "aac504":"${ins.aac504 }",
		  "aac505":"${ins.aac505}"
	  })
	  
	  if(${!empty ins.aac501 })
		{
		  layer.msg("当前页面只读状态,对其修改无效");
		}
	  
	  //转换静态表格
		table.init('demo', {
			limit : 10,
			page : true,
			done : function(res, curr, count) {
				$('#tableId').css('display', 'block');
			}
		});
	  
	//日期时间选择器
	  laydate.render({ 
	    elem: '#date'
	    ,type: 'datetime'
	    ,trigger: 'click'
	  });
	
})	
	
</script>
</body>
</html>