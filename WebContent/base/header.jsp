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
    <div class="layui-logo" style="margin-top:7px;"><img src="../static/layui/images/logo.jpg"><a class="navbar-brand"><i>思安</i><span>地产管理</span></a></div>
    <ul class="layui-nav  layui-layout-left">
	      <li class="layui-nav-item"><a href="/remp/aa/aa02Query.html?aaa101=1">
	      		<i class="layui-icon layui-icon-release" style="padding-right:5px"></i>项目准备</a></li>
	      <li class="layui-nav-item"><a href="/remp/ab/index.jsp">
	      		<i class="layui-icon layui-icon-chart" style="padding-right:5px"></i>市场营销 </a></li>
	      <li class="layui-nav-item"><a href="/remp/ac/index.jsp">
	      		<i class="layui-icon layui-icon-user" style="padding-right:5px"></i>客户管理</a></li>
	      <li class="layui-nav-item"><a href="/remp/ad/index.jsp">
	      		<i class="layui-icon layui-icon-component" style="padding-right:5px"></i>交易管理</a></li>
	      <li class="layui-nav-item"><a href="/remp/ae/index.jsp">
	      		<i class="layui-icon layui-icon-vercode" style="padding-right:5px"></i>售后服务</a></li>
	      <li class="layui-nav-item"><a href="/remp/af/index.jsp">
	      		<i class="layui-icon layui-icon-rmb" style="padding-right:5px"></i>财务管理</a></li>
	      <!-- <li class="layui-nav-item">
	        <a href="javascript:;">其它系统</a>
	        <dl class="layui-nav-child">
	          <dd><a href="">邮件管理</a></dd>
	          <dd><a href="">消息管理</a></dd>
	          <dd><a href="">授权管理</a></dd>
	        </dl>
	      </li> -->
    </ul>
    <ul class="layui-nav layui-layout-right">
      <li class="layui-nav-item">
        <a href="<%=path%>/aa/aa01FindById.html?aaa101=1">
          <img src="http://t.cn/RCzsdCq" class="layui-nav-img">
        	思安企业
        </a>
       <!--  <dl class="layui-nav-child">
          <dd><a href="">基本资料</a></dd>
          <dd><a href="">安全设置</a></dd>
        </dl> -->
      </li>
      <li class="layui-nav-item"><a href="">退了</a></li>
    </ul>
</div>