<%@ page language="java" pageEncoding="GBK"%>
<div class="layui-side layui-bg-black">
    <div class="layui-side-scroll">
      <!-- ��ർ�����򣨿����layui���еĴ�ֱ������ -->
      <ul class="layui-nav layui-nav-tree"  lay-filter="test">
        <li class="layui-nav-item layui-nav-itemed">
          <a href="#">����ſ�</a>
          <!-- <dl class="layui-nav-child">
            <dd><a href="javascript:;">�б�һ</a></dd>
            <dd><a href="javascript:;">�б��</a></dd>
            <dd><a href="javascript:;">�б���</a></dd>
            <dd><a href="">������</a></dd>
          </dl> -->
        </li>
        <li class="layui-nav-item ${param.menu eq 'ae01' ? 'layui-this':''}"><a href="/remp/ae/ae01query.html?aaa201='1'">��ͬ�ǼǷ���</a></li>
        <li class="layui-nav-item ${param.menu eq 'ae02' ? 'layui-this':''}"><a href="/remp/ae/ae02query.html">�������</a></li>
        <li class="layui-nav-item ${param.menu eq 'ae03' ? 'layui-this':''}"><a href="/remp/ae/ae03query.html">������</a></li>
        <li class="layui-nav-item ${param.menu eq 'ae04' ? 'layui-this':''}"><a href="/remp/ae/ae04query.html">��Ȩ����</a></li>
        <li class="layui-nav-item ${param.menu eq 'ae07' ? 'layui-this':''}"><a href="/remp/ae/ae07query.html">�������</a></li>
      </ul>
    </div>
  </div>