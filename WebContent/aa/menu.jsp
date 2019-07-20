<%@ page language="java" pageEncoding="GBK"%>
<div class="layui-side layui-bg-black">
	<div class="layui-side-scroll">
		<!-- 左侧导航区域（可配合layui已有的垂直导航） -->
		<ul class="layui-nav layui-nav-tree" lay-filter="test">
			<li class="layui-nav-item"><a
				href="/remp/aa/aa02Query.html?aaa101=1">项目信息管理</a></li>
			<li class="layui-nav-item ${param.menu eq 'aa01' ? 'layui-this':''}"><a href="/remp/aa/aa02Select.html?action=03&aaa101=1">部门员工管理</a></li>
			<li class="layui-nav-item ${param.menu eq 'aa02' ? 'layui-this':''}"><a href="/remp/aa/aa02Select.html?action=05&aaa101=1">项目户型管理</a></li>
			<li class="layui-nav-item ${param.menu eq 'aa03' ? 'layui-this':''}"><a href="/remp/aa/aa02Select.html?action=06&aaa101=1">区域房源管理</a></li>
			<li class="layui-nav-item ${param.menu eq 'aa04' ? 'layui-this':''}"><a href="/remp/aa/aa02Select.html?action=09&aaa101=1">付款方式管理</a></li>
			<li class="layui-nav-item ${param.menu eq 'aa05' ? 'layui-this':''}"><a href="">套打设置</a></li>
		</ul>
	</div>
</div>