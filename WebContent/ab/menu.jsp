<%@ page language="java" pageEncoding="GBK"%>
<div class="layui-side layui-bg-black">
    <div class="layui-side-scroll">
      <!-- ��ർ�����򣨿����layui���еĴ�ֱ������ -->
      <ul class="layui-nav layui-nav-tree"  lay-filter="test">
        <li class="layui-nav-item layui-nav-itemed"><a href="javascript:;">���ۼƻ�</a>
          <dl class="layui-nav-child">
          		<dd class="${param.menu eq 'ab01q' ? 'layui-this':''}"><a href="ab01Query.html">&nbsp&nbsp&nbsp&nbsp���ۼƻ���ѯ</a></dd>
             	<dd class="${param.menu eq 'ab01a' ? 'layui-this':''}"><a href="ab01Add.jsp">&nbsp&nbsp&nbsp&nbsp���ۼƻ����</a></dd>
          </dl>
        </li>
        <li class="layui-nav-item layui-nav-itemed"><a href="javascript:;">Ӫ������</a>
          <dl class="layui-nav-child">
          		<dd class="${param.menu eq 'ab03q' ? 'layui-this':''}"><a href="ab03Query.html">&nbsp&nbsp&nbsp&nbspӪ��������ѯ</a></dd>
             	<dd class="${param.menu eq 'ab03a' ? 'layui-this':''}"><a href="ab03Add.jsp">&nbsp&nbsp&nbsp&nbspӪ���������</a></dd>
          </dl>
        </li>
        <li class="layui-nav-item ${param.menu eq 'ab05' ? 'layui-this':''}">
        	<a href="ab05Query.jsp">Ӫ������</a>
        </li>
      </ul>
    </div>
  </div>