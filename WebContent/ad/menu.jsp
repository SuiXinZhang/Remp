<%@ page language="java" pageEncoding="GBK"%>
<%String path = request.getContextPath(); %>
<div class="layui-side layui-bg-black">
    <div class="layui-side-scroll">
      <!-- ��ർ�����򣨿����layui���еĴ�ֱ������ -->
      <ul class="layui-nav layui-nav-tree"  lay-filter="test">
        <li class="layui-nav-item"><a href="adqueryRoom.jsp">��Դ��ѯ</a></li>
        <li class="layui-nav-item layui-nav-itemed" ><a href="javascript:">ԤԼ�ź�</a>
             <dl class="layui-nav-child">
             	<dd><a href="ad01customerQuery.jsp">&nbsp&nbsp&nbsp&nbsp���ԤԼ</a></dd>
             	<dd><a href="ad01queryOrder.jsp">&nbsp&nbsp&nbsp&nbsp��ѯԤԼ</a></dd>
             	<dd><a href="ad01addOrder.jsp">&nbsp&nbsp&nbsp&nbsp��ѯ�˺�</a></dd>
             </dl>
             </li>
        <li class="layui-nav-item"><a href="">ѡ��ȷ��</a></li>
        <li class="layui-nav-item"><a href="">��������</a></li>
        <li class="layui-nav-item"><a href="">��ͬ����</a></li>
        <li class="layui-nav-item"><a href="">ҵ����</a></li>
        <li class="layui-nav-item"><a href="">�������</a></li>
        <li class="layui-nav-item"><a href="">�����־</a></li>
        <li class="layui-nav-item"><a href="">������־</a></li>
      </ul>
    </div>
  </div>