<%@ page language="java" pageEncoding="GBK"%>
<% String path = request.getContextPath(); %>
<div class="layui-side layui-bg-black">
    <div class="layui-side-scroll">
      <!-- ��ർ�����򣨿����layui���еĴ�ֱ������ -->
      <ul class="layui-nav layui-nav-tree"  lay-filter="test">
        <li class="layui-nav-item">
          <a href="<%=path %>/ac/clueManage.jsp">��������</a>
        </li>
        <li class="layui-nav-item">
          <a href="javascript:;">���ۻ������</a>
        </li>
        <li class="layui-nav-item"><a href="">�ͻ���������</a></li>
        <li class="layui-nav-item"><a href="">�ͻ�̨�˹���</a></li>
         <li class="layui-nav-item"><a href="">�ͻ��ػ�</a></li>
        <li class="layui-nav-item"><a href="">������ϸ��ѯ</a></li>
      </ul>
    </div>
  </div>