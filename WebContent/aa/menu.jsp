<%@ page language="java" pageEncoding="GBK"%>
<div class="layui-side layui-bg-black">
	<div class="layui-side-scroll">
		<!-- ��ർ�����򣨿����layui���еĴ�ֱ������ -->
		<ul class="layui-nav layui-nav-tree" lay-filter="test">
			<li class="layui-nav-item"><a href="/remp/aa/aa02Query.html?aaa101=1">
				<i class="layui-icon layui-icon-release"></i>
				��Ŀ��Ϣ
			</a></li>
			
			<li class="layui-nav-item ${param.menu eq 'aa01' ? 'layui-this':''}"><a href="/remp/aa/aa02Select.html?action=03&aaa101=1">
				<i class="layui-icon layui-icon-username"></i>
				����Ա��
			</a></li>
			
			<li class="layui-nav-item ${param.menu eq 'aa02' ? 'layui-this':''}"><a href="/remp/aa/aa02Select.html?action=05&aaa101=1">
				<i class="layui-icon layui-icon-tree"></i>
				��Ŀ����
			</a></li>
			
			<li class="layui-nav-item ${param.menu eq 'aa03' ? 'layui-this':''}"><a href="/remp/aa/aa02Select.html?action=06&aaa101=1">
				<i class="layui-icon layui-icon-home"></i>
				����Դ
			</a></li>
			
			<li class="layui-nav-item ${param.menu eq 'aa04' ? 'layui-this':''}"><a href="/remp/aa/aa02Select.html?action=09&aaa101=1">
				<i class="layui-icon layui-icon-rmb"></i>
				���ʽ
			</a></li>
			
		</ul>
	</div>
</div>