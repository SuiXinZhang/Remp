<%@ page language="java" pageEncoding="GBK"%>
<%@include file="/base/taglib.jsp" %>
<html>
<head>
	<jsp:include   page="/base/head.jsp"/>
<script>
     //JavaScript代码区域	
	//一般直接写在一个js文件中
	layui.use(['layer', 'form','element'], function(){
	  var layer = layui.layer
	  ,form = layui.form
	  ,element = layui.element;
	  if("${msg }" != "")
		{
			layer.msg('${msg }');	  
		}
	  form.val('myform',{
		  "oaad112":"${ins.aad112}",
		  "oaad102":"${ins.aad102}"
		  
	  });
	});
	layui.use('laydate', function(){
		  var laydate = layui.laydate;
		 
		  //执行一个laydate实例
		  laydate.render({
		    elem: '#date1'  //指定元素
		  });
		  laydate.render({
			elem: '#date2'  //指定元素
			  });
		  laydate.render({
			elem: '#date3'  //指定元素
			  });
		});
	function selectRoom(e)
	{
		layer.open({
			 type: 2
			,title: '房间选择'
			,area:['800px', '500px']
			,maxmin: true
			,content: '<%=path%>/base/room.html'
			,btn: ['确定','关闭'],
			yes: function(index){
				var res = window["layui-layer-iframe" + index].callbackdata();
				//打印返回的值，看是否有我们想返回的值
				console.log(res);
				$("#room").attr("value",res[0])
				$("#roomNo").attr("value",res[1])
				layer.close(index);
				}
			});  
	}
</script>
</head>
<body class="layui-layout-body">
<div class="layui-layout layui-layout-admin">
  	<jsp:include   page="/base/header.jsp"/>
	<c:import url="/ad/menu.jsp">
        <c:param name="menu" value="ad01"/>
     </c:import>
  <div class="layui-body">
    <!-- 内容主体区域 -->
    <div class="layui-anim layui-anim-scale" style="padding: 15px; margin:50px 100px;">
    <fieldset class="layui-elem-field">
 	<legend style="color:black"><h2>${empty param.aad101?'添加':'修改' }预约</h2></legend>
  		<div class="layui-field-box">
	<form lay-filter="myform" class="layui-form" action="<%=path %>/ad/ad01addOrder.html" method="post">
	    <div class="layui-form-item" align="center">
			<div class="layui-inline">
				<label class="layui-form-label">
					<i class="layui-icon layui-icon-face-smile" style="font-size: 20px; color: black;"></i>
					项目名称
				</label>
				<div class="layui-input-inline">
					<%-- <input type="text" name="oaad102" required lay-verify="true" value="${ins.aad102 }"
					 autocomplete="off" class="layui-input"> --%>
					<select name="oaad102" required>
						<c:forEach items='<%=session.getAttribute("prjs")%>' var="ins">
							<option value="${ins.aaa202 }">${ins.aaa202 }</option>
						</c:forEach>
					</select>
				</div>
			</div>
			<div class="layui-inline">
				<label class="layui-form-label">
					<i class="layui-icon layui-icon-username" style="font-size: 20px; color: black;"></i>
					客户名称
				</label>
				<div class="layui-input-inline">
					<input type="text" name="oaad103" required lay-verify="true" value="${ins.aad103 }"
							 autocomplete="off" class="layui-input">
				</div>
			</div>
		</div>
		<div class="layui-form-item" align="center">
			<div class="layui-inline">
				<label class="layui-form-label">
					<i class="layui-icon layui-icon-date" style="font-size: 20px; color: black;"></i>
					预约日期
				</label>
				<div class="layui-input-inline">
					<input type="text" name="oaad105" required lay-verify="true" value="${ins.aad105 }"
					    id="date1" autocomplete="off" class="layui-input">
				</div>
			</div>
			<div class="layui-inline">
				<label class="layui-form-label">
					<i class="layui-icon layui-icon-date" style="font-size: 20px; color: black;"></i>
					失效日期
				</label>
				<div class="layui-input-inline">
					<input type="text" name="oaad106" required lay-verify="true" value="${ins.aad106 }"
						id="date2" autocomplete="off" class="layui-input">
				</div>
			</div>
		</div>
		<div class="layui-form-item" align="center">
			<div class="layui-inline">
				<label class="layui-form-label">
					<i class="layui-icon layui-icon-home" style="font-size: 20px; color: black;"></i>
					房间号码
				</label>
				<div class="layui-input-inline">
					<input id="room" type="text" name="oaad110" required lay-verify="true" value="${ins.aad110 }"
					   onclick="selectRoom()" readonly="readonly" class="layui-input">
					<input id="roomNo" type="hidden" name="aaa801" value="${ins.aaa801 }">
				</div>
			</div>
			<div class="layui-inline">
				<label class="layui-form-label">
					<i class="layui-icon layui-icon-rmb" style="font-size: 20px; color: black;"></i>
					应收金额
				</label>
				<div class="layui-input-inline">
					<input type="number" step="0.01" name="oaad111" required lay-verify="true" 
					     value="${ins.aad111 }" autocomplete="off" class="layui-input">
				</div>
			</div>
		</div>
		<div class="layui-form-item" align="center">
			<div class="layui-inline">
				<label class="layui-form-label">
					<i class="layui-icon layui-icon-dollar" style="font-size: 20px; color: black;"></i>
					币&#8195;&#8195;种
				</label>
				<div class="layui-input-inline">
					<select name="oaad112" required="required">
						<option value="01">人民币</option>
						<option value="02">美元</option>
						<option value="03">英镑</option>
						<option value="04">日元</option>
						<option value="05">欧元</option>
					</select>
				</div>
			</div>
			<div class="layui-inline">
				<label class="layui-form-label">
					<i class="layui-icon layui-icon-rmb" style="font-size: 20px; color: black;"></i>
					实收金额
				</label>
				<div class="layui-input-inline">
					<input type="number" step="0.01" name="oaad113" required lay-verify="true" 
					 value="${ins.aad113 }" autocomplete="off" class="layui-input">
				</div>
			</div>
		</div>
		<div class="layui-form-item" align="center">
			<div class="layui-inline">
				<label class="layui-form-label">
					<i class="layui-icon layui-icon-username" style="font-size: 20px; color: black;"></i>
					权&ensp;益&ensp;人
				</label>
				<div class="layui-input-inline">
					<input type="text" name="oaad109" required lay-verify="true" value="${ins.aad109 }"
							 autocomplete="off" class="layui-input">
				</div>
			</div>
			<div class="layui-inline">
				<label class="layui-form-label">
					<i class="layui-icon layui-icon-username" style="font-size: 20px; color: black;"></i>
					业&ensp;务&ensp;员
				</label>
				<div class="layui-input-inline">
					<input type="text" name="oaad114" required lay-verify="true" value="${ins.aad114 }"
					 autocomplete="off" class="layui-input">
				</div>
			</div>
		</div>
		<div class="layui-form-item" align="center">
			<c:if test="${!empty param.aad101 }">
			<div class="layui-inline">
				<label class="layui-form-label">
					<i class="layui-icon layui-icon-release" style="font-size: 20px; color: black;"></i>
					实际排号
				</label>
					<div class="layui-input-inline">
						<input type="text" name="oaad104" value="${ins.aad104 }"
							 autocomplete="off" class="layui-input">
					</div>
				</div>
			<div class="layui-inline">
				<label class="layui-form-label">
					<i class="layui-icon layui-icon-release" style="font-size: 20px; color: black;"></i>
					房间排号
				</label>
					<div class="layui-input-inline">
						<input type="text" name="oaad108" value="${ins.aad108 }"
							 autocomplete="off" class="layui-input">
					</div>
				</div>
			</c:if>
		</div>
		<div class="layui-form-item" align="center">
			<c:if test="${!empty param.aad101 }">
				<div class="layui-inline">
				<label class="layui-form-label">
					<i class="layui-icon layui-icon-survey" style="font-size: 20px; color: black;"></i>
					退号原因
				</label>
					<div class="layui-input-inline">
						<input type="text" name="aad203" value="${ins.aad203 }"
							 autocomplete="off" class="layui-input">
					</div>
				</div>
				<div class="layui-inline">
				<label class="layui-form-label">
					<i class="layui-icon layui-icon-date" style="font-size: 20px; color: black;"></i>
					退号日期
				</label>
					<div class="layui-input-inline">
						<input type="text" id="date3" name="aad202" value="${ins.aad202 }"
							 autocomplete="off" class="layui-input">
					</div>
				</div>
			</c:if>
	   </div>
	   <div class="layui-form-item layui-form-text" align="center">
			<div class="layui-inline">
				<label class="layui-form-label">
					<i class="layui-icon layui-icon-edit" style="font-size: 20px; color: black;"></i>
					备&#8195;&#8195;注
				</label>
				<div class="layui-input-inline">
					<textarea cols="66" name="oaad115" class="layui-textarea" placeholder="请输入内容">${ins.aad115 }</textarea>
				</div>
			</div>
	   </div>
       <div class="layui-form-item" align="center">
       <c:choose>
       <c:when test="${ins.aad116=='已退号'||ins.aad116=='已失效'}">
       <input type="submit" name="next" value="${empty param.aad101?'添加':'修改'}" class="layui-btn layui-btn-normal layui-btn-disabled"
              disabled="disabled" formaction="${empty param.aad101?'ad01addOrder':'ad01modifyOrder'}.html">
       <input type="submit" name="text" value="退号"  class="layui-btn layui-btn-normal layui-btn-disabled"
              disabled="disabled" formaction="<%=path%>/ad/ad02addWithdrawOrder.html">
       </c:when>
       <c:otherwise>
       <input type="submit" name="next" value="${empty param.aad101?'添加':'修改'}" class="layui-btn layui-btn-normal"
              formaction="${empty param.aad101?'ad01addOrder':'ad01modifyOrder'}.html">
       <c:if test="${!empty param.aad101 }">
       <input type="submit" name="text" value="退号"  class="layui-btn layui-btn-normal"
              formaction="<%=path%>/ad/ad02addWithdrawOrder.html">
       </c:if>
       </c:otherwise>
       </c:choose>
       <input type="submit" name="next" value="${empty param.aad101?'查看':'返回' }" 
              formaction="<%=path%>/ad/ad01queryOrder.html" class="layui-btn layui-btn-normal"
              formnovalidate="formnovalidate">
       </div>
<input type="hidden" name="aad101" value="${param.aad101 }">
<input type="hidden" name="oaac401" value="${ins.aac401 }">
<input type="hidden" name="oaad107" value="${ins.aad107 }">
							  
</form>
</div>
</fieldset>
    </div>
  </div>

</div>
</body>
</html>