<%@ page language="java" pageEncoding="GBK"%>
<%String path = request.getContextPath(); %>
<div class="layui-side layui-bg-black">
    <div class="layui-side-scroll">
      <!-- ��ർ�����򣨿����layui���еĴ�ֱ������ -->
      <ul class="layui-nav layui-nav-tree"  lay-filter="test">
        <li class="layui-nav-item"><a href="adqueryRoom.jsp">��Դ��ѯ</a></li>
        <li class="layui-nav-item layui-nav-itemed" ><a href="javascript:">ԤԼ�ź�</a>
             <dl class="layui-nav-child">
             	<dd class="${param.menu eq 'ad01' ? 'layui-this':''}"><a href="ad01customerQuery.jsp">&nbsp&nbsp&nbsp&nbsp���ԤԼ</a></dd>
             	<dd class="${param.menu eq 'ad02' ? 'layui-this':''}"><a href="ad01queryOrder.jsp">&nbsp&nbsp&nbsp&nbsp��ѯԤԼ</a></dd>
             	<dd class="${param.menu eq 'ad03' ? 'layui-this':''}"><a href="ad02queryWithdrawOrder.jsp">&nbsp&nbsp&nbsp&nbsp��ѯ�˺�</a></dd>
             </dl>
        </li>
        <li class="layui-nav-item layui-nav-itemed"><a href="javascript:">ѡ������</a>
        	 <dl class="layui-nav-child">
             	<dd class="${param.menu eq 'ad04' ? 'layui-this':''}"><a href="ad03confirm.jsp">&nbsp&nbsp&nbsp&nbspѡ��ȷ��</a></dd>
             	<dd class="${param.menu eq 'ad05' ? 'layui-this':''}"><a href="ad03query.jsp">&nbsp&nbsp&nbsp&nbsp������¼</a></dd>
             </dl>
        </li>
        <li class="layui-nav-item layui-nav-itemed"><a href="javascript:">��������</a>
        	 <dl class="layui-nav-child">
             	<dd class="${param.menu eq 'ad06' ? 'layui-this':''}"><a href="ad04addPurchase.jsp">&nbsp&nbsp&nbsp&nbsp��Ӷ���</a></dd>
             	<dd class="${param.menu eq 'ad07' ? 'layui-this':''}"><a href="ad04queryPurchase.jsp">&nbsp&nbsp&nbsp&nbsp������¼</a></dd>
             	<dd class="${param.menu eq 'ad08' ? 'layui-this':''}"><a href="ad05customerQuery.jsp">&nbsp&nbsp&nbsp&nbsp���Ԥ��</a></dd>
             	<dd class="${param.menu eq 'ad09' ? 'layui-this':''}"><a href="ad05query.jsp">&nbsp&nbsp&nbsp&nbspԤ����Ϣ</a></dd>
             </dl>
        </li>
        <li class="layui-nav-item layui-nav-itemed"><a href="javascript:">��ͬ����</a>
        	 <dl class="layui-nav-child">
             	<dd class="${param.menu eq 'ad10' ? 'layui-this':''}"><a href="ad07addAgreement.jsp">&nbsp&nbsp&nbsp&nbsp��Ӻ�ͬ</a></dd>
             	<dd class="${param.menu eq 'ad11' ? 'layui-this':''}"><a href="ad07queryAgreement.jsp">&nbsp&nbsp&nbsp&nbsp��ͬ��¼</a></dd>
             </dl>
        </li>
        <li class="layui-nav-item ${param.menu eq 'ad12' ? 'layui-this':''}"><a href="ad06addApply.jsp">ҵ����</a></li>
        <li class="layui-nav-item ${param.menu eq 'ad13' ? 'layui-this':''}"><a href="ad06queryApply.jsp">�������</a></li>
        <li class="layui-nav-item ${param.menu eq 'ad14' ? 'layui-this':''}"><a href="javascript: ">�����־</a></li>
        <li class="layui-nav-item"><a href="javascript:">������־</a>
        	 <dl class="layui-nav-child">
             	<dd class="${param.menu eq 'ad15' ? 'layui-this':''}"><a href="ad08addsalesLog.jsp">&nbsp&nbsp&nbsp&nbsp�����־</a></dd>
             	<dd class="${param.menu eq 'ad16' ? 'layui-this':''}"><a href="ad08querysalesLog.jsp">&nbsp&nbsp&nbsp&nbsp�鿴��־</a></dd>
             </dl>
        </li>
      </ul>
    </div>
  </div>