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
				<h2 align="center">��Ȩ�ſ�</h2>
				<br>
				<table class="layui-table" style="width:610px">
					<tr>
						<td>��Ȩ����</td>
						<td>��ͬ����</td>
						<td>�Ѱ�����</td>
						<td>δ������</td>
					</tr>
					<tr>
						<td>1</td>
						<td><a href="<%=path%>/ae04query.html">��<font color="red">${ins.state1+ins.state2}</font></a>��</td>
						<td><a href="<%=path%>/ae04query.html">�Ѱ���<font color="red">${ins.state2 }</font></a>��</td>
						<td><a href="<%=path%>/ae04query.html">ʣ��<font color="red">${ins.state1 }</font></a>��</td>
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
	        data:['�ѱ���']
	    },
	    xAxis: [
	        {
	            type: 'category',
	            /* data: ['1��','2��','3��','4��','5��','6��','7��','8��','9��','10��','11��','12��'], */
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
	            name: '����',
	            min: 0,
	            max: '${ins.state1+ins.state2}',
	            interval: 3,
	            axisLabel: {
	                formatter: '{value}��'
	            }
	        }
	    ],
	    series: [
	        {
	            name:'��¼��',
	            type:'bar',
	            data: data2
	        },

	    ]
	};
//ʹ�ø�ָ�����������������ʾͼ��
myChart.setOption(option);
</script>
<script>
	layui.use('element', function(){
	  var element = layui.element;
	  
	})
</script>
</body>
</html>