<%@ page language="java" pageEncoding="GBK"%>
<% String path = request.getContextPath(); %>
<div class="layui-side layui-bg-black">
    <div class="layui-side-scroll">
      <!-- ��ർ�����򣨿����layui���еĴ�ֱ������ -->
      <ul class="layui-nav layui-nav-tree"  lay-filter="test">
        <li class="layui-nav-item layui-nav-itemed"><a href="javascript:">��������</a>
        	 <dl class="layui-nav-child">
             	<dd class="${param.menu eq 'ac01' ? 'layui-this':''}"><a href="clueAdd.jsp">&nbsp&nbsp&nbsp&nbsp�������</a></dd>
             	<dd class="${param.menu eq 'ac02' ? 'layui-this':''}"><a href="ac01Query.html">&nbsp&nbsp&nbsp&nbsp��ѯ����</a></dd>
             </dl>
        </li>
        <li class="layui-nav-item layui-nav-itemed"><a href="javascript:;">���ۻ������</a>
        	 <dl class="layui-nav-child">
             	<dd class="${param.menu eq 'ac03' ? 'layui-this':''}"><a href="sellOpport.jsp">&nbsp&nbsp&nbsp&nbsp��ӻ���</a></dd>
             	<dd class="${param.menu eq 'ac04' ? 'layui-this':''}"><a href="ac02Query.html">&nbsp&nbsp&nbsp&nbsp��ѯ����</a></dd>
             </dl>
        </li>
        <li class="layui-nav-item layui-nav-itemed"><a href="javascript:">�ͻ�̨�˹���</a>
        	 <dl class="layui-nav-child">
             	<dd class="${param.menu eq 'ac07' ? 'layui-this':''}"><a href="addClient.jsp">&nbsp&nbsp&nbsp&nbsp��ӿͻ�</a></dd>
             	<dd class="${param.menu eq 'ac08' ? 'layui-this':''}"><a href="ac04Query.html">&nbsp&nbsp&nbsp&nbsp��ѯ�ͻ�</a></dd>
             </dl>
        </li>
        <li class="layui-nav-item layui-nav-itemed"><a href="ac03Query.html">�ͻ���������</a>
        </li>
        
         <li class="layui-nav-item layui-nav-itemed"><a href="javascript:">�ͻ��ػ�</a>
         	<dl class="layui-nav-child">
             	<dd class="${param.menu eq 'ac09' ? 'layui-this':''}"><a href="ac04QueryForClient.html">&nbsp&nbsp��ӹػ��ƻ�</a></dd>
             	<dd class="${param.menu eq 'ac10' ? 'layui-this':''}"><a href="ac05Query.html">&nbsp&nbsp��ѯ�ػ��ƻ�</a></dd>
             </dl>
         </li>
        <li class="layui-nav-item ${param.menu eq 'ac11' ? 'layui-this':''}"><a href="#" onclick="toMsg('�ù��ܻ��ڿ�����......')">������ϸ��ѯ</a></li>
      </ul>
    </div>
    <form action="index.jsp" id="form" method="post">
    <input type="hidden" name="msg" value="" id="msg">
    </form>
  </div>
  <script>
  function toMsg(vContext)
  {
	  var msg = document.getElementById("msg");
	  msg.value = vContext;
	  var form = document.getElementById("form");
	  form.submit();
  }
  </script>