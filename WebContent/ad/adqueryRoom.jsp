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
    function confirmReserve(vaaa801)
    {
  	 var vform = document.getElementById("myform");
  	 vform.action='<%=path%>/ad/ad03confirmReserve.html?aaa801='+vaaa801;
  	 //alert(vform.action);
  	 vform.submit();
    } 
	</script>
</head>
<body class="layui-layout-body">
<div class="layui-layout layui-layout-admin">
  	<jsp:include   page="/base/header.jsp"/>
	<c:import url="/ad/menu.jsp">
        <c:param name="menu" value="ad"/>
     </c:import>
  <div class="layui-body">
    <!-- 内容主体区域 -->
    <div class="layui-anim layui-anim-scale"
				style="padding: 15px; margin: 30px 80px;">
				<fieldset class="layui-elem-field layui-filed-title" style="margin-top: 20px;">
					<legend><h2>房源查询</h2></legend>
					<br>
	<form lay-filter="myform" id="myform" class="layui-form" action="<%=path %>/ad/adqueryRoom.html" method="post">
    	<div class="layui-form-item" align="center">
			<div class="layui-inline">
				<label class="layui-form-label">建筑总价[B]</label>
				<div class="layui-input-inline">
					<input type="text" name="baaa809" value="${param.baaa809 }" autocomplete="off" class="layui-input">
				</div>
			</div>
			<div class="layui-inline">
				<label class="layui-form-label">建筑总价[E]</label>
				<div class="layui-input-inline">
					<input type="text" name="eaaa809" value="${param.eaaa809 }" autocomplete="off" class="layui-input">
				</div>
			</div>
		</div>
		<div class="layui-form-item" align="center">
			<div class="layui-inline">
				<label class="layui-form-label">建筑面积[B]</label>
				<div class="layui-input-inline">
					<input type="text" name="baaa505" value="${param.baaa505 }" autocomplete="off" class="layui-input">
				</div>
			</div>
			<div class="layui-inline">
				<label class="layui-form-label">建筑面积[E]</label>
				<div class="layui-input-inline">
					<input type="text" name="eaaa505" value="${param.eaaa505 }" autocomplete="off" class="layui-input">
				</div>
			</div>
		</div>
		<div class="layui-form-item" align="center">
			<div class="layui-inline">
				<label class="layui-form-label">户型</label>
				<div class="layui-input-inline">
					<select name="qaaa502" >
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
						<option value="两房两厅两卫">两房两厅两卫</option>
						<option value="两房两厅一卫">两房两厅一卫</option>
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
			<div class="layui-inline">
	       		<label class="layui-form-label">房间号码</label>
					<div class="layui-input-inline">
						<input type="text" name="qaaa803" value="${param.qaaa803 }" autocomplete="off" class="layui-input">
					</div>
			</div>
		</div>
	<!-- 数据迭代区 -->
	<div id="tableId" style="display: none">
	<table id="idData"  lay-filter="demo">
	<thead>
	  <tr>
	  	<td lay-data="{field:'sort1',width:60}">序号</td>
		<td lay-data="{field:'projectname',width:125}">房间号</td>
		<td lay-data="{field:'username'}">地址</td>
		<td lay-data="{field:'userphone',width:60}">状态</td>
		<td lay-data="{field:'empname',width:60}">户型</td>
		<td lay-data="{field:'style',width:88}">房间结构</td>
		<td lay-data="{field:'date',sort:true,width:115}">面积</td>
		<td lay-data="{field:'grade',sort:true,width:100}">建筑单价</td>
		<td lay-data="{field:'state',sort:true,width:120}">建筑总价</td>
		<td lay-data="{field:'opt',fixed:'right',width:200}">操作</td>
	  </tr>
	 </thead>
	 <tbody>
	  <c:choose>
	     <c:when test="${rows!=null }">
		     <c:forEach items="${rows }" var="ins" varStatus="vs">
	    	   	  <tr>
				    <td>${vs.count }</td>
				    <td>${ins.aaa803}</td>
				    <td>${ins.aaa804 }</td>
				    <td>${ins.caaa805 }</td>
				    <td>${ins.aaa502 }</td>
				    <td>${ins.aaa504 }</td>
				    <td>${ins.aaa505 }</td>
				    <td>${ins.aaa808 }</td>
				    <td>${ins.aaa809 }</td>
				    <td>
				    <c:choose>
					    <c:when test="${ins.caaa805=='等待' }">
					    <a class="layui-btn layui-btn-xs " href="#" onclick="onConfirm('${ins.aaa801}')">
								<i class="layui-icon layui-icon-edit"></i>确认选房
						</a>
						<a class="layui-btn layui-btn-xs layui-btn-danger" href="#" onclick="onReserve('${ins.aaa801}')">
								<i class="layui-icon layui-icon-release"></i>添加预留
						</a>
					    </c:when>
					    <c:otherwise>
					    <c:if test="${ins.caaa805=='预留' }">
					    <a class="layui-btn layui-btn-xs " href="#" onclick="confirmReserve('${ins.aaa801}')">
								<i class="layui-icon layui-icon-edit"></i>确认选房
						</a>
					    </c:if>
					    <a class="layui-btn layui-btn-xs layui-btn-disabled" href="#"  onclick="">
					    	<i class="layui-icon layui-icon-edit"></i>确认选房
					    </a>
					    <a class="layui-btn layui-btn-xs layui-btn-danger layui-btn-disabled" href="#" onclick="">
								<i class="layui-icon layui-icon-release"></i>添加预留
						</a>
					    </c:otherwise>
				    </c:choose>
				    <c:choose>
				    	<c:when test="${ins.caaa805=='等待'}">
				   		
						</c:when>
						<c:otherwise>
						
						</c:otherwise>
					</c:choose>
					</td>
				  </tr>
		      </c:forEach>
		      </c:when>
	   </c:choose>
	   </tbody>
	</table>
	<div class="layui-form-item" align="center">
		<input type="submit" class="layui-btn layui-btn-normal" name="next" value="查询">
	</div>
	</div>
	</form>
	</fieldset>
    </div>
  </div>
  <div class="layui-footer">
    <!-- 底部固定区域 -->
  </div>
</div>
<script type="text/javascript">
//JavaScript代码区域
layui.use(['table','form'], function(){
  var table = layui.table
  	  ,form = layui.form;
  form.val('myform',{
	  "qaaa502":"${param.qaaa502}",
	  "qaaa504":"${param.qaaa504}",
	  "qaaa805":"${param.qaaa805}"
  });
	//转换静态表格
	table.init('demo', {
		limit : 10,
		page : true,
		toolbar : true,
		done : function(res, curr, count) {
			$('#tableId').css('display', 'block');
		}
	});
});
</script>
</body>
</html>