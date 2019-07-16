<%@ page language="java" pageEncoding="GBK"%>
<div class="layui-side layui-bg-black">
    <div class="layui-side-scroll">
      <!-- 左侧导航区域（可配合layui已有的垂直导航） -->
      <ul class="layui-nav layui-nav-tree"  lay-filter="test">
        <li class="layui-nav-item layui-nav-itemed">
          <a href="javascript:;">服务概况</a>
          <dl class="layui-nav-child">
            <dd><a href="javascript:;">列表一</a></dd>
            <dd><a href="javascript:;">列表二</a></dd>
            <dd><a href="javascript:;">列表三</a></dd>
            <dd><a href="">超链接</a></dd>
          </dl>
        </li>
        <li class="layui-nav-item">
          <a href="">合同登记服务</a>
        </li>
        <li class="layui-nav-item"><a href="">贷款服务</a></li>
        <li class="layui-nav-item"><a href="">入伙服务</a></li>
        <li class="layui-nav-item"><a href="">产权服务</a></li>
        <li class="layui-nav-item"><a href="">面积补差</a></li>
      </ul>
    </div>
  </div>