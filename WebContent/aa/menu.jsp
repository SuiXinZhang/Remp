<%@ page language="java" pageEncoding="GBK"%>
<div class="layui-side layui-bg-black">
	<div class="layui-side-scroll">
		<!-- ��ർ�����򣨿����layui���еĴ�ֱ������ -->
		<ul class="layui-nav layui-nav-tree" lay-filter="test">
			<li class="layui-nav-item"><a
				href="/remp/aa/aa02Query.html?aaa101=1">��Ŀ��Ϣ����</a></li>
			<li class="layui-nav-item ${param.menu eq 'aa01' ? 'layui-this':''}"><a href="/remp/aa/aa02Select.html?action=03&aaa101=1">����Ա������</a></li>
			<li class="layui-nav-item ${param.menu eq 'aa02' ? 'layui-this':''}"><a href="/remp/aa/aa02Select.html?action=05&aaa101=1">��Ŀ���͹���</a></li>
			<li class="layui-nav-item ${param.menu eq 'aa03' ? 'layui-this':''}"><a href="/remp/aa/aa02Select.html?action=06&aaa101=1">����Դ����</a></li>
			<li class="layui-nav-item ${param.menu eq 'aa04' ? 'layui-this':''}"><a href="/remp/aa/aa02Select.html?action=09&aaa101=1">���ʽ����</a></li>
			<li class="layui-nav-item ${param.menu eq 'aa05' ? 'layui-this':''}"><a href="">�״�����</a></li>
		</ul>
	</div>
</div>