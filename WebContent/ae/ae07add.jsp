<%@ page language="java" pageEncoding="GBK"%>
<%@include file="/../base/taglib.jsp" %>
<html>
<head>
	<jsp:include   page="/base/head.jsp"/>
</head>
<body class="layui-layout-body">
<div class="layui-layout layui-layout-admin">
	<jsp:include   page="/base/header.jsp"/>
	 <c:import url="/ae/menu.jsp">
        <c:param name="menu" value="ae07"/>
     </c:import>
  <div class="layui-body">
  <h1 align="center">��������¼</h1>
    <div style="padding: 15px;">
	    <form action="<%=path %>/ae04Add.html" lay-filter="form" class="layui-form"  method="post">
	    <div align="center">
		    <div class="layui-form-item">
		    	<div class="layui-inline">
			      	<label class="layui-form-label">�ͻ�</label>
			      	<div class="layui-input-inline">
			        	<input required="required" name="aae707" class="layui-input" type="text" value="${ins.aae707 }" >
		      		</div>
		    	</div>
		      	<div class="layui-inline">
		      		<label class="layui-form-label">����</label>
	                <div class="layui-input-inline" >
	                	<input required="required" id="room" class="layui-input" type="text" name="aae709" value="${ins.aae709 }" onclick="selectRoom()" readonly="readonly">
	                	<input id="roomNo" type="hidden" name="aaa801" value="${ins.aaa801 }">
	                </div>
	            </div>
	    	</div>
	    	<div class="layui-form-item">
		    	<div class="layui-inline">
			      	<label class="layui-form-label">��ͬ���</label>
			      	<div class="layui-input-inline">
			        	<input required="required" name="aae702" class="layui-input" step="0.01" type="number" value="${ins.aae702 }">
		      		</div>
		    	</div>
			    <div class="layui-inline">
			      	<label class="layui-form-label">ʵ�����</label>
			      	<div class="layui-input-inline">
				       <input required="required" name="aae703" class="layui-input" step="0.01" type="number" value="${ins.aae703 }">
		      		</div>
		    	</div>
	    	</div>
	    	<div class="layui-form-item">
		    	<div class="layui-inline">
			      	<label class="layui-form-label">��ͬ�۸�</label>
			      	<div class="layui-input-inline" >
			        <input name="aae708" required="required" class="layui-input" step="0.01" type="number" value="${ins.aae708 }">
		      		</div>
		    	</div>
	    	</div>
	    	<div class="layui-form-item layui-form-text">
		    	<div class="layui-inline">
			      	<label class="layui-form-label">��ע</label>
			      	<div class="layui-input-inline" >
			        <textarea cols="65"  name="aae706" class="layui-textarea" placeholder="����������">${ins.aae706 }</textarea>
		      		</div>
		    	</div>
	    	</div>
	    	
	    	<div class="layui-form-item">
				<div class="layui-inline">
						<input class="layui-btn" name="next" type="submit" value="${empty param.aae701?'���':'�޸�' }"
							formaction="<%=path%>/ae/${empty param.aae701?'ae07Add.html':'ae07Modify.html'}">
						<input class="layui-btn" type="submit" value="����"
						formaction="<%=path%>/ae/ae07query.html" formnovalidate="formnovalidate" >
				</div>
			</div>
		<input type="hidden" name="aae701" value="${param.aae701 }">
		</div>
	</form>
	</div>
  </div>
  
  <div class="layui-footer">
  </div>
</div>

<script>
layui.use(['layer', 'form','element'], function(){
	var element = layui.element;
	var $ = layui.jquery;
	var layer = layui.layer
	,form = layui.form;
	})
	layui.use('laydate',function(){
		 var laydate = layui.laydate;
		  laydate.render({
			  elem:'#date1'
			 
		  });
		  laydate.render({
			  elem:'#date2'
			 
		  });
		  laydate.render({
			  elem:'#date3'
			 
		  });
	});
</script>
<script type="text/javascript">
function selectRoom(e)
{
	layer.open({
		 type: 2
		,title: '����ѡ��'
		,area:['800px', '500px']
		,maxmin: true
		,content: '<%=path%>/base/room.html'
		,btn: ['ȷ��','�ر�'],
		yes: function(index){
			var res = window["layui-layer-iframe" + index].callbackdata();
			//��ӡ���ص�ֵ�����Ƿ��������뷵�ص�ֵ
			console.log(res);
			$("#room").attr("value",res[0])
			$("#roomNo").attr("value",res[1])
			layer.close(index);
			}
		});  
}
</script>
</body>
</html>