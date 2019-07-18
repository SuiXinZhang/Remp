<%@ page language="java" pageEncoding="GBK"%>
<%@ taglib uri="http://org.wangxg/jsp/extl" prefix="e"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%String path=request.getContextPath(); %>
<html>
<head>
<title>查询票据</title>
<style type="text/css">
  td{
      height:30px;
  }
  msg{
     color:#FF0000
  }
</style>
<script type="text/javascript">
function onEdit(vaaf301)
{
	 var vform = document.getElementById("myform");
	 vform.action="<%=path%>/af/af03findById.html?aaf301="+vaaf301;
	 vform.submit();
}
</script>
</head>
<body>
${msg }
<form id="myform" action="<%=path %>/af/af03query.html" method="post">
	<table border="1" width="95%" align="center">
	  <caption>
	      	 财务单据查询
	    <hr width="160">
	  </caption>
	  <tr>
	    <td colspan="4">查询条件</td>
	  </tr>
	  <tr>
	    <td>交款人</td>
	    <td>
	      <e:text name="qaaf305"/>
	    </td>
	    <td>房间</td>
	    <td>
	      <e:text name="qaaf302"/>
	    </td>
	  </tr>
	</table>
	<table border="1" width="95%" align="center">
	  <tr>
	    <td></td>
	  	<td>序号</td>
	  	<td>业务办理日期</td>
	  	<td>交款人</td>
	  	<td>房间</td>
	  	<td>折人民币金额</td>
	  	<td>币种</td>
	  	<td>票据类型</td>
	  	<td>票据编号</td>
	  	<td></td>
	  </tr>
	  <c:choose>
	     <c:when test="${rows!=null }">
	         <!-- 显示实际查询到的数据 -->
		     <c:forEach items="${rows }" var="ins" varStatus="vs">
	    	   	  <tr>
				    <td></td>
				    <td>${vs.count }</td>
				    <td>${ins.aaf311 }</td>
				    <td><a href="#" onclick="onEdit('${ins.aaf301}')">${ins.aaf305 }</a></td>
				    <td>${ins.aaf302 }</td>
				    <td>${ins.aaf406 }</td>
				    <td>${ins.aaf405 }</td>
				    <td>${ins.aaf308 }</td>
				    <td>${ins.aaf304 }</td>
				    <td></td>
				  </tr>
		      </c:forEach>
		      <!-- 补充空行 -->
		      <c:forEach begin="${fn:length(rows)+1 }" step="1" end="3">
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
			          </tr>
		      </c:forEach>
	     </c:when>
	     <c:otherwise>
	        <c:forEach begin="1" step="1" end="3">
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
	           </tr>
	        </c:forEach>
	     </c:otherwise>
	   </c:choose>
	  </table>
	  
	  <table border="1" width="95%" align="center">
	  <tr>
	    <td></td>
	  	<td>序号</td>
	  	<td>款项类型</td>
	  	<td>款项名称</td>
	  	<td>金额</td>
	  	<td>币种</td>
	  	<td>折人民币金额</td>
	  	<td>票据类型</td>
	  	<td>票据编号</td>
	  	<td></td>
	  </tr>
	  <c:choose>
	     <c:when test="${rows!=null }">
	         <!-- 显示实际查询到的数据 -->
		     <c:forEach items="${rows }" var="ins" varStatus="vs">
	    	   	  <tr>
				    <td></td>
				    <td>${vs.count }</td>
				    <td>${ins.aaf403 }</td>
				    <td>${ins.aaf409 }</td>
				    <td>${ins.aaf404 }</td>
				    <td>${ins.aaf405 }</td>
				    <td>${ins.aaf406 }</td>
				    <td>${ins.aaf308 }</td>
				    <td>${ins.aaf402 }</td>
				    <td></td>
				  </tr>
		      </c:forEach>
		      <!-- 补充空行 -->
		      <c:forEach begin="${fn:length(rows)+1 }" step="1" end="3">
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
			          </tr>
		      </c:forEach>
	     </c:when>
	     <c:otherwise>
	        <c:forEach begin="1" step="1" end="3">
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