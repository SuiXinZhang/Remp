<!DOCTYPE html>
<%@ page language="java" pageEncoding="GBK"%>
<%@include file="/../base/taglib.jsp" %>
<%@ taglib uri="http://org.wangxg/jsp/extl" prefix="e"%>
<html>
<head>
	<jsp:include   page="/base/head.jsp"/>
</head>
<body class="layui-layout-body">
<div class="layui-layout layui-layout-admin">
	<jsp:include   page="/base/header.jsp"/>
	<jsp:include   page="/aa/menu.jsp"/>
  <div class="layui-body">
    <div style="padding: 15px;">
	    <form id="myform" class="layui-form" action="<%=path%>/aa/aa04Query.html" method="post">
	     <h1>员工管理</h1>
	        <hr>
	        <div class="layui-form-item" align="center">
	        		<div class="layui-inline">
	        			<label class="layui-form-label"  style="font-size: 15px;">
			    			<i class="layui-icon layui-icon-flag" style="font-size: 15px; color: black;"></i>
			    			编号
			    		</label>
				      	<div class="layui-input-block">
				        	<input type="text" name="qaaa402" value="${param.qaaa402 }" autocomplete="off" class="layui-input"  style="width:120px;">
			      		</div>
	                </div>
	                
	                <div class="layui-inline">
	        			<label class="layui-form-label"  style="font-size: 15px;">
			    			<i class="layui-icon layui-icon-face-smile" style="font-size: 15px; color: black;"></i>
			    			姓名
			    		</label>
				      	<div class="layui-input-block">
				        	<input type="text" name="qaaa403" value="${param.qaaa403 }" autocomplete="off" class="layui-input"  style="width:120px;">
			      		</div>
	                </div>
	                
	                <div class="layui-inline">
	        			<label class="layui-form-label"  style="font-size: 15px;">
			    			<i class="layui-icon layui-icon-senior" style="font-size: 15px; color: black;"></i>
			    			岗位
			    		</label>
				      	<div class="layui-input-block">
				        	<input type="text" name="qaaa404" value="${param.qaaa404 }" autocomplete="off" class="layui-input"  style="width:215px;">
			      		</div>
	                </div>
	                
	        		     	
	        </div>
	        <div class="layui-form-item" align="center">

					<div class="layui-inline">
	        			<label class="layui-form-label"  style="font-size: 15px;">
			    			<i class="layui-icon layui-icon-rate-half" style="font-size: 15px; color: black;"></i>
			    			性别
			    		</label>
				      	<div class="layui-input-block" style="width: 120px;">
				        	<e:select name="qaaa407"  value="男:男,女:女,不确定:不确定"  header="true"/>
			      		</div>
	                </div>	
	                
	                <div class="layui-inline">
	        			<label class="layui-form-label"  style="font-size: 15px;">
			    			<i class="layui-icon layui-icon-user" style="font-size: 15px; color: black;"></i>
			    			民族
			    		</label>
				      	<div class="layui-input-block">
				        	<input type="text" name="qaaa406"  value="${param.qaaa406 }" autocomplete="off" class="layui-input"  style="width: 120px;">
			      		</div>
	                </div>

	        		<div class="layui-inline">
	                    <label class="layui-form-label"  style="font-size: 15px;">
			    			<i class="layui-icon layui-icon-date" style="font-size: 15px; color: black;"></i>
			    			生日
			    		</label>
	                    <div class="layui-input-inline" style="width: 90px;">
       						<input type="text" value="${param.baaa411 }" name="baaa411" id="date" lay-verify="date" placeholder="B" autocomplete="off" class="layui-input">
	                    </div>
	                    <div class="layui-form-mid">-</div>
	                    <div class="layui-input-inline" style="width: 90px;">
       						<input type="text" value="${param.eaaa411 }" name="eaaa411" id="date1" lay-verify="date" placeholder="E" autocomplete="off" class="layui-input">	                    
	                    </div>
	                </div>	
	        </div>
	        <div id="tableId" style="display: none">
		    <table id="idData"  lay-filter="demo">
			    <thead>
			        <tr>
			        	<td lay-data="{field:'check',width:50}"></td>
			        	<td lay-data="{field:'sort1',width:60}">序号</td>
						<td lay-data="{field:'projectname',width:100}">姓名</td>
						<td lay-data="{field:'username',width:100}">员工编号</td>
						<td lay-data="{field:'userphone',width:100}">岗位</td>
						<td lay-data="{field:'empname',width:120}">所属部门</td>
						<td lay-data="{field:'style',width:60}">性别</td>
						<td lay-data="{field:'date',width:80}">民族</td>
						<td lay-data="{field:'grade',width:120}">生日</td>
						<td lay-data="{field:'way',width:100}">联系方式</td>
						<td lay-data="{field:'address',width:100}">住址</td>
						<td lay-data="{field:'beizhu',sort:true}">备注</td>
						<td lay-data="{field:'opt',fixed:'right',width:100}">操作</td>
			        </tr>
			    </thead>
			    <tbody>
					<c:choose>
						<c:when test="${rows!= null }">
							<c:forEach items="${rows }" var="ins" varStatus="vs">
								<tr>
									<td>
									<input type="checkbox" lay-filter="check" lay-skin="primary" name="idlist" value="${ins.aaa401 }">
									</td>
									<td>${vs.count }</td>
									<td><a href="#" style="color:orange" onclick="onEdit('${ins.aaa401 }')">${ins.aaa403 }</a>
									</td>
									<td>${ins.aaa402 }</td>
									<td>${ins.aaa404 }</td>
									<td>${ins.aaa302 }</td>
									<td>${ins.aaa407 }</td>
									<td>${ins.aaa406 }</td>
									<td>${ins.aaa411 }</td>
									<td>${ins.aaa408 }</td>
									<td>${ins.aaa409 }</td>
									<td>${ins.aaa410 }</td>
									<td>
											<a class="layui-btn layui-btn-xs layui-btn-danger" href="#"
												onClick="onDel('${ins.aaa401}')">
												<i class="layui-icon layui-icon-delete"></i>删除
											</a> 
									</td>
								</tr>
							</c:forEach>
							<c:forEach begin="${fn:length(rows)+1 }" end="10" step="1">
								<tr>
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
					</c:choose>
			    </tbody>
			</table>
			 <div class="layui-form-item" align="center">
				<div class="layui-inline">
				<td align="center">
				
					<input type="submit" class="layui-btn" value="查询" name="next">
					<input type="submit" class="layui-btn" value="添加" name="next" onclick="onAdd()" formaction="<%=path %>/aa/empAdd.jsp"> 
					<input type="submit" class="layui-btn layui-btn-disabled" value="删除" name="next" disabled="disabled" 
						formaction="<%=path %>/aa/aa04Delete.html" id="del"> 
					<input type="submit" class="layui-btn" value="返回" name="next" formaction="<%=path %>/aa/aa03Query.html" 
						formnovalidate="formnovalidate"></td>

				</div>
			</div>
		<input type="hidden" name="aaa301" value="${param.aaa301 }"> 
		<input type="hidden" name="aaa201" value="${param.aaa201 }"> 
		<input type="hidden" name="aaa302" value="${param.aaa302 }">
		</div>
		</form>
	</div>
  </div>
  
  <div class="layui-footer">
  </div>
</div>

<script>
var count = 0;
function onSelect(vstate)
{
	value?count++:count--;
	if(count!=0)
	{
		${"del"}.class="layui-btn";
	}
}
function onEdit(vaaa401)
{
	var myform = document.getElementById("myform");
	myform.action = "<%=path%>/aa04FindById.html?aaa401=" + vaaa401;
	myform.submit();
}
function onDel(vaaa401)
{
	var myform = document.getElementById("myform");
	myform.action = "<%=path%>/aa04DelById.html?aaa401=" + vaaa401;
	myform.submit();
}
</script>
<script>
layui.use(['layer', 'form','element', 'laydate','table'], function(){
	  var layer = layui.layer;
	  var element = layui.element
	  ,laydate = layui.laydate
	  ,form = layui.form
	  ,table = layui.table;
		//转换静态表格
		table.init('demo', {
			limit : 10,
			page : true,
			
			done : function(res, curr, count) {
				$('#tableId').css('display', 'block');
			}
		});
	  
	  //日期
	  laydate.render({
	    elem: '#date'
	    ,trigger: 'click'
	  });
	  laydate.render({
	    elem: '#date1'
	    ,trigger: 'click'
	  })
	  
	  var count=0;
	  form.on('checkbox(check)', function(data){
          if(data.elem.checked==true){
               	count++;
               	if(count!=0){
               		document.getElementById("del").className="layui-btn";
               	}else{
               		document.getElementById("del").className="layui-btn layui-btn-disabled";
               	}
               	document.getElementById("del").disabled=(count==0)
               		
          }else{
        	  count--;
       		  if(count!=0){
       				document.getElementById("del").className="layui-btn";
       		  }else{
             		document.getElementById("del").className="layui-btn layui-btn-disabled";
             }
       		document.getElementById("del").disabled=(count==0)
          }
      });
	});
</script>
</body>