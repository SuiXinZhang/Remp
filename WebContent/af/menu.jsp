<%@ page language="java" pageEncoding="GBK"%>
<div class="layui-side layui-bg-black">
    <div class="layui-side-scroll">
      <!-- ��ർ�����򣨿����layui���еĴ�ֱ������ -->
      <ul class="layui-nav layui-nav-tree"  lay-filter="test">
        <li class="layui-nav-item layui-nav-itemed" ><a href="javascript:;">Ʊ�ݹ���</a>
          <dl class="layui-nav-child">
          		<dd class="${param.menu eq 'af09' ? 'layui-this':''}"><a href="af01Add.jsp">&nbsp&nbsp&nbsp&nbsp�Ǽ�Ʊ��</a></dd>
             	<dd class="${param.menu eq 'af01' ? 'layui-this':''}"><a href="af02Query.html">&nbsp&nbsp&nbsp&nbspƱ�ݲ�ѯ</a></dd>
          </dl>
        </li>
        <li class="layui-nav-item"><a href="javascript:;">Ԥ�տ����</a>
        	 <dl class="layui-nav-child">
             	<dd class="${param.menu eq 'af02' ? 'layui-this':''}"><a href="af03add.jsp">&nbsp&nbsp&nbsp&nbsp�տ�����</a></dd>
             	<dd class="${param.menu eq 'af03' ? 'layui-this':''}"><a href="af03query.jsp">&nbsp&nbsp&nbsp&nbsp��ѯ�տ�</a></dd>
             </dl>
        </li>
        <li class="layui-nav-item ${param.menu eq 'af04' ? 'layui-this':''}"><a href="">¥�����</a></li>
        <li class="layui-nav-item ${param.menu eq 'af05' ? 'layui-this':''}"><a href="af06Query.jsp">���������Ŵ�</a></li>
         <li class="layui-nav-item ${param.menu eq 'af06' ? 'layui-this':''}"><a href="">���ݲ�ѯ</a></li>
        <li class="layui-nav-item ${param.menu eq 'af07' ? 'layui-this':''}"><a href="af07Query.jsp">�߽�Ƿ��</a></li>
      </ul>
    </div>
  </div>