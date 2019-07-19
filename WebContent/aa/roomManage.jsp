<%@ page language="java" pageEncoding="GBK"%>
<%@include file="/../base/taglib.jsp" %>
<html>
<head>
	<jsp:include page="/base/head.jsp"/>
</head>
<body class="layui-layout-body">
<div class="layui-layout layui-layout-admin">
	<jsp:include   page="/base/header.jsp"/>
	<jsp:include   page="/aa/menu.jsp"/>
  <div class="layui-body">
    <div style="padding: 15px;">
	    <form id="myform" class="layui-form" action="<%=path%>/aa/aa08Query.html" method="post">
	     <h1>房间管理</h1>
	        <hr>
	        	<div class="layui-form-item" align="center">
	        		<div class="layui-inline">
	        			<label class="layui-form-label"  style="font-size: 15px;">
			    			<i class="layui-icon layui-icon-flag" style="font-size: 15px; color: black;"></i>
			    			房间编码
			    		</label>
				      	<div class="layui-input-block">
				        	<input type="text" name="qaaa802" value="${param.qaaa802 }" autocomplete="off" class="layui-input"  style="width:95px;">
			      		</div>
	                </div>
	                
	               <div class="layui-inline">
	        			<label class="layui-form-label"  style="font-size: 15px;">
			    			<i class="layui-icon layui-icon-templeate-1" style="font-size: 15px; color: black;"></i>
			    			户型编码
			    		</label>
				      	<div class="layui-input-block" style="width: 100px;">
				      		<e:select value="${ins.aaa502 }" name="qaaa807"  defval="${param.qaaa807 }" header="true"/>
			      		</div>
	                </div>  
	                
	        		<div class="layui-inline">
	        			<label class="layui-form-label"  style="font-size: 15px;">
			    			<i class="layui-icon layui-icon-location" style="font-size: 15px; color: black;"></i>
			    			房间号
			    		</label>
				      	<div class="layui-input-block">
					        <div class="layui-input-inline" style="width: 50px;">
		      					<input type="text" value="${param.qdanyuan }" name="qdanyuan" placeholder="单元" autocomplete="off" class="layui-input">
		                    </div>
		                    <div class="layui-form-mid">-</div>
		                    <div class="layui-input-inline" style="width: 50px;">
		                        <input type="text" value="${param.qlouceng }"  name="qlouceng"  placeholder="楼层" autocomplete="off" class="layui-input">
		                    </div>
		                    <div class="layui-form-mid">-</div>
		                    <div class="layui-input-inline" style="width: 50px;">
		      					<input type="text" value="${param.qhuhao }" name="qhuhao" placeholder="户号" autocomplete="off" class="layui-input">	                    
		                    </div>
			      		</div>
	                </div>	
	                
	                <div class="layui-inline">
	        			<label class="layui-form-label"  style="font-size: 15px;">
			    			<i class="layui-icon layui-icon-engine" style="font-size: 15px; color: black;"></i>
			    			房间状态
			    		</label>
				      	<div class="layui-input-block" style="width: 100px;">
				        	<e:select value="等待:01,签约:02,已租:03" header="true" name="qaaa805" />
			      		</div>
	                </div>     
	                
	                <div class="layui-inline">
	        			<label class="layui-form-label"  style="font-size: 15px;">
			    			<i class="layui-icon layui-icon-release" style="font-size: 15px; color: black;"></i>
			    			租售类型
			    		</label>
				      	<div class="layui-input-block" style="width: 100px;">
				        	<e:select value="可租:可租,可售:可售,租售:租售" header="true" name="qaaa806" />
			      		</div>
	                </div>             
	       		</div>
	       		
	       		<div class="layui-form-item" align="center">
	       			<div class="layui-inline">
	        			<label class="layui-form-label"  style="font-size: 15px;">
			    			<i class="layui-icon layui-icon-rmb" style="font-size: 15px; color: black;"></i>
			    			建筑单价
			    		</label>
				      	<div class="layui-input-block">
					        <div class="layui-input-inline" style="width: 72px;">
	       						<input type="number" value="${param.baaa808 }" step="0.01" name="baaa808" placeholder="B" autocomplete="off" class="layui-input">
		                    </div>
		                    <div class="layui-form-mid">-</div>
		                    <div class="layui-input-inline" style="width: 72px;">
	       						<input type="number" value="${param.eaaa808 }" step="0.01" name="eaaa808" placeholder="E" autocomplete="off" class="layui-input">	                    
		                    </div>
			      		</div>
	                </div>  

	       			<div class="layui-inline">
	        			<label class="layui-form-label"  style="font-size: 15px;">
			    			<i class="layui-icon layui-icon-rmb" style="font-size: 15px; color: black;"></i>
			    			建筑总价
			    		</label>
				      	<div class="layui-input-block">
					        <div class="layui-input-inline" style="width: 75px;">
	       						<input type="number" value="${param.baaa809 }" step="0.01" name="baaa809" placeholder="B" autocomplete="off" class="layui-input">
		                    </div>
		                    <div class="layui-form-mid">-</div>
		                    <div class="layui-input-inline" style="width: 75px;">
	       						<input type="number" value="${param.eaaa809 }" step="0.01" name="eaaa809" placeholder="E" autocomplete="off" class="layui-input">	                    
		                    </div>
			      		</div>
			      	</div>

	       			<div class="layui-inline">
	        			<label class="layui-form-label"  style="font-size: 15px;">
			    			<i class="layui-icon layui-icon-rmb" style="font-size: 15px; color: black;"></i>
			    			套内单价
			    		</label>
				      	<div class="layui-input-block">
					        <div class="layui-input-inline" style="width: 75px;">
	       						<input type="number" value="${param.baaa810 }" step="0.01" name="baaa810" placeholder="B" autocomplete="off" class="layui-input">
		                    </div>
		                    <div class="layui-form-mid">-</div>
		                    <div class="layui-input-inline" style="width: 75px;">
	       						<input type="number" value="${param.eaaa810 }" step="0.01" name="eaaa810" placeholder="E" autocomplete="off" class="layui-input">	                    
		                    </div> 
			      		</div>
			      	</div>
			      		
	       			<div class="layui-inline">
	        			<label class="layui-form-label"  style="font-size: 15px;">
			    			<i class="layui-icon layui-icon-rmb" style="font-size: 15px; color: black;"></i>
			    			套内总价
			    		</label>
				      	<div class="layui-input-block">
					        <div class="layui-input-inline" style="width: 75px;">
	       						<input type="number" value="${param.baaa811 }" step="0.01" name="baaa811" placeholder="B" autocomplete="off" class="layui-input">
		                    </div>
		                    <div class="layui-form-mid">-</div>
		                    <div class="layui-input-inline" style="width: 75px;">
	       						<input type="number" value="${param.eaaa811 }" step="0.01" name="eaaa811" placeholder="E" autocomplete="off" class="layui-input">	                    
		                    </div> 
			      		</div>
	                </div>	                
	       		</div>
		    <table class="layui-table">
			    <thead>
			        <tr>
			        	<th></th>
			            <th>序号</th>
			            <th>房间号</th>
			            <th>房间编码</th>
			            <th>地址</th>
			            <th>状态</th>
			            <th>租售类型</th>
			            <th>户型</th>
			            <th>建筑单价</th>
			            <th>建筑总价</th>
			            <th>套内单价</th>
			            <th>套内总价</th>
			            <th>备注</th>
			            <th></th>
			        </tr>
			    </thead>
			    <tbody>
					<c:choose>
						<c:when test="${rows!= null }">
							<c:forEach items="${rows }" var="ins" varStatus="vs">
								<tr>
									<td><input type="checkbox" lay-filter="check" lay-skin="primary" name="idlist" value="${ins.aaa801 }"></td>
									<td>${vs.count }</td>
									<td><a href="#" style="color:orange" onclick="onEdit('${ins.aaa801 }')">${ins.aaa803 }</a>
									</td>
									<td>${ins.aaa802 }</td>
									<td>${ins.aaa804 }</td>
									<td>${ins.cnaaa805  }</td>
									<td>${ins.aaa806 }</td>
									<td>${empty ins.aaa807?'尚未设置':ins.aaa807 }</td>
									<td>${empty ins.aaa808?'尚未设置':ins.aaa808  }</td>
									<td>${empty ins.aaa809?'尚未设置':ins.aaa809  }</td>
									<td>${empty ins.aaa810?'尚未设置':ins.aaa810  }</td>
									<td>${empty ins.aaa811?'尚未设置':ins.aaa811  }</td>
									<td>${ins.aaa812 }</td>
									<td><a href="#" style="color:red" onClick="onDel('${ins.aaa801}')">删除</a></td>
								</tr>
							</c:forEach>
							<c:forEach begin="${fn:length(rows)+1 }" end="15" step="1">
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
									<td></td>
									<td></td>
									<td></td>
								</tr>
							</c:forEach>
						</c:when>
						<c:otherwise>
							<c:forEach begin="1" end="15" step="1">
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
								    <td></td>
									<td></td>
									<td></td>
								</tr>
							</c:forEach>
						</c:otherwise>
					</c:choose>
			    </tbody>
			</table>
			 <div class="layui-form-item" align="center">
				<div class="layui-inline">
					<input type="submit" class="layui-btn" value="查询" name="next">
					<input type="submit" class="layui-btn layui-btn-disabled" value="修改" name="next" disabled="disabled" formaction="<%=path %>/aa/aa08GotoModify.html" id="modify"> 
					<input type="submit" class="layui-btn layui-btn-disabled" value="删除" name="next" disabled="disabled" formaction="<%=path %>/aa/aa08Delete.html" id="del"> 
					<input type="submit" class="layui-btn"  value="返回" name="next" formaction="<%=path %>/aa/aa07Query.html" formnovalidate="formnovalidate">
				</div>
			</div>
			

		<input type="hidden" name="aaa201" value="1"> 
		<input type="hidden" name="aaa701" value="${param.aaa701 }"> 
		<input type="hidden" name="aaa601" value="${param.aaa601 }"> 
		<input type="hidden" name="aaa602" value="${param.aaa708 }">	
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
function onEdit(vaaa801)
{
	var myform = document.getElementById("myform");
	myform.action = "<%=path%>/aa08FindById.html?aaa801=" + vaaa801;
	myform.submit();
}
function onDel(vaaa801)
{
	var myform = document.getElementById("myform");
	myform.action = "<%=path%>/aa08DelById.html?aaa801=" + vaaa801;
	myform.submit();
}
</script>
<script>
layui.use(['layer', 'form','element'], function(){
	  var layer = layui.layer;
	  var element = layui.element;
	  form = layui.form;
	  var count=0;
	  form.on('checkbox(check)', function(data){
          if(data.elem.checked==true){
               	count++;
               	var delB = document.getElementById("del");
               	var modifyB = document.getElementById("modify");
               	if(count!=0){
               		delB.className="layui-btn";
               		modifyB.className="layui-btn";
               	}else{
               		delB.className="layui-btn layui-btn-disabled";
               		modifyB.className="layui-btn layui-btn-disabled";
               	}
               	delB.disabled=(count==0);
               	modifyB.disabled=(count==0);
          }else{
        	  count--;
             	var delB = document.getElementById("del");
               	var modifyB = document.getElementById("modify");
               	if(count!=0){
               		delB.className="layui-btn";
               		modifyB.className="layui-btn";
               	}else{
               		delB.className="layui-btn layui-btn-disabled";
               		modifyB.className="layui-btn layui-btn-disabled";
               	}
               	delB.disabled=(count==0);
               	modifyB.disabled=(count==0);
          }

      });
	});
</script>
</body>