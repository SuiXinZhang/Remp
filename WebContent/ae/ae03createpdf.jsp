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
  <div class="layui-anim layui-anim-scale" style="padding: 15px; margin:50px 100px;">
    <fieldset class="layui-elem-field">
 	<legend style="color:black"><h2>��ס֪ͨ��</h2></legend>
 	 <form action="" class="layui-form"  method="post">
  		<div class="layui-field-box">
	    	 <!--startprint1-->
	        <div align="center">
	        <br><br><br><br><br><br>
	        	<h1>��ס֪ͨ��</h1>
	        	<br><br>
				<div style="height: 500px;width: 600px" align="left">
					<p style="line-height: 35px;font-size: 18">�𾴵�  <span style="text-decoration:underline">&ensp;&ensp;${param.aae302 }&ensp;&ensp;</span>����/Ůʿ:</p>
					<p style="line-height: 35px;font-size: 18">&ensp;&ensp;&ensp;&ensp;����!</p>
      

     				<p style="line-height: 35px;font-size: 18">&ensp;&ensp;&ensp;&ensp;˼�����ز������� �޹�˾ȫ��ͬ���������Գ�ֿ���ʺ�!
     					�������ĸ�л���������������ǵĹ�����֧��!</p>

                    <p style="line-height: 35px;font-size: 18">&ensp;&ensp;&ensp;&ensp;�������ҵ�֪ͨ��:���������<span style="text-decoration:underline">&ensp;&ensp;${param.aae312 }&ensp;&ensp;</span>
                    		�ŷ����Ѿ�ͨ��������������,�ﵽ��ס��׼�����ǽ���<span style="text-decoration:underline">&ensp;&ensp;${param.aae307 }&ensp;&ensp;</span>
                    		Ϊ��λҵ��������ס������ͬʱ��Ϊʹ������λҵ���ڰ�����ס�����������ܹ����ܵ��ܵ��ķ����ҹ�˾������ר��ȫ����ͬ������λҵ��������¥�鷿�������ṩ�йط�����������û��ʱ��ǰ
                    		���������ǽ�����������Ҫ��<span style="text-decoration:underline">&ensp;&ensp;${param.aae307 }&ensp;&ensp;</span>��
                    		<span style="text-decoration:underline">&ensp;&ensp;${param.aae308 }&ensp;&ensp;</span>�ڼ�Ϊ�����а���ʱ�䡣�����ڽӵ���֪ͨ�󼴿����ҹ�˾���۲���ϵ���Ͱ�����ס�����ľ���ʱ��������������</p>

      				<p style="line-height: 35px;font-size: 18">&ensp;&ensp;&ensp;&ensp;�ر�����:�󸽡���ס��֪��Ϊ������ס֪ͨ�顷���ɷָ����ɲ��֣�������ϸ�Ķ���</p>

     				<p style="line-height: 35px;font-size: 18">&ensp;&ensp;&ensp;&ensp; �������ϣ������  �ջ����ĳɹ���������ȫ�µ����������ֿף��������ҵ!</p>

				</div>
			</div>
	    <!--endprint1-->
	    <br><br><br><br><br><br>
		    <div class="layui-form-item" align="center">
				<div class="layui-inline">
						<input class="layui-btn layui-btn-normal" type="button" value="��ӡ" onclick="preview(1)">
				</div>
				<div class="layui-inline">
						<input class="layui-btn layui-btn-normal" type="submit" value="����" 
						formaction="<%=path%>/ae/ae03query.html" formnovalidate="formnovalidate" >
				</div>
			</div>
		</div>
		</form>
	</fieldset>
	</div>
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