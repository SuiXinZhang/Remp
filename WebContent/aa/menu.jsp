<%@ page language="java" pageEncoding="GBK"%>
<div class="layui-side layui-bg-black">
	<div class="layui-side-scroll">
		<!-- 左侧导航区域（可配合layui已有的垂直导航） -->
		<ul class="layui-nav layui-nav-tree" lay-filter="test">
			<li class="layui-nav-item"><a href="/remp/aa/aa02Query.html?aaa101=1">
				<i class="layui-icon layui-icon-release"></i>
				项目信息
			</a></li>
			
			<li class="layui-nav-item ${param.menu eq 'aa01' ? 'layui-this':''}"><a href="/remp/aa/aa02Select.html?action=03&aaa101=1">
				<i class="layui-icon layui-icon-username"></i>
				部门员工
			</a></li>
			
			<li class="layui-nav-item ${param.menu eq 'aa02' ? 'layui-this':''}"><a href="/remp/aa/aa02Select.html?action=05&aaa101=1">
				<i class="layui-icon layui-icon-tree"></i>
				项目户型
			</a></li>
			
			<li class="layui-nav-item ${param.menu eq 'aa03' ? 'layui-this':''}"><a href="/remp/aa/aa02Select.html?action=06&aaa101=1">
				<i class="layui-icon layui-icon-home"></i>
				区域房源
			</a></li>
			
			<li class="layui-nav-item ${param.menu eq 'aa04' ? 'layui-this':''}"><a href="/remp/aa/aa02Select.html?action=09&aaa101=1">
				<i class="layui-icon layui-icon-rmb"></i>
				付款方式
			</a></li>
			
		</ul>
	</div>
</div>