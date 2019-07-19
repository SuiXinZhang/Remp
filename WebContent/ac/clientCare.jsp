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
    	
    <div class="layui-anim layui-anim-scale" style="padding: 15px; margin: 30px 80px;">
		<fieldset class="layui-elem-field layui-filed-title" style="margin-top: 20px;">
			<legend>客户关怀计划</legend>
			<form action="#" " lay-filter="form" class="layui-form" id="myform" method="post">
			
			
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
			    <label class="layui-form-label">发送类型</label>
			    <div class="layui-input-inline">
			      <input type="radio" name="aac509" value="2" title="邮箱" checked="">
			      <input type="radio" name="aac509" value="1" title="电话">
			    </div>
		 	</div>
		 	
		 	<div class="layui-form-item">
		 	<div class="layui-inline">
			      <label class="layui-form-label">发送时间</label>
			      <div class="layui-input-inline">
			        <input type="text" name="date" id="date" lay-verify="date" placeholder="yyyy-MM-dd" autocomplete="off" class="layui-input">
			      </div>
    		</div>
    		</div>
				
			<div class="layui-form-item">
				<div class="layui-inline">
					<label class="layui-form-label">消息主题</label>
					<div class="layui-input-inline">
						<input type="tel" name="aac502" value="${ins.aac502 }" required="true"
							autocomplete="off" class="layui-input">
					</div>
				</div>
			</div>
			
			
	
				<tr>
					<td>发送内容</td>
					<td><e:textarea rows="10" cols="50" name="aac506" defval="${ins.aac506 }" /></td>
				</tr>
				
				<tr>
					<td>发送时间</td>
					<td><input type="datetime-local" name="aac505" value="${ins.aac505 }"></td>
				</tr>
	
				<c:if test="${!empty ins.aac501}">
					<td>执行状态</td>
					<td><e:radio name="aac504" value="未执行:01,已执行:02,已废弃:03" readonly="true" defval="${ins.aac504 }" /></td>
				</c:if>
				<tr>
					<td colspan="2" align="center">
					<input type="submit" name="next" value="${empty ins.aac501?'添加':'修改'}"
					formaction="<%=path %>/ac/${empty ins.aac501?'ac05Add.html':'ac05Modify.html' }">
					<input type="submit" name="next2" value="返回	" 
					formaction="<%=path %>/ac/${empty ins.aac501?'ac05Add.html':'ac05Modify.html' }">
				</tr>
			</table>
			<input type="checkbox"  name="idlist" value="1" checked="checked">
			<input type="checkbox"  name="idlist" value="4" checked="checked">
			
			
			<c:if test="${empty ins.aac501 }">
			<table border="1" align="center" width="95%">
				<tr>
					<td colspan="2">发送客户条件查询</td>
					<td colspan="2" align="right"><input type="button" value="查询" onclick="login()" name="next"></td>
				</tr>
				<tr>
					<td>客户名</td>
					<td><e:text name="qaac403" id="qaac403"/></td>
					<td>客户编号</td>
					<td><e:text name="qaac402" id="qaac402"/></td>
				</tr>			
			</table>
			<table border="1" align="center" width="95%">
				<tr>
					<td></td>
					<td>客户编号</td>
					<td>客户名</td>
					<td>联系电话</td>
					<td>邮箱</td>
				</tr>
				<c:choose>
					<c:when test="${rows!= null }">
						<c:forEach items="${rows }" var="ins" varStatus="vs">
							<tr>
								<td>
								<input type="checkbox" onclick="onSelect(this.checked)" name="idlist2" value="${ins.aac401 }" >
								</td>
								<td>${ins.aac402 }</td>
								<td>
								<a href="#" onclick = "onEdit('${ins.aac401}')" >${ins.aac403 }</a>
								</td>
								<td>${ins.aac407 }</td>
								<td>${ins.aac408 }</td>
							</tr>
						</c:forEach>
						<c:forEach begin="${fn:length(rows)+1 }" end="10" step="1">
							<tr>
								<td></td>
								<td></td>
								<td></td>
								<td></td>
								<td></td>
							</tr>
						</c:forEach>
					</c:when>
					<c:otherwise>
						<c:forEach begin="1" end="10" step="1">
							<tr>
								<td></td>
								<td></td>
								<td></td>
								<td></td>
								<td></td>
							</tr>
						</c:forEach>
					</c:otherwise>
				</c:choose>
			</table>
			</c:if>
	</form>
			
			
		</fieldset>
	</div>
  </div>
  
  <div class="layui-footer">
    <!-- 底部固定区域 -->
  </div>
</div>
<script >
function login() {
    $.ajax({
    //几个参数需要注意一下
        type: "POST",//方法类型
        dataType: "json",//预期服务器返回的数据类型
        url: "<%=path%>/getClientGroupServlet" ,//url
        cache:false,
        ansyc:true,
        data:{
        	qaac403:encodeURIComponent(JSON.stringify($("#qaac403").val().trim()),"utf-8"),
        	qaac402:encodeURIComponent(JSON.stringify($("#qaac402").val().trim()),"utf-8")
        },
        contentType: "application/x-www-form-urlencoded; charset=UTF-8",
        success: function (result) {
           	console.log(result);//打印服务端返回的数据(调试用)
           	${rows = result}
            if (result.resultCode == 200) 
            {
                alert("SUCCESS");
            };
        },
        error : function() {
            alert("异常！");
        }
    });
}
</script>
<script>
//JavaScript代码区域
	layui.use(['element','form'], function(){
	  var element = layui.element
	  ,form = layui.form;
	  
	  form.val('form',{
		  "aac509":"${empty ins.aac501?'2':ins.aac509 }"
	  })
	  
	});
</script>
</body>
</html>