<%@ page language="java" pageEncoding="GBK"%>
<% String path = request.getContextPath(); %>
<div class="layui-side layui-bg-black">
    <div class="layui-side-scroll">
      <!-- 左侧导航区域（可配合layui已有的垂直导航） -->
      <ul class="layui-nav layui-nav-tree"  lay-filter="test">
        <li class="layui-nav-item layui-nav-itemed"><a href="javascript:">线索管理</a>
        	 <dl class="layui-nav-child">
             	<dd class="${param.menu eq 'ac01' ? 'layui-this':''}"><a href="clueAdd.jsp">&nbsp&nbsp&nbsp&nbsp添加线索</a></dd>
             	<dd class="${param.menu eq 'ac02' ? 'layui-this':''}"><a href="clueManage.jsp">&nbsp&nbsp&nbsp&nbsp查询线索</a></dd>
             </dl>
        </li>
        <li class="layui-nav-item layui-nav-itemed"><a href="javascript:;">销售机会管理</a>
        	 <dl class="layui-nav-child">
             	<dd class="${param.menu eq 'ac03' ? 'layui-this':''}"><a href="sellOpport.jsp">&nbsp&nbsp&nbsp&nbsp添加机会</a></dd>
             	<dd class="${param.menu eq 'ac04' ? 'layui-this':''}"><a href="sellOpportManage.jsp">&nbsp&nbsp&nbsp&nbsp查询机会</a></dd>
             </dl>
        </li>
        <li class="layui-nav-item layui-nav-itemed"><a href="javascript:">客户跟进管理</a>
        	 <dl class="layui-nav-child">
             	<dd class="${param.menu eq 'ac05' ? 'layui-this':''}"><a href="addFollow.jsp">&nbsp&nbsp&nbsp&nbsp添加信息</a></dd>
             	<dd class="${param.menu eq 'ac06' ? 'layui-this':''}"><a href="followManage.jsp">&nbsp&nbsp&nbsp&nbsp查询信息</a></dd>
             </dl>
        </li>
        <li class="layui-nav-item"><a href="javascript:">客户台账管理</a>
        	 <dl class="layui-nav-child">
             	<dd class="${param.menu eq 'ac07' ? 'layui-this':''}"><a href="addClient.jsp">&nbsp&nbsp&nbsp&nbsp添加客户</a></dd>
             	<dd class="${param.menu eq 'ac08' ? 'layui-this':''}"><a href="clientManage.jsp">&nbsp&nbsp&nbsp&nbsp查询客户</a></dd>
             </dl>
        </li>
         <li class="layui-nav-item layui-nav-itemed"><a href="javascript:">客户关怀</a>
         	<dl class="layui-nav-child">
             	<dd class="${param.menu eq 'ac09' ? 'layui-this':''}"><a href="clientCare.jsp">&nbsp&nbsp添加关怀计划</a></dd>
             	<dd class="${param.menu eq 'ac10' ? 'layui-this':''}"><a href="careManage.jsp">&nbsp&nbsp查询关怀计划户</a></dd>
             </dl>
         </li>
        <li class="layui-nav-item ${param.menu eq 'ac11' ? 'layui-this':''}"><a href="javascript:">交互明细查询</a></li>
      </ul>
    </div>
  </div>