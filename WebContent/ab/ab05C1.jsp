<%@ page language="java" pageEncoding="GBK"%>
<%@include file="/base/taglib.jsp" %>
<html>
<head>
	<jsp:include   page="/base/head.jsp"/>
	<script src="${pageContext.request.contextPath}/resource/echarts.js"></script>
</head>
<body class="layui-layout-body">
<div class="layui-layout layui-layout-admin">
  	<jsp:include   page="/base/header.jsp"/>
	<jsp:include   page="/ab/menu.jsp"/>
  <div class="layui-body">
    <div style="padding: 15px;">
    	<form class="layui-form" action="<%=path %>/ab/ab05Query.jsp" method="post">
    	<div align="center">
    	
		<div id="main" style="width: 600px;height:400px;"></div>
	
		<table class="layui-table">
				<tr>
					<td>���</td>
					<td>ʱ��</td>
					<td>��������</td>
					<td>��������</td>
					<td>Ӫ��Ͷ��(��Ԫ)</td>
				</tr>
		  
		  <c:choose>
			<c:when test="${rows!=null }">
				<!-- ��ʾ��ѯ�������� -->
				<c:forEach items="${rows }" var="ins" varStatus="vs">
					<tr>
						<td>
							${vs.count }
						</td>
						<td>
							${ins.aab502 }
						</td>
						<td>${ins.aab504 }</td>
						<td>${ins.aab505 }</td>
						<td>${ins.aab503 }</td>
					</tr>
				</c:forEach>
			</c:when>
		  </c:choose>
		  </table>	
		  <div class="layui-form-item">
				<input type="submit" name="next" value="����" class="layui-btn">
			</div>
		</div>
	</form>
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
    var aab504 = new Array;
    var aab505 = new Array;
    var index = 0;
    <c:choose>
	    <c:when test="${rows!=null }">
		    <c:forEach items="${rows }" var="ins">
			    aab503[index] = ${ins.aab503}
		    	aab504[index] = ${ins.aab504}
		    	aab505[index] = ${ins.aab505}
		    	index = index + 1; 
		    </c:forEach>
	    </c:when>
	    <c:otherwise>
	    </c:otherwise>
    </c:choose>
	

    option = {
    	    title: {
    	        text: '����������Ӫ��Ͷ��'
    	    },
    	    tooltip: {
    	        trigger: 'axis'
    	    },
    	    legend: {
    	        data:['��������','��������','Ӫ��Ͷ��']
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
    	        data: [
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
    	            name:'��������',
    	            type:'line',
    	            stack: '������',
    	            data: aab504
    	        },
    	        {
    	            name:'��������',
    	            type:'line',
    	            stack: '������',
    	            data: aab505
    	        },
    	        {
    	            name:'Ӫ��Ͷ��',
    	            type:'line',
    	            stack: 'Ӫ��Ͷ��',
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
