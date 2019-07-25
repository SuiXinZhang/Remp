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
					<legend>Ӫ������</legend>
				<form class="layui-form" action="<%=path%>/ab/ab05Query.jsp" method="post">
				
				<div align="center">
					<!-- ΪECharts׼��һ���߱���С����ߣ���Dom -->
					<div id="main" style="width: 600px; height: 400px;"></div>
					
					<table class="layui-table" border="1" width="95%" align="center">
						<tr>
							<td>���</td>
							<td>ʱ��</td>
							<td>����ǩԼ��</td>
							<td>Ӫ��Ͷ��</td>
						</tr>

						<c:choose>
							<c:when test="${rows!=null }">
								<!-- ��ʾ��ѯ�������� -->
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
							<i class="layui-icon layui-icon-prev"></i>����
						</button>

					
					</div>
				</form>
				</fieldset>
			</div>

		</div>

		<div class="layui-footer">
			<!-- �ײ��̶����� -->
		</div>
	</div>
	<script type="text/javascript">
    // ����׼���õ�dom����ʼ��echartsʵ��
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
    	        text: '����ǩԼ��Ӫ��Ͷ�����'
    	    },
    	    tooltip: {
    	        trigger: 'axis'
    	    },
    	    legend: {
    	        data:['����ǩԼ��','Ӫ��Ͷ��']
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
    	            name:'����ǩԼ��',
    	            type:'line',
    	            stack: '����',
    	            data: aab506
    	        },
    	        {
    	            name:'Ӫ��Ͷ��',
    	            type:'line',
    	            stack: 'Ͷ��',
    	            data: aab503
    	        },
    	    ]
    	};


    // ʹ�ø�ָ�����������������ʾͼ��
    myChart.setOption(option);
</script>
	<script>
//JavaScript��������
	layui.use(['layer', 'form'], function(){
		  var layer = layui.layer
		  ,form = layui.form;
		  
		});
</script>
</body>
</html>
