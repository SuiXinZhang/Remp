<%@ page language="java" pageEncoding="GBK"%>
<%@ taglib uri="http://org.wangxg/jsp/extl" prefix="e"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%String path=request.getContextPath(); %>
<html>
<head>
<title>Insert title here</title>
	<style type="text/css">
	  td{
	      height:30px;
	  }
	  msg{
	     color:#FF0000
	  }
	</style>
	<script type="text/javascript">
    function onSelect(vaad801)
    {
  	 var vform = document.getElementById("myform");
  	 vform.action="<%=path%>/ad/ad08findById.html?aad801="+vaad801;
  	 vform.submit();
    }
    </script>
</head>
<body>
${msg }
<form id="myform" action="<%=path %>/ad/ad08querysalesLog.html" method="post">
	<table border="1" width="95%" align="center">
	  <caption>
	      	 销售日志查询
	    <hr width="160">
	  </caption>
	  <tr>
	    <td colspan="4">查询条件</td>
	  </tr>
	  <tr>
	    <td>申请类型</td>
	    <td>
	      <e:date name="qaad815"/>
	    </td>
	  </tr>
	</table>
	<table border="1" width="95%" align="center">
	  <tr>
	    <td></td>
	    <td>序号</td>
	    <td>来电总数</td>
	    <td>来访总数</td>
	    <td>预约排号数</td>
	    <td>小订套数</td>
	    <td>认购套数</td>
	    <td>签约套数</td>
	    <td>广告分析</td>
	    <td>业务表现</td>
	    <td>填写人</td>
	  </tr>
	  <c:choose>
	     <c:when test="${rows!=null }">
	         <!-- 显示实际查询到的数据 -->
		     <c:forEach items="${rows }" var="ins" varStatus="vs">
	    	   	  <tr>
				    <td></td>
				    <td>${vs.count }</td>
				    <td>${ins.aad802}</td>
				    <td>${ins.aad803 }</td>
				    <td>${ins.aad804 }</td>
				    <td>${ins.aad806 }</td>
				    <td>${ins.aad807 }</td>
				    <td>${ins.aad808 }</td>
				    <td>${ins.aad812 }</td>
				    <td>${ins.aad813 }</td>
				    <td><a href="#" onclick="onSelect('${ins.aad801}')">修改</a></td>
				  </tr>
		      </c:forEach>
		      <!-- 补充空行 -->
		      <c:forEach begin="${fn:length(rows)+1 }" step="1" end="15">
			          <tr>
			            <td></td>
			            <td></td>
			            <td></td>
			            <td></td>
			            <td></td>
			            <td></td>
			            <td></td>
			            <td></td>
			            <td></td>
			            <td></td>
			            <td></td>
			          </tr>
		      </c:forEach>
	     </c:when>
	     <c:otherwise>
	        <c:forEach begin="1" step="1" end="15">
	           <tr>
	             <td></td>
	             <td></td>
	             <td></td>
	             <td></td>
	             <td></td>
	             <td></td>
	             <td></td>
	             <td></td>
	             <td></td>
	             <td></td>
	             <td></td>
	           </tr>
	        </c:forEach>
	     </c:otherwise>
	   </c:choose>
	</table>
	<table border="1" width="95%" align="center">
	  <tr>
	    <td align="center">
	       <input type="submit" name="next" value="查询">
	    </td>
	  </tr>
	</table>
</form>
</body>
</html>