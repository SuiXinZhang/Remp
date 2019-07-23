<%@ page language="java" pageEncoding="GBK"%>
<%@include file="/base/taglib.jsp"%>
<html>
<head>
	<jsp:include page="/base/head.jsp" />
</head>
<body class="layui-layout-body">
	<div class="layui-layout layui-layout-admin">
		<jsp:include page="/base/header.jsp" />
		<c:import url="/ae/menu.jsp">
			<c:param name="menu" value="ae4"/>
		</c:import>
		<div class="layui-body">
			<div style="padding: 80px;">
				<div style="font-size:20" align="center">
				<h2 align="center">产权概况</h2>
				<br>
				<table class="layui-table" style="width:610px">
					<tr>
						<td>产权管理</td>
						<td>合同总数</td>
						<td>已办理数</td>
						<td>未办理数</td>
					</tr>
					<tr>
						<td>1</td>
						<td><a href="<%=path%>/ae04query.html">共<font color="red">${ins.state1+ins.state2}</font></a>条</td>
						<td><a href="<%=path%>/ae04query.html">已办理<font color="red">${ins.state2 }</font></a>条</td>
						<td><a href="<%=path%>/ae04query.html">剩余<font color="red">${ins.state1 }</font></a>条</td>
					</tr>
				</table>
				</div>
				<br><br>
				<div align="center">
					<div id="main" style="width: 600px;height:400px;"></div>
				</div>
			</div>
		</div>
		
	</div>
<script type="text/javascript">
var myChart = echarts.init(document.getElementById('main'));
var data2 = new Array;
<c:forEach items="${rows }" var="ins" varStatus="vs">
	data2[${vs.count}-1] = ${ins.num}
</c:forEach>
option = {
	color: ['#3398DB'],
    tooltip: {
	        trigger: 'axis',
	        axisPointer: {
	            type: 'cross',
	            crossStyle: {
	                color: '#999'
	            }
	        }
	    },
	    toolbox: {
	        feature: {
	            dataView: {show: true, readOnly: false},
	            magicType: {show: true, type: ['line', 'bar']},
	            restore: {show: true},
	            saveAsImage: {show: true}
	        }
	    },
	    legend: {
	        data:['已备案']
	    },
	    xAxis: [
	        {
	            type: 'category',
	            /* data: ['1月','2月','3月','4月','5月','6月','7月','8月','9月','10月','11月','12月'], */
	            data: [ <c:forEach items="${rows}" var="ins">
                   ["${ins.mon}"],
                </c:forEach>
                ],
	            axisPointer: {
	                type: 'shadow'
	            }
	        }
	    ],
	    yAxis: [
	        {
	            type: 'value',
	            name: '数量',
	            min: 0,
	            max: '${ins.state1+ins.state2}',
	            interval: 3,
	            axisLabel: {
	                formatter: '{value}条'
	            }
	        }
	    ],
	    series: [
	        {
	            name:'记录数',
	            type:'bar',
	            data: data2
	        },

	    ]
	};
//使用刚指定的配置项和数据显示图表。
myChart.setOption(option);
</script>
<script>
	layui.use('element', function(){
	  var element = layui.element;
	  
	})
</script>
</body>
</html>