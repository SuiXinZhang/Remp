<%@ page language="java" pageEncoding="GBK"%>
<% String path = request.getContextPath(); %>
<div class="layui-side layui-bg-black">
    <div class="layui-side-scroll">
      <!-- ��ർ�����򣨿����layui���еĴ�ֱ������ -->
      <ul class="layui-nav layui-nav-tree"  lay-filter="test">
        <li class="layui-nav-item layui-nav-itemed"><a href="javascript:">��������</a>
        	 <dl class="layui-nav-child">
             	<dd class="${param.menu eq 'ac01' ? 'layui-this':''}"><a href="clueAdd.jsp">&nbsp&nbsp&nbsp&nbsp�������</a></dd>
             	<dd class="${param.menu eq 'ac02' ? 'layui-this':''}"><a href="clueManage.jsp">&nbsp&nbsp&nbsp&nbsp��ѯ����</a></dd>
             </dl>
        </li>
        <li class="layui-nav-item layui-nav-itemed"><a href="javascript:;">���ۻ������</a>
        	 <dl class="layui-nav-child">
             	<dd class="${param.menu eq 'ac03' ? 'layui-this':''}"><a href="sellOpport.jsp">&nbsp&nbsp&nbsp&nbsp��ӻ���</a></dd>
             	<dd class="${param.menu eq 'ac04' ? 'layui-this':''}"><a href="sellOpportManage.jsp">&nbsp&nbsp&nbsp&nbsp��ѯ����</a></dd>
             </dl>
        </li>
        <li class="layui-nav-item layui-nav-itemed"><a href="javascript:">�ͻ���������</a>
        	 <dl class="layui-nav-child">
             	<dd class="${param.menu eq 'ac05' ? 'layui-this':''}"><a href="addFollow.jsp">&nbsp&nbsp&nbsp&nbsp�����Ϣ</a></dd>
             	<dd class="${param.menu eq 'ac06' ? 'layui-this':''}"><a href="followManage.jsp">&nbsp&nbsp&nbsp&nbsp��ѯ��Ϣ</a></dd>
             </dl>
        </li>
        <li class="layui-nav-item"><a href="javascript:">�ͻ�̨�˹���</a>
        	 <dl class="layui-nav-child">
             	<dd class="${param.menu eq 'ac07' ? 'layui-this':''}"><a href="addClient.jsp">&nbsp&nbsp&nbsp&nbsp��ӿͻ�</a></dd>
             	<dd class="${param.menu eq 'ac08' ? 'layui-this':''}"><a href="clientManage.jsp">&nbsp&nbsp&nbsp&nbsp��ѯ�ͻ�</a></dd>
             </dl>
        </li>
         <li class="layui-nav-item layui-nav-itemed"><a href="javascript:">�ͻ��ػ�</a>
         	<dl class="layui-nav-child">
             	<dd class="${param.menu eq 'ac09' ? 'layui-this':''}"><a href="clientCare.jsp">&nbsp&nbsp��ӹػ��ƻ�</a></dd>
             	<dd class="${param.menu eq 'ac10' ? 'layui-this':''}"><a href="careManage.jsp">&nbsp&nbsp��ѯ�ػ��ƻ���</a></dd>
             </dl>
         </li>
        <li class="layui-nav-item ${param.menu eq 'ac11' ? 'layui-this':''}"><a href="javascript:">������ϸ��ѯ</a></li>
      </ul>
    </div>
  </div>