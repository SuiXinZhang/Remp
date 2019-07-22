<%@ page language="java" pageEncoding="GBK"%>
<div class="layui-side layui-bg-black">
    <div class="layui-side-scroll">
      <!-- 左侧导航区域（可配合layui已有的垂直导航） -->
      <ul class="layui-nav layui-nav-tree"  lay-filter="test">
        <li class="layui-nav-item layui-nav-itemed"><a href="javascript:;">销售计划</a>
          <dl class="layui-nav-child">
          		<dd class="${param.menu eq 'ab01q' ? 'layui-this':''}"><a href="ab01Query.html">&nbsp&nbsp&nbsp&nbsp销售计划查询</a></dd>
             	<dd class="${param.menu eq 'ab01a' ? 'layui-this':''}"><a href="ab01Add.jsp">&nbsp&nbsp&nbsp&nbsp销售计划添加</a></dd>
          </dl>
        </li>
        <li class="layui-nav-item layui-nav-itemed"><a href="javascript:;">营销方案</a>
          <dl class="layui-nav-child">
          		<dd class="${param.menu eq 'ab03q' ? 'layui-this':''}"><a href="ab03Query.html">&nbsp&nbsp&nbsp&nbsp营销方案查询</a></dd>
             	<dd class="${param.menu eq 'ab03a' ? 'layui-this':''}"><a href="ab03Add.jsp">&nbsp&nbsp&nbsp&nbsp营销方案添加</a></dd>
          </dl>
        </li>
        <li class="layui-nav-item ${param.menu eq 'ab05' ? 'layui-this':''}">
        	<a href="ab05Query.jsp">营销分析</a>
        </li>
      </ul>
    </div>
  </div>