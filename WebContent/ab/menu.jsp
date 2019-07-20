<%@ page language="java" pageEncoding="GBK"%>
<div class="layui-side layui-bg-black">
    <div class="layui-side-scroll">
      <!-- 左侧导航区域（可配合layui已有的垂直导航） -->
      <ul class="layui-nav layui-nav-tree"  lay-filter="test">
        <li class="layui-nav-item ${param.menu eq 'ab01' ? 'layui-this':''}">
          <a href="ab01Query.jsp">销售计划</a>
        </li>
        <li class="layui-nav-item ${param.menu eq 'ab02' ? 'layui-this':''}">
          <a href="ab03Query.jsp">营销方案</a>
        </li>
        <li class="layui-nav-item ${param.menu eq 'ab03' ? 'layui-this':''}">
        	<a href="ab05Query.jsp">营销分析</a>
        </li>
      </ul>
    </div>
  </div>