<%@ page language="java" pageEncoding="GBK"%>
<%@include file="/base/taglib.jsp" %>
<html>
<head>
	<jsp:include   page="/base/head.jsp"/>
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
	</script>
	<script type="text/javascript">
	var count=0;
    
    function onConfirm(vaaa801)
    {
  	 var vform = document.getElementById("myform");
  	 vform.action='<%=path%>/ad/ad03confirm.html?aaa801='+vaaa801;
  	 //alert(vform.action);
  	 vform.submit();
    } 
    function onReserve(vaaa801)
    {
  	 var vform = document.getElementById("myform");
  	 vform.action='<%=path%>/ad/ad05turnReserve.html?aaa801='+vaaa801;
  	 //alert(vform.action);
  	 vform.submit();
    } 
	</script>
</head>
<body class="layui-layout-body">
<div class="layui-layout layui-layout-admin">
  	<jsp:include   page="/base/header.jsp"/>
	<jsp:include   page="/ad/menu.jsp"/>
  <div class="layui-body">
    <!-- 内容主体区域 -->
    <div style="padding: 15px;">
<form lay-filter="myform" id="myform" class="layui-form" action="<%=path %>/ad/adqueryRoom.html" method="post">
    	<div class="layui-form-item" align="center">
			<div class="layui-inline">
				<label class="layui-form-label">建筑总价[B]</label>
				<div class="layui-input-inline">
					<input type="text" name="baaa809" autocomplete="off" class="layui-input">
				</div>
			</div>
			<div class="layui-inline">
				<label class="layui-form-label">建筑总价[E]</label>
				<div class="layui-input-inline">
					<input type="text" name="eaaa809" autocomplete="off" class="layui-input">
				</div>
			</div>
		</div>
		<div class="layui-form-item" align="center">
			<div class="layui-inline">
				<label class="layui-form-label">建筑面积[B]</label>
				<div class="layui-input-inline">
					<input type="text" name="baaa505" autocomplete="off" class="layui-input">
				</div>
			</div>
			<div class="layui-inline">
				<label class="layui-form-label">建筑面积[E]</label>
				<div class="layui-input-inline">
					<input type="text" name="eaaa505" autocomplete="off" class="layui-input">
				</div>
			</div>
		</div>
		<div class="layui-form-item" align="center">
			<div class="layui-inline">
				<label class="layui-form-label">户型</label>
				<div class="layui-input-inline">
					<select name="qaaa502">
						<option value="">不限定</option>
						<option value="A">A</option>
 						<option value="B">B</option>
 						<option value="C">C</option>
					</select>
				</div>
			</div>
			<div class="layui-inline">
				<label class="layui-form-label">房间结构</label>
				<div class="layui-input-inline">
					<select name="qaaa504">
						<option value="">不限定</option>
						<option value="两房两厅一卫">两房两厅一卫</option>
 						<option value="两房两厅两卫">两房两厅两卫</option>
 						<option value="三室一厅一卫">三室一厅一卫</option>
					</select>
				</div>
			</div>
		</div>
		<div class="layui-form-item" align="center">
			<div class="layui-inline">
				<label class="layui-form-label">状态</label>
				<div class="layui-input-inline">
					<select name="qaaa805">
						<option value="">不限定</option>
						<option value="01">等待</option>
 						<option value="02">已售</option>
 						<option value="03">已租</option>
 						<option value="04">已选</option>
 						<option value="05">预留</option>
					</select>
				</div>
			</div>
		</div>
	<!-- 数据迭代区 -->
	<table class="layui-table" lay-even lay-skin="nob">
	  <tr>
	    <td></td>
	    <td>序号</td>
	    <td>房间号</td>
	    <td>地址</td>
	    <td>状态</td>
	    <td>户型</td>
	    <td>房间结构</td>
	    <td>面积</td>
	    <td>建筑单价</td>
	    <td>建筑总价</td>
	    <td></td>
	    <td></td>
	  </tr>
	  <c:choose>
	     <c:when test="${rows!=null }">
	         <!-- 显示实际查询到的数据 -->
		     <c:forEach items="${rows }" var="ins" varStatus="vs">
	    	   	  <tr>
				    <td></td>
				    <td>${vs.count }</td>
				    <td>${ins.aaa803}</td>
				    <td>${ins.aaa804 }</td>
				    <td>${ins.caaa805 }</td>
				    <td>${ins.aaa502 }</td>
				    <td>${ins.aaa504 }</td>
				    <td>${ins.aaa505 }</td>
				    <td>${ins.aaa808 }</td>
				    <td>${ins.aaa809 }</td>
				    <c:choose>
					    <c:when test="${ins.caaa805=='签约'||ins.caaa805=='已选'||ins.caaa805=='预留'}">
					    <td><a href="#"  onclick="" style="color:grey">确认选房</a></td>
					    <td><a href="#"  onclick="" style="color:grey">添加预留</a></td>
					    </c:when>
					    <c:otherwise>
					    <td><a href="#" onclick="onConfirm('${ins.aaa801}')">确认选房</a></td>
					    <td><a href="#" onclick="onReserve('${ins.aaa801}')">添加预留</a></td>
					    </c:otherwise>
				    </c:choose>
				  </tr>
		      </c:forEach>
		      </c:when>
	   </c:choose>
	</table>
	<div class="layui-form-item" align="center">
	       <input type="submit" name="next" class="layui-btn layui-btn-normal" value="查询">
	</div>
	</form>
    </div>
  </div>
  <div class="layui-footer">
    <!-- 底部固定区域 -->
    ? layui.com - 底部固定区域
  </div>
</div>
</body>
</html>