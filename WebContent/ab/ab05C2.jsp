<%@ page language="java"  pageEncoding="GBK"%>
<%@ taglib uri="http://org.wangxg/jsp/extl" prefix="e" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<% String path=request.getContextPath(); %>
<html>
<head>
    <title>ECharts</title>
    <meta charset="utf-8">
    <!-- ���� ECharts �ļ� -->
    <script src="${pageContext.request.contextPath}/resource/echarts.js"></script>
</head>

<body>
<!-- ΪECharts׼��һ���߱���С����ߣ���Dom -->
<div id="main" style="width: 600px;height:400px;"></div>
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
    	        text: 'Ӫ������'
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

	<form action="<%=path %>/ab/ab05Query.jsp" method="post">
	
	<table border="1" width="95%" align="center">
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
	  				<td>
	  					${vs.count }
	  				</td>
	  				<td>
	  					${ins.aab502 }
	  				</td>
	  				<td>${ins.aab506 }</td>
				    <td>${ins.aab503 }</td>
	  			</tr>
	  		</c:forEach>
	  	</c:when>
	  </c:choose>
	  
	  <tr>
		<td colspan="5" align="center">
			<input type="submit" name="next" value="����">
		</td>
	  </tr>
	  
	  </table>
	</form>
	
</body>
</html>