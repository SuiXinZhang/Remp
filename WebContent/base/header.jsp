<%@ page language="java" pageEncoding="GBK"%>
<%@include file="/../base/taglib.jsp" %>
<style>
.navbar-brand {
	color:#019789;
    padding: 0;
    font-size: 1em;
    line-height: 45px;
    height: 45px;
    letter-spacing: 2px;
}
.navbar-brand span {
    border-bottom: 1px solid;
    border-top: 1px solid;
}
.navbar-brand i{
	padding-left:8px;
	font-style: normal;
    font-size: 1.3em;
    display: inline-block;
    vertical-align: top;
}
</style>
<div class="layui-header">
    <div class="layui-logo" style="margin-top:7px;"><img src="../static/layui/images/logo.jpg"><a class="navbar-brand"><i>˼��</i><span>�ز�����</span></a></div>
    <ul class="layui-nav  layui-layout-left">
	      <li class="layui-nav-item"><a href="/remp/aa/aa02Query.html?aaa101=1">
	      		<i class="layui-icon layui-icon-release" style="padding-right:5px"></i>��Ŀ׼��</a></li>
	      <li class="layui-nav-item"><a href="/remp/ab/index.jsp">
	      		<i class="layui-icon layui-icon-chart" style="padding-right:5px"></i>�г�Ӫ�� </a></li>
	      <li class="layui-nav-item"><a href="/remp/ac/index.jsp">
	      		<i class="layui-icon layui-icon-user" style="padding-right:5px"></i>�ͻ�����</a></li>
	      <li class="layui-nav-item"><a href="/remp/ad/index.jsp">
	      		<i class="layui-icon layui-icon-component" style="padding-right:5px"></i>���׹���</a></li>
	      <li class="layui-nav-item"><a href="/remp/ae/index.jsp">
	      		<i class="layui-icon layui-icon-vercode" style="padding-right:5px"></i>�ۺ����</a></li>
	      <li class="layui-nav-item"><a href="/remp/af/index.jsp">
	      		<i class="layui-icon layui-icon-rmb" style="padding-right:5px"></i>�������</a></li>
	      <!-- <li class="layui-nav-item">
	        <a href="javascript:;">����ϵͳ</a>
	        <dl class="layui-nav-child">
	          <dd><a href="">�ʼ�����</a></dd>
	          <dd><a href="">��Ϣ����</a></dd>
	          <dd><a href="">��Ȩ����</a></dd>
	        </dl>
	      </li> -->
    </ul>
    <ul class="layui-nav layui-layout-right">
      <li class="layui-nav-item">
        <a href="<%=path%>/aa/aa01FindById.html?aaa101=1">
          <img src="http://t.cn/RCzsdCq" class="layui-nav-img">
        	˼����ҵ
        </a>
       <!--  <dl class="layui-nav-child">
          <dd><a href="">��������</a></dd>
          <dd><a href="">��ȫ����</a></dd>
        </dl> -->
      </li>
      <li class="layui-nav-item"><a href="">����</a></li>
    </ul>
</div>