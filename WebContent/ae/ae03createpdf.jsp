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
 	<legend style="color:black"><h2>入住通知书</h2></legend>
 	 <form action="" class="layui-form"  method="post">
  		<div class="layui-field-box">
	    	 <!--startprint1-->
	        <div align="center">
	        <br><br><br><br><br><br>
	        	<h1>入住通知书</h1>
	        	<br><br>
				<div style="height: 500px;width: 600px" align="left">
					<p style="line-height: 35px;font-size: 18">尊敬的  <span style="text-decoration:underline">&ensp;&ensp;${param.aae302 }&ensp;&ensp;</span>先生/女士:</p>
					<p style="line-height: 35px;font-size: 18">&ensp;&ensp;&ensp;&ensp;您好!</p>
      

     				<p style="line-height: 35px;font-size: 18">&ensp;&ensp;&ensp;&ensp;思安房地产开发有 限公司全体同仁向您致以诚挚的问候!
     					我们衷心感谢您长期以来对我们的关照与支持!</p>

                    <p style="line-height: 35px;font-size: 18">&ensp;&ensp;&ensp;&ensp;我们荣幸的通知您:您所购买的<span style="text-decoration:underline">&ensp;&ensp;${param.aae312 }&ensp;&ensp;</span>
                    		号房屋已经通过竣工备案验收,达到入住标准。我们将于<span style="text-decoration:underline">&ensp;&ensp;${param.aae307 }&ensp;&ensp;</span>
                    		为各位业主办理入住手续。同时，为使您及各位业主在办理入住手续过程中能够享受到周到的服务，我公司将安排专人全程陪同您及各位业主办理收楼验房手续，提供有关服务。如您当日没有时间前
                    		来办理，我们将根据您的需要在<span style="text-decoration:underline">&ensp;&ensp;${param.aae307 }&ensp;&ensp;</span>至
                    		<span style="text-decoration:underline">&ensp;&ensp;${param.aae308 }&ensp;&ensp;</span>期间为您另行安排时间。请您在接到此通知后即刻与我公司销售部联系，就办理入住手续的具体时间提出书面意见。</p>

      				<p style="line-height: 35px;font-size: 18">&ensp;&ensp;&ensp;&ensp;特别提醒:后附《入住须知》为本《入住通知书》不可分割的组成部分，请您仔细阅读。</p>

     				<p style="line-height: 35px;font-size: 18">&ensp;&ensp;&ensp;&ensp; 最后，衷心希望您在  收获您的成功，开启您全新的美好生活。诚挚祝福安居乐业!</p>

				</div>
			</div>
	    <!--endprint1-->
	    <br><br><br><br><br><br>
		    <div class="layui-form-item" align="center">
				<div class="layui-inline">
						<input class="layui-btn layui-btn-normal" type="button" value="打印" onclick="preview(1)">
				</div>
				<div class="layui-inline">
						<input class="layui-btn layui-btn-normal" type="submit" value="返回" 
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