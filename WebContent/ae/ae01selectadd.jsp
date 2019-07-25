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
        <c:param name="menu" value="ae01"/>
     </c:import>
	<%-- <jsp:include   page="/ae/menu.jsp"/> --%>
  <div class="layui-body">
    <div class="layui-anim layui-anim-scale" style="padding: 15px; margin:50px 100px;">
    <fieldset class="layui-elem-field">
 	<legend style="color:black"><h2>��ͬ����</h2></legend>
  		<div class="layui-field-box">
	    <form action="" lay-filter="form" class="layui-form"  method="post">
	    <div class="layui-form-item" align="center">
		    <div class="layui-inline" >
					<label class="layui-form-label">��ͬ���</label>
					<div class="layui-input-inline">
	            		<input type="hidden" name="aad701" value="${param.aad701 }">
	            		<input type="text" name="aae108" readonly="readonly" value="${ins.aad710 }" lay-verify="title" autocomplete="off" class="layui-input">
	        		</div>
		    </div>
		    <div class="layui-inline">
		      	<label class="layui-form-label">
		      	<i class="layui-icon layui-icon-date" style="font-size: 20px; color: black;"></i>����ʱ��</label>
		      	<div class="layui-input-inline">
		        <input name="aae109" id="date4" class="layui-input" type="text" value="${param.aae109 }" placeholder="yyyy-MM-dd" autocomplete="off" lay-verify="date">
	      		</div>
	    	</div>
	    </div>
	    <div class="layui-form-item" align="center">
	    	<div class="layui-inline">
		      	<label class="layui-form-label">
		      	<i class="layui-icon layui-icon-date" style="font-size: 20px; color: black;"></i>��ŵ����</label>
		      	<div class="layui-input-inline">
		        <input name="aae102" id="date1" class="layui-input" type="text" value="${param.aae102 }" placeholder="yyyy-MM-dd" autocomplete="off" lay-verify="date">
	      		</div>
	    	</div>
		    <div class="layui-inline">
		      	<label class="layui-form-label">
		      	<i class="layui-icon layui-icon-date" style="font-size: 20px; color: black;"></i>��ŵ���</label>
		      	<div class="layui-input-inline">
		        <input name="aae103" id="date2" class="layui-input" type="text" value="${param.aae103 }" placeholder="yyyy-MM-dd" autocomplete="off" lay-verify="date">
	      		</div>
	    	</div>
    	</div>
    	<div class="layui-form-item" align="center">
	      	<div class="layui-inline">
                    <label class="layui-form-label">
                    <i class="layui-icon layui-icon-tips" style="font-size: 20px; color: black;"></i>����״̬</label>
                    <div class="layui-input-inline" >
				        <select name="aae104">
				          <option value="">��ѡ��</option>
				          <option value="1">�Ѱ���</option>
				          <option value="0">δ����</option>
				        </select>
                    </div>
            </div>
		    <div class="layui-inline">
		      	<label class="layui-form-label">
		      	<i class="layui-icon layui-icon-date" style="font-size: 20px; color: black;"></i>���ʱ��</label>
		      	<div class="layui-input-inline">
		        <input name="aae105" id="date3" class="layui-input" id="aae105" 
		        value="${param.aae105 }" type="text" placeholder="yyyy-MM-dd" autocomplete="off" lay-verify="date">
	      		</div>
	    	</div>
    	</div>
    	<div class="layui-form-item" align="center">
	    	<div class="layui-inline">
		      	<label class="layui-form-label">
		      	<i class="layui-icon layui-icon-tree" style="font-size: 20px; color: black;"></i>�������</label>
		      	<div class="layui-input-inline">
		        <input name="aae106" readonly="readonly" value="${ins.aaa505 }" class="layui-input" type="number" autocomplete="off">
	      		</div>
	    	</div>
		    <div class="layui-inline">
		      	<label class="layui-form-label">
		      	<i class="layui-icon layui-icon-user" style="font-size: 20px; color: black;"></i>ҵ&ensp;��&ensp;Ա</label>
		      	<div class="layui-input-inline">
		        <input name="aae107" value="${param.aae107 }" class="layui-input" type="text" autocomplete="off">
	      		</div>
	    	</div>
    	</div>
    	<%-- <div class="layui-form-item" align="center">
	    	<div class="layui-inline">
		      	<label class="layui-form-label">
		      	��ͬ������</label>
		      	<div class="layui-input-inline">
		        <input name="aae108" class="layui-input" type="text" value="${ins.aae108 }" autocomplete="off">
	      		</div>
	    	</div>
		    <div class="layui-inline">
		      	<label class="layui-form-label">
		      	<i class="layui-icon layui-icon-date" style="font-size: 20px; color: black;"></i>����ʱ��</label>
		      	<div class="layui-input-inline">
		        <input name="aae109" id="date4" class="layui-input" type="text" value="${ins.aae109 }" placeholder="yyyy-MM-dd" autocomplete="off" lay-verify="date">
	      		</div>
	    	</div>
    	</div> --%>
    	<div class="layui-form-item layui-form-text" align="center">
	    	<div class="layui-inline">
		      	<label class="layui-form-label">
		      	<i class="layui-icon layui-icon-list" style="font-size: 20px; color: black;"></i>��ע</label>
		      	<div class="layui-input-inline" >
		        <textarea cols="66" name="aae110" class="layui-textarea" placeholder="����������">${param.aae110 }</textarea>
	      		</div>
	    	</div>
    	</div>
    	
    	<div class="layui-form-item" align="center">
				<div class="layui-inline">
						<input class="layui-btn" name="next" type="submit" value="���"
							formaction="<%=path%>/ae/ae01Add.html">
						<input class="layui-btn" type="submit" value="����"
						formaction="<%=path%>/ae/ae01query.html" formnovalidate="formnovalidate" >
				</div>
			</div>
	</form>
	</div>
	</fieldset>
	</div>
  </div>
</div>
<script>
layui.use(['layer', 'form','element'], function(){
	var element = layui.element;
	  var layer = layui.layer
	  ,form = layui.form;
	  form.val('form',{
		  'aae104':"${param.aae104}",
	  })
	 
	});
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
		  laydate.render({
			  elem:'#date4',
		  });
	});
</script>
</body>
</html>