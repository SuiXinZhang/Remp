<%@ page language="java" pageEncoding="GBK"%>
<%@include file="/base/taglib.jsp" %>
<html>
<head>
	<c:import url="/base/head.jsp"/>
</head>
<body class="layui-layout-body">
<div class="layui-layout layui-layout-admin">
  <c:import url="base/header.jsp"/>
  <c:import url="menu.jsp"/>
  
  <div class="layui-body">
    <!-- ������������ -->
    <div style="padding: 15px;">������������</div>
  </div>
  
  <div class="layui-footer">
    <!-- �ײ��̶����� -->
    ? layui.com - �ײ��̶�����
  </div>
</div>
<script ></script>
<script>
//JavaScript��������
layui.use('element', function(){
  var element = layui.element;
  
});
</script>
</body>
</html>