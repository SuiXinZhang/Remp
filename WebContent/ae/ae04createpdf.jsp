<%@ page language="java" pageEncoding="GBK"%>
<%@include file="/../base/taglib.jsp" %>
<html>
<head>
	<jsp:include   page="/base/head.jsp"/>
</head>
<body class="layui-layout-body">
<div class="layui-layout layui-layout-admin">
	<jsp:include   page="/base/header.jsp"/>
	 <c:import url="/ae/menu.jsp">
        <c:param name="menu" value="ae03"/>
     </c:import>
  <div class="layui-body">
   <form action="" class="layui-form"  method="post">
  <div class="layui-anim layui-anim-scale" style="padding: 15px; margin:50px 100px;">
	    	 <!--startprint1-->
	        <div align="center">
	        <br><br><br><br><br><br>
	        	<h1>��������Ȩ֤����֪ͨ��</h1>
	        	<br><br>
				<div style="height: 500px;width: 600px" align="left">
					<p style="line-height: 35px;font-size: 18">�𾴵�  <span style="text-decoration:underline">&ensp;&ensp;
					${param.aae402 }&ensp;&ensp;</span>����/Ůʿ:</p>
					<p style="line-height: 35px;font-size: 18">&ensp;&ensp;&ensp;&ensp;����!</p>
      

     				<p style="line-height: 35px;font-size: 18">&ensp;&ensp;&ensp;&ensp;  ��л��������˾������˼��סլ,
 					<span style="text-decoration:underline">&ensp;&ensp;${param.aae416 }&ensp;&ensp;</span> ����
     				��֪ͨ����ǰ����˾�����֪ͨ��ǰ���ύ����÷�������Ȩ֤�������ϣ���������δ����������˾�ٴ�֣�ص�֪ͨ�������������յ���֪֮ͨ����
     				<span style="text-decoration:underline">&ensp;&ensp;  15 &ensp;&ensp;</span> ���ڴ�����
     				�����ϵ���˾����������Ȩ֤���������(��ַ:<span style="text-decoration:underline">&ensp;&ensp;�����&ensp;&ensp;</span>
     				�绰:<span style="text-decoration:underline">&ensp;&ensp;8888888&ensp;&ensp;</span></p>
                    <p style="line-height: 35px;font-size: 18">&ensp;&ensp;&ensp;&ensp;����˾����������Ȩ֤�������ʱ���Я����������:</p>
      				<p style="line-height: 35px;font-size: 18">&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;(1)����Ʒ��������ͬ��ԭ��;</p>
     				<p style="line-height: 35px;font-size: 18">&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;(2)ҵ�����֤ԭ������ӡ��___ ��:</p>
					<p style="line-height: 35px;font-size: 18">&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;(3)�����վ��Լ���˰��ά���ʽ��վ�(��
					δ������˰����ҵ.ά���ʽ�ģ��ɽ���ط��ý�����˾������˾ͳһ���ɴ���)��</p>
					<p style="line-height: 35px;font-size: 18">&ensp;&ensp;&ensp;&ensp;ע:������δ�����շ����������ȵ�______
					�����շ��������ٽ��в�Ȩ����</p>
					<p style="line-height: 35px;font-size: 18">&ensp;&ensp;&ensp;&ensp;�ڴˣ���˾֣�����ѣ�����δ����Լǰ�������ɴ˲�����һ
					�з������μ������������ге�����˾���е��κ����Ρ�</p>
					<p style="line-height: 35px;font-size: 18">&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;�ش�֪ͨ</p>
					<p style="line-height: 35px;font-size: 18">&ensp;&ensp;&ensp;&ensp;ף������˳��!</p>
      				<p style="line-height: 35px;font-size: 18" align="right">˼���������ι�˾</p>
					<p style="line-height: 35px;font-size: 18" align="right">${param.aae409 }</p>
					
				</div>
			</div>
	    <!--endprint1-->
	    <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
	    <div align="center">
	    	<div class="layui-inline">
				<input class="layui-btn layui-btn-normal" type="button" value="��ӡ" onclick="preview(1)">
			</div>
			<div class="layui-inline">
				<input class="layui-btn layui-btn-normal" type="submit" value="����" 
				formaction="<%=path%>/ae/ae04query.html" formnovalidate="formnovalidate" >
			</div>
		</div>
	</div>
	</form>
  </div>
  
  <div class="layui-footer">
  </div>
</div>

<script>
layui.use(['layer', 'form','element'], function(){
	var element = layui.element;
	var layer = layui.layer
	,form = layui.form;
	})
	
function preview(oper)
{
    if (oper < 10){
        bdhtml=window.document.body.innerHTML;//��ȡ��ǰҳ��html����
        sprnstr="<!--startprint"+oper+"-->";//���ô�ӡ��ʼ����
        eprnstr="<!--endprint"+oper+"-->";//���ô�ӡ��������
        prnhtml=bdhtml.substring(bdhtml.indexOf(sprnstr)+18); //�ӿ�ʼ�������ȡhtml
        prnhtml=prnhtml.substring(0,prnhtml.indexOf(eprnstr));//�ӽ���������ǰȡhtml
        window.document.body.innerHTML=prnhtml;
        window.print();
        window.document.body.innerHTML=bdhtml;
    } else {
        window.print();
    }
}
</script>
</body>
</html>