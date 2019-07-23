<%@ page language="java" pageEncoding="GBK"%>
<div class="layui-side layui-bg-black">
    <div class="layui-side-scroll">
      <!-- 左侧导航区域（可配合layui已有的垂直导航） -->
      <ul class="layui-nav layui-nav-tree"  lay-filter="test">
        <li class="layui-nav-item layui-nav-itemed">
          <a href="#">服务概况</a>
          <dl class="layui-nav-child">
            <dd class="${param.menu eq 'ae1' ? 'layui-this':''}"><a href="/remp/ae/ae01show.html">合同概况</a></dd>
            <dd class="${param.menu eq 'ae2' ? 'layui-this':''}"><a href="/remp/ae/ae02show.html">贷款概况</a></dd>
            <dd class="${param.menu eq 'ae4' ? 'layui-this':''}"><a href="/remp/ae/ae04show.html">产权概况</a></dd>
            <dd class="${param.menu eq 'ae5' ? 'layui-this':''}"><a href="/remp/ae/ae05show.html">面积补差概况</a></dd>
          </dl>
        </li>
        <li class="layui-nav-item ${param.menu eq 'ae01' ? 'layui-this':''}"><a href="/remp/ae/ae01query.html?aaa201='1'">合同登记服务</a></li>
        <li class="layui-nav-item ${param.menu eq 'ae02' ? 'layui-this':''}"><a href="/remp/ae/ae02query.html">贷款服务</a></li>
        <li class="layui-nav-item ${param.menu eq 'ae03' ? 'layui-this':''}"><a href="/remp/ae/ae03query.html">入伙服务</a></li>
        <li class="layui-nav-item ${param.menu eq 'ae04' ? 'layui-this':''}"><a href="/remp/ae/ae04query.html">产权服务</a></li>
        <li class="layui-nav-item ${param.menu eq 'ae07' ? 'layui-this':''}"><a href="/remp/ae/ae07query.html">面积补差</a></li>
      </ul>
    </div>
  </div>