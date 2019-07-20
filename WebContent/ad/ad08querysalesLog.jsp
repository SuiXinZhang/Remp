<%@ page language="java" pageEncoding="GBK"%>
<%@include file="/base/taglib.jsp" %>
<html>
<head>
	<jsp:include   page="/base/head.jsp"/>
</head>
<body class="layui-layout-body">
<div class="layui-layout layui-layout-admin">
  	<jsp:include   page="/base/header.jsp"/>
	<jsp:include   page="/ad/menu.jsp"/>
  <div class="layui-body">
    <!-- 内容主体区域 -->
    <div style="padding: 15px;">
    <form id="myform" class="layui-form" action="<%=path %>/ad/ad08querysalesLog.html" method="post">
	<div class="layui-form-item" align="center">
			<div class="layui-inline">
				<label class="layui-form-label">销售周期</label>
				<div class="layui-input-inline">
					<input type="text" name="qaad815" value="${param.qaad815 }" id="date"
					 autocomplete="off" class="layui-input">
				</div>
			</div>
	<table class="layui-table" lay-even lay-skin="nob">
	  <tr>
	    <td></td>
	    <td>序号</td>
	    <td>来电总数</td>
	    <td>来访总数</td>
	    <td>预约排号数</td>
	    <td>小订套数</td>
	    <td>认购套数</td>
	    <td>签约套数</td>
	    <td>广告分析</td>
	    <td>业务表现</td>
	    <td>填写人</td>
	  </tr>
	  <c:choose>
	     <c:when test="${rows!=null }">
	         <!-- 显示实际查询到的数据 -->
		     <c:forEach items="${rows }" var="ins" varStatus="vs">
	    	   	  <tr>
				    <td></td>
				    <td>${vs.count }</td>
				    <td>${ins.aad802}</td>
				    <td>${ins.aad803 }</td>
				    <td>${ins.aad804 }</td>
				    <td>${ins.aad806 }</td>
				    <td>${ins.aad807 }</td>
				    <td>${ins.aad808 }</td>
				    <td>${ins.aad812 }</td>
				    <td>${ins.aad813 }</td>
				    <td><a href="#" onclick="onSelect('${ins.aad801}')">修改</a></td>
				  </tr>
		      </c:forEach>
		      <!-- 补充空行 -->
		      <c:forEach begin="${fn:length(rows)+1 }" step="1" end="6">
			          <tr>
			            <td></td>
			            <td></td>
			            <td></td>
			            <td></td>
			            <td></td>
			            <td></td>
			            <td></td>
			            <td></td>
			            <td></td>
			            <td></td>
			            <td></td>
			          </tr>
		      </c:forEach>
	     </c:when>
	     <c:otherwise>
	        <c:forEach begin="1" step="1" end="3">
	           <tr>
	             <td></td>
	             <td></td>
	             <td></td>
	             <td></td>
	             <td></td>
	             <td></td>
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
	<div class="layui-form-item" align="center">
	       <input type="submit" class="layui-btn layui-btn-normal" name="next" value="查询">
	 </div>
</form>
    </div>
  </div>
  
  <div class="layui-footer">
    <!-- 底部固定区域 -->
    ? layui.com - 底部固定区域
  </div>
</div>
<script ></script>
<script>
//JavaScript代码区域
	layui.use(['layer', 'form','element'], function(){
	  var layer = layui.layer
	     ,form = layui.form
	  ,element = layui.element;
	  if("${msg }" != "")
		{
			layer.msg('${msg }');	  
		}
	});
	function onSelect(vaad801)
    {
  	 var vform = document.getElementById("myform");
  	 vform.action="<%=path%>/ad/ad08findById.html?aad801="+vaad801;
  	 vform.submit();
    }
	layui.use('laydate', function(){
		  var laydate = layui.laydate;
		 
		  //执行一个laydate实例
		  laydate.render({
		    elem: '#date'  //指定元素
		  });
		});
</script>
</body>
</html>