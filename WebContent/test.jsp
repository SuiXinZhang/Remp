<%@ page language="java" pageEncoding="GBK"%>
<html lang="zh">
<head>
	<jsp:include   page="/base/head.jsp"/>
<script type="text/javascript">
    function preview(oper)
    {
        if (oper < 10){
            bdhtml=window.document.body.innerHTML;//获取当前页的html代码
            sprnstr="<!--startprint"+oper+"-->";//设置打印开始区域
            eprnstr="<!--endprint"+oper+"-->";//设置打印结束区域
            prnhtml=bdhtml.substring(bdhtml.indexOf(sprnstr)+18); //从开始代码向后取html
            prnhtml=prnhtml.substring(0,prnhtml.indexOf(eprnstr));//从结束代码向前取html
            window.document.body.innerHTML=prnhtml;
            window.print();
            window.document.body.innerHTML=bdhtml;
        } else {
            window.print();
        }
    }
</script>
            <!--打印-->
</head>
<body>
      <!--startprint1-->
        <div align="center">
        <br><br>
        	<h1>房产证通知</h1>
        	<br><br>
			<div style="height: 500px;width: 470px" align="left">
				<p><span style="font-size: 18">_______先生/小姐系___________________</span></p>
				<br>
				<p><span style="font-size: 18">房间业主,已交清房款(或办妥按揭手续),准予入住。</span></p>
				<br>
				<p><span style="font-size: 18">业主将于____________办理入住手续,逾期不办视为入住。</span></p>
				<br>
				<p><span style="font-size: 18">业主已领取《办理房产证通知》。</span></p>
				<br><br>
				<p><span style="font-size: 18">业主签名:_________</span></p>
			</div>
		</div>
    <!--endprint1-->

<!-- </div> -->
<div class="layui-inline" title="打印"  onclick=preview(1) ><i class="layui-icon layui-icon-face-smile" style="font-size: 30px; color: #1E9FFF;">&#xe621;</i></div>

<script>
    layui.use('element', function(){
        var element = layui.element;
    });
</script>
</body>
</html>