<%@ page language="java" pageEncoding="GBK"%>
<div class="layui-side layui-bg-black">
    <div class="layui-side-scroll">
      <!-- ��ർ�����򣨿����layui���еĴ�ֱ������ -->
      <ul class="layui-nav layui-nav-tree"  lay-filter="test">
        <li class="layui-nav-item ${param.menu eq 'ab01' ? 'layui-this':''}">
          <a href="ab01Query.jsp">���ۼƻ�</a>
        </li>
        <li class="layui-nav-item ${param.menu eq 'ab02' ? 'layui-this':''}">
          <a href="ab03Query.jsp">Ӫ������</a>
        </li>
        <li class="layui-nav-item ${param.menu eq 'ab03' ? 'layui-this':''}">
        	<a href="ab05Query.jsp">Ӫ������</a>
        </li>
      </ul>
    </div>
  </div>