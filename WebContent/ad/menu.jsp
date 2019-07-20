<%@ page language="java" pageEncoding="GBK"%>
<%String path = request.getContextPath(); %>
<div class="layui-side layui-bg-black">
    <div class="layui-side-scroll">
      <!-- 左侧导航区域（可配合layui已有的垂直导航） -->
      <ul class="layui-nav layui-nav-tree"  lay-filter="test">
        <li class="layui-nav-item"><a href="adqueryRoom.jsp">房源查询</a></li>
        <li class="layui-nav-item layui-nav-itemed" ><a href="javascript:">预约排号</a>
             <dl class="layui-nav-child">
             	<dd class="${param.menu eq 'ad01' ? 'layui-this':''}"><a href="ad01customerQuery.jsp">&nbsp&nbsp&nbsp&nbsp添加预约</a></dd>
             	<dd class="${param.menu eq 'ad02' ? 'layui-this':''}"><a href="ad01queryOrder.jsp">&nbsp&nbsp&nbsp&nbsp查询预约</a></dd>
             	<dd class="${param.menu eq 'ad03' ? 'layui-this':''}"><a href="ad02queryWithdrawOrder.jsp">&nbsp&nbsp&nbsp&nbsp查询退号</a></dd>
             </dl>
        </li>
        <li class="layui-nav-item layui-nav-itemed"><a href="javascript:">选房管理</a>
        	 <dl class="layui-nav-child">
             	<dd class="${param.menu eq 'ad04' ? 'layui-this':''}"><a href="ad03confirm.jsp">&nbsp&nbsp&nbsp&nbsp选房确认</a></dd>
             	<dd class="${param.menu eq 'ad05' ? 'layui-this':''}"><a href="ad03query.jsp">&nbsp&nbsp&nbsp&nbsp看房记录</a></dd>
             </dl>
        </li>
        <li class="layui-nav-item layui-nav-itemed"><a href="javascript:">订单管理</a>
        	 <dl class="layui-nav-child">
             	<dd class="${param.menu eq 'ad06' ? 'layui-this':''}"><a href="ad04addPurchase.jsp">&nbsp&nbsp&nbsp&nbsp添加订单</a></dd>
             	<dd class="${param.menu eq 'ad07' ? 'layui-this':''}"><a href="ad04queryPurchase.jsp">&nbsp&nbsp&nbsp&nbsp订单记录</a></dd>
             	<dd class="${param.menu eq 'ad08' ? 'layui-this':''}"><a href="ad05customerQuery.jsp">&nbsp&nbsp&nbsp&nbsp添加预留</a></dd>
             	<dd class="${param.menu eq 'ad09' ? 'layui-this':''}"><a href="ad05query.jsp">&nbsp&nbsp&nbsp&nbsp预留信息</a></dd>
             </dl>
        </li>
        <li class="layui-nav-item layui-nav-itemed"><a href="javascript:">合同管理</a>
        	 <dl class="layui-nav-child">
             	<dd class="${param.menu eq 'ad10' ? 'layui-this':''}"><a href="ad07addAgreement.jsp">&nbsp&nbsp&nbsp&nbsp添加合同</a></dd>
             	<dd class="${param.menu eq 'ad11' ? 'layui-this':''}"><a href="ad07queryAgreement.jsp">&nbsp&nbsp&nbsp&nbsp合同记录</a></dd>
             </dl>
        </li>
        <li class="layui-nav-item ${param.menu eq 'ad12' ? 'layui-this':''}"><a href="ad06addApply.jsp">业务变更</a></li>
        <li class="layui-nav-item ${param.menu eq 'ad13' ? 'layui-this':''}"><a href="ad06queryApply.jsp">变更审批</a></li>
        <li class="layui-nav-item ${param.menu eq 'ad14' ? 'layui-this':''}"><a href="javascript: ">变更日志</a></li>
        <li class="layui-nav-item"><a href="javascript:">销售日志</a>
        	 <dl class="layui-nav-child">
             	<dd class="${param.menu eq 'ad15' ? 'layui-this':''}"><a href="ad08addsalesLog.jsp">&nbsp&nbsp&nbsp&nbsp添加日志</a></dd>
             	<dd class="${param.menu eq 'ad16' ? 'layui-this':''}"><a href="ad08querysalesLog.jsp">&nbsp&nbsp&nbsp&nbsp查看日志</a></dd>
             </dl>
        </li>
      </ul>
    </div>
  </div>