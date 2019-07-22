<%@ page language="java" pageEncoding="GBK"%>
<div class="layui-side layui-bg-black">
    <div class="layui-side-scroll">
      <!-- 左侧导航区域（可配合layui已有的垂直导航） -->
      <ul class="layui-nav layui-nav-tree"  lay-filter="test">
        <li class="layui-nav-item layui-nav-itemed" ><a href="javascript:;">票据管理</a>
          <dl class="layui-nav-child">
          		<dd class="${param.menu eq 'af09' ? 'layui-this':''}"><a href="af01Add.jsp">&nbsp&nbsp&nbsp&nbsp登记票据</a></dd>
             	<dd class="${param.menu eq 'af01' ? 'layui-this':''}"><a href="af02Query.html">&nbsp&nbsp&nbsp&nbsp票据查询</a></dd>
          </dl>
        </li>
        <li class="layui-nav-item"><a href="javascript:;">预收款管理</a>
        	 <dl class="layui-nav-child">
             	<dd class="${param.menu eq 'af02' ? 'layui-this':''}"><a href="af03add.jsp">&nbsp&nbsp&nbsp&nbsp收款详情</a></dd>
             	<dd class="${param.menu eq 'af03' ? 'layui-this':''}"><a href="af03query.jsp">&nbsp&nbsp&nbsp&nbsp查询收款</a></dd>
             </dl>
        </li>
        <li class="layui-nav-item ${param.menu eq 'af04' ? 'layui-this':''}"><a href="">楼款管理</a></li>
        <li class="layui-nav-item ${param.menu eq 'af05' ? 'layui-this':''}"><a href="af06Query.jsp">银行批量放贷</a></li>
         <li class="layui-nav-item ${param.menu eq 'af06' ? 'layui-this':''}"><a href="">单据查询</a></li>
        <li class="layui-nav-item ${param.menu eq 'af07' ? 'layui-this':''}"><a href="af07Query.jsp">催交欠款</a></li>
      </ul>
    </div>
  </div>