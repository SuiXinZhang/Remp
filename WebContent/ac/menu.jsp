<%@ page language="java" pageEncoding="GBK"%>
<% String path = request.getContextPath(); %>
<div class="layui-side layui-bg-black">
    <div class="layui-side-scroll">
      <!-- 左侧导航区域（可配合layui已有的垂直导航） -->
      <ul class="layui-nav layui-nav-tree"  lay-filter="test">
        <li class="layui-nav-item">
          <a href="<%=path %>/ac/clueManage.jsp">线索管理</a>
        </li>
        <li class="layui-nav-item">
          <a href="javascript:;">销售机会管理</a>
        </li>
        <li class="layui-nav-item"><a href="">客户跟进管理</a></li>
        <li class="layui-nav-item"><a href="">客户台账管理</a></li>
         <li class="layui-nav-item"><a href="">客户关怀</a></li>
        <li class="layui-nav-item"><a href="">交互明细查询</a></li>
      </ul>
    </div>
  </div>