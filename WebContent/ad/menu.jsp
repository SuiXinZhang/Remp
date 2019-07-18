<%@ page language="java" pageEncoding="GBK"%>
<%String path = request.getContextPath(); %>
<div class="layui-side layui-bg-black">
    <div class="layui-side-scroll">
      <!-- 左侧导航区域（可配合layui已有的垂直导航） -->
      <ul class="layui-nav layui-nav-tree"  lay-filter="test">
        <li class="layui-nav-item"><a href="adqueryRoom.jsp">房源查询</a></li>
        <li class="layui-nav-item layui-nav-itemed" ><a href="javascript:">预约排号</a>
             <dl class="layui-nav-child">
             	<dd><a href="ad01customerQuery.jsp">&nbsp&nbsp&nbsp&nbsp添加预约</a></dd>
             	<dd><a href="ad01queryOrder.jsp">&nbsp&nbsp&nbsp&nbsp查询预约</a></dd>
             	<dd><a href="ad01addOrder.jsp">&nbsp&nbsp&nbsp&nbsp查询退号</a></dd>
             </dl>
             </li>
        <li class="layui-nav-item"><a href="">选房确认</a></li>
        <li class="layui-nav-item"><a href="">订单管理</a></li>
        <li class="layui-nav-item"><a href="">合同管理</a></li>
        <li class="layui-nav-item"><a href="">业务变更</a></li>
        <li class="layui-nav-item"><a href="">变更审批</a></li>
        <li class="layui-nav-item"><a href="">变更日志</a></li>
        <li class="layui-nav-item"><a href="">销售日志</a></li>
      </ul>
    </div>
  </div>