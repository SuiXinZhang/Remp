<%@ page language="java" pageEncoding="GBK"%>
<html lang="zh">
<head>
	<jsp:include   page="/base/head.jsp"/>
<script type="text/javascript">
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
            <!--��ӡ-->
</head>
<body>
      <!--startprint1-->
        <div align="center">
        <br><br>
        	<h1>����֤֪ͨ</h1>
        	<br><br>
			<div style="height: 500px;width: 470px" align="left">
				<p><span style="font-size: 18">_______����/С��ϵ___________________</span></p>
				<br>
				<p><span style="font-size: 18">����ҵ��,�ѽ��巿��(����װ�������),׼����ס��</span></p>
				<br>
				<p><span style="font-size: 18">ҵ������____________������ס����,���ڲ�����Ϊ��ס��</span></p>
				<br>
				<p><span style="font-size: 18">ҵ������ȡ��������֤֪ͨ����</span></p>
				<br><br>
				<p><span style="font-size: 18">ҵ��ǩ��:_________</span></p>
			</div>
		</div>
    <!--endprint1-->

<!-- </div> -->
<div class="layui-inline" title="��ӡ"  onclick=preview(1) ><i class="layui-icon layui-icon-face-smile" style="font-size: 30px; color: #1E9FFF;">&#xe621;</i></div>

<script>
    layui.use('element', function(){
        var element = layui.element;
    });
</script>
</body>
</html>