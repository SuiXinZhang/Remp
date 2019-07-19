<%@ page language="java" pageEncoding="GBK"%>
<%@include file="taglib.jsp" %>
<html>
<head>
<jsp:include   page="head.jsp"/>
</head>
<body>
	<div align="center">
	<form lay-filter="form" class="layui-form">
		<div class="layui-form-item">
		    <div class="layui-inline">
		      	<label class="layui-form-label">项目</label>
		      	<div class="layui-input-block">
		      		<e:select id="prj" name="" value="${ins.prj },"/>
	      		</div>
	    	</div>
    	</div>
	    <div class="layui-form-item">
		    <div class="layui-inline">
		      	<label class="layui-form-label">小区</label>
		      	<div class="layui-input-block">
		      		<e:select id="xq" name="" value=""/>
	      		</div>
	    	</div>
    	</div>
    	<div class="layui-form-item">
		    <div class="layui-inline">
		      	<label class="layui-form-label">楼栋</label>
		      	<div class="layui-input-block">
		      		<e:select id="ld" name="" value=""/>
	      		</div>
	    	</div>
    	</div>
    	<div class="layui-form-item">
		    <div class="layui-inline">
		      	<label class="layui-form-label">房间</label>
		      	<div class="layui-input-block">
		      		<e:select id="room" name="" value=""/>
	      		</div>
	    	</div>
    	</div>
    </form>
    </div>
<script type="text/javascript">
var rs=[];
window.onload=function(){
	var obj1 = document.getElementById("prj");
	obj1.setAttribute('lay-filter', "prj"); //setAttribute设置自定义属性
	var obj2 = document.getElementById("xq");
	obj2.setAttribute('lay-filter', "xq"); //setAttribute设置自定义属性
	var obj3 = document.getElementById("ld");
	obj3.setAttribute('lay-filter', "ld"); //setAttribute设置自定义属性
	var obj4 = document.getElementById("room");
	obj4.setAttribute('lay-filter', "room"); //setAttribute设置自定义属性
}
var callbackdata = function () {
	return rs;
}
function renderForm() {
    layui.use('form', function() {
        var form = layui.form; 
        form.render();
    });
}
layui.use(['layer', 'form','element'], function(){
		var element = layui.element;
	  var layer = layui.layer
	  ,form = layui.form;
	  form.on('select(prj)',function(data){
		 $.ajax({
	            type:'post',
	            url:'<%=path%>/findXq',
	            async:true,
	            
	            data:{
	                'id':data.value
	            },
	            success:function(data){
	            	var obj = JSON.parse(data);
	            	htmls = '<option value="">请选择</option>';
	                for(var ins in obj)
	                {
	                	 htmls += '<option value = "' + obj[ins].aaa601 + '">' + obj[ins].aaa602 + '</option>'
	                }
	                $("#xq").html(htmls);
	                console.log(obj);
	                form.render('select');
	      	      	renderForm();
	            }
	        });
	  });
	  form.on('select(xq)',function(data){
		  $.ajax({
	            type:'post',
	            url:'<%=path%>/findld',
	            async:true,
	            
	            data:{
	                'id':data.value
	            },
	            success:function(data){
	            	var obj = JSON.parse(data);
	            	htmls = '<option value="">请选择</option>';
	                for(var ins in obj)
	                {
	                	 htmls += '<option value = "' + obj[ins].aaa701 + '">' + obj[ins].aaa702 +'栋'+ '</option>'
	                }
	                $("#ld").html(htmls);
	                console.log(obj);
	                form.render('select');
	      	      	renderForm();
	            }
	        });
	  })
	  form.on('select(ld)',function(data){
		  $.ajax({
	            type:'post',
	            url:'<%=path%>/findroom',
	            async:true,
	            
	            data:{
	                'id':data.value
	            },
	            success:function(data){
	            	var obj = JSON.parse(data);
	            	htmls = '<option value="">请选择</option>';
	                for(var ins in obj)
	                {
	                	 htmls += '<option value = "' + obj[ins].aaa801 + '">' + obj[ins].aaa803 + '</option>'
	                }
	                $("#room").html(htmls);
	                console.log(obj);
	                form.render('select');
	      	      	renderForm();
	            }
	        });
	  })
	  form.on('select(room)',function(data){
		  var key = $('#prj option:selected').text()+
		  			$('#xq option:selected').text()+
		  			$('#ld option:selected').text()+
		  			$('#room option:selected').text();
		  
		  rs = [key,data.value]
	  })
	});
</script>
</body>
</html>