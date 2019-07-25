<%@ page language="java" pageEncoding="GBK"%>
<%@include file="/base/taglib.jsp"%>
<html>
<head>
<jsp:include page="/base/head.jsp" />
</head>
<body class="layui-layout-body">
	<div class="layui-layout layui-layout-admin">
		<jsp:include page="/base/header.jsp" />
		<jsp:include page="/ab/menu.jsp" />
		<div class="layui-body">

			
			<div class="layui-anim layui-anim-scale"
				style="padding: 15px; margin: 30px 80px;">
				<fieldset class="layui-elem-field layui-filed-title"
					style="margin-top: 20px;">
					<legend>营销分析</legend>
				<form class="layui-form" action="<%=path%>/ab/ab05Query.jsp" method="post">
				
				<div align="center">
					<!-- 为ECharts准备一个具备大小（宽高）的Dom -->
					<div id="main" style="width: 600px; height: 400px;"></div>
					
					<table class="layui-table" border="1" width="95%" align="center">
						<tr>
							<td>序号</td>
							<td>时间</td>
							<td>销售签约额</td>
							<td>营销投入</td>
						</tr>

						<c:choose>
							<c:when test="${rows!=null }">
								<!-- 显示查询到的数据 -->
								<c:forEach items="${rows }" var="ins" varStatus="vs">
									<tr>
										<td>${vs.count }</td>
										<td>${ins.aab502 }</td>
										<td>${ins.aab506 }</td>
										<td>${ins.aab503 }</td>
									</tr>
								</c:forEach>
							</c:when>
						</c:choose>
						</table>
						
						<button class="layui-btn layuiadmin-btn-useradmin" type="submit">
							<i class="layui-icon layui-icon-prev"></i>返回
						</button>

					
					</div>
				</form>
				</fieldset>
			</div>

		</div>

		<div class="layui-footer">
			<!-- 底部固定区域 -->
		</div>
	</div>
	<script type="text/javascript">
    // 基于准备好的dom，初始化echarts实例
    var myChart = echarts.init(document.getElementById('main'));
	
    var aab503 = new Array;
    var aab506 = new Array;
    var index = 0;
    <c:choose>
    <c:when test="${rows!=null }">
	    <c:forEach items="${rows }" var="ins">
		    aab503[index] = ${ins.aab503}
	    	aab506[index] = ${ins.aab506}
	    	index = index + 1; 
	    </c:forEach>
    </c:when>
    <c:otherwise>
    </c:otherwise>
    </c:choose>
	

    option = {
    	    title: {
    	        text: '销售签约与营销投入分析'
    	    },
    	    tooltip: {
    	        trigger: 'axis'
    	    },
    	    legend: {
    	        data:['销售签约额','营销投入']
    	    },
    	    grid: {
    	        left: '3%',
    	        right: '4%',
    	        bottom: '3%',
    	        containLabel: true
    	    },
    	    toolbox: {
    	        feature: {
    	            saveAsImage: {}
    	        }
    	    },
    	    xAxis: {
    	        type: 'category',
    	        boundaryGap: false,
    	        axisLabel:{interval:0},
    	        data:[
                <c:forEach items="${rows}" var="g">
                    ["${g.aab502}"],
                </c:forEach>
            ]
    	    },
    	    yAxis: {
    	        type: 'value'
    	    },
    	    series: [
    	        {
    	            name:'销售签约额',
    	            type:'line',
    	            stack: '销售',
    	            data: aab506
    	        },
    	        {
    	            name:'营销投入',
    	            type:'line',
    	            stack: '投入',
    	            data: aab503
    	        },
    	    ]
    	};


    // 使用刚指定的配置项和数据显示图表。
    myChart.setOption(option);
</script>
	<script>
//JavaScript代码区域
	layui.use(['layer', 'form'], function(){
		  var layer = layui.layer
		  ,form = layui.form;
		  
		});
</script>
</body>
</html>
