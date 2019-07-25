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
	        	<h1>房屋所有权证办理通知书</h1>
	        	<br><br>
				<div style="height: 500px;width: 600px" align="left">
					<p style="line-height: 35px;font-size: 18">尊敬的  <span style="text-decoration:underline">&ensp;&ensp;
					${param.aae402 }&ensp;&ensp;</span>先生/女士:</p>
					<p style="line-height: 35px;font-size: 18">&ensp;&ensp;&ensp;&ensp;您好!</p>
      

     				<p style="line-height: 35px;font-size: 18">&ensp;&ensp;&ensp;&ensp;  感谢您购买我司开发的思安住宅,
 					<span style="text-decoration:underline">&ensp;&ensp;${param.aae416 }&ensp;&ensp;</span> 房。
     				本通知发出前，我司曾多次通知您前来提交办理该房屋所有权证所需资料，您至今仍未来办理。现我司再次郑重的通知您，谨请您在收到本通知之日起
     				<span style="text-decoration:underline">&ensp;&ensp;  15 &ensp;&ensp;</span> 日内带齐相
     				关资料到我司办理房屋所有权证的相关手续(地址:<span style="text-decoration:underline">&ensp;&ensp;天津东软&ensp;&ensp;</span>
     				电话:<span style="text-decoration:underline">&ensp;&ensp;8888888&ensp;&ensp;</span></p>
                    <p style="line-height: 35px;font-size: 18">&ensp;&ensp;&ensp;&ensp;来我司办理房屋所有权证相关手续时务必携带下列资料:</p>
      				<p style="line-height: 35px;font-size: 18">&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;(1)《商品房买卖合同》原件;</p>
     				<p style="line-height: 35px;font-size: 18">&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;(2)业主身份证原件及复印件___ 份:</p>
					<p style="line-height: 35px;font-size: 18">&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;(3)房款收据以及契税，维修资金收据(如
					未交纳契税、物业.维修资金的，可将相关费用交付我司，由我司统一缴纳代办)。</p>
					<p style="line-height: 35px;font-size: 18">&ensp;&ensp;&ensp;&ensp;注:如您尚未办理收房手续，请先到______
					办理收房手续，再进行产权办理。</p>
					<p style="line-height: 35px;font-size: 18">&ensp;&ensp;&ensp;&ensp;在此，我司郑重提醒，如您未能如约前来办理，由此产生的一
					切法律责任及费用由您自行承担，我司不承担任何责任。</p>
					<p style="line-height: 35px;font-size: 18">&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;特此通知</p>
					<p style="line-height: 35px;font-size: 18">&ensp;&ensp;&ensp;&ensp;祝您工作顺利!</p>
      				<p style="line-height: 35px;font-size: 18" align="right">思安有限责任公司</p>
					<p style="line-height: 35px;font-size: 18" align="right">${param.aae409 }</p>
					
				</div>
			</div>
	    <!--endprint1-->
	    <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
	    <div align="center">
	    	<div class="layui-inline">
				<input class="layui-btn layui-btn-normal" type="button" value="打印" onclick="preview(1)">
			</div>
			<div class="layui-inline">
				<input class="layui-btn layui-btn-normal" type="submit" value="返回" 
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
</body>
</html>