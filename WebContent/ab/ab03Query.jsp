<%@page import="com.remp.web.impl.ab.Ab03QueryServlet"%>
<%@ page language="java"  pageEncoding="GBK"%>
<%@ taglib uri="http://org.wangxg/jsp/extl" prefix="e" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%String path=request.getContextPath(); %>
<html>
<head>
<title>营销方案列表</title>
<style type="text/css">
	tr
	{
		height: 25px;
	}
</style>

<script type="text/javascript">

	var count=0;
	function onSelect(vstate)
	{
		vstate?count++:count--;
		var vdel=document.getElementById("del");
		vdel.disabled=(count==0);
	}
	
	function onEdit(vaab301)
	{
		var vform = document.getElementById("myform");
	  	 vform.action="<%=path%>/ab03FindById.html?aab301="+vaab301;
	  	 vform.submit();
	}
	
	function onDel(vaab301)
    {
	  	 var vform = document.getElementById("myform");
	  	 vform.action="<%=path%>/ab03DelById.html?aab301="+vaab301;
	  	 vform.submit();
    }
	
	function onAct(vaab301)
	{
		var vform = document.getElementById("myform");
		vform.action="<%=path%>/ab04FindById.html?aab301="+vaab301;
		vform.submit();
	}
	
	function onSum(vaab301)
	{
		var vform = document.getElementById("myform");
		vform.action="<%=path%>/ab03FindSum.html?aab301="+vaab301;
		vform.submit();
	}

</script>

</head>
<body>
	${msg }
	<form id="myform" action="<%=path%>/ab03Query.html" method="post">
	
	<!------------------ 查询条件区---------------------->
		<table border="1" align="center" width="95%">
		<caption>
			查询条件
			<hr>
		</caption>
			<tr>
				<td>方案名称</td>
				<td><e:text name="qaab302"/></td>
				<td>状态</td>
				<td><e:text name="qaab304"/></td>
			</tr>
			<tr>
				<td>日期</td>
				<td><e:date name="qaab305"/></td>
				<td>制定人</td>
				<td><e:text name="qaab306"/></td>
			</tr>
		</table>
		
		<!-----------------数据迭代区 -------------------->
		<table border="1" width="95%" align="center">
			<tr>
			  <td></td>
			  <td>序号</td>
			  <td>方案名称</td>
			  <td>制定日期</td>
			  <td>预算费用</td>
			  <td>制定人</td>
			  <td>状态</td>
			  <td></td>
			  <td></td>
			  <td></td>
			</tr>
	  
	  <c:choose>
	  	<c:when test="${rows!=null }">
	  		<!-- 显示查询到的数据 -->
	  		<c:forEach items="${rows }" var="ins" varStatus="vs">
	  			<tr>
	  				<td>
	  					<input type="checkbox" name="idlist" value="${ins.aab301 }"
	  						onclick="onSelect(this.checked)" >
	  				</td>
	  				<td>
	  					${vs.count }
	  				</td>
	  				<td>
	  					<a href="#" onclick="onEdit('${ins.aab301}')">${ins.aab302 }</a>
	  				</td>
				    <td>${ins.aab305 }</td>
				    <td>${ins.aab303 }</td>
				    <td>${ins.aab306 }</td>
				    <td>${ins.cnaab304 }</td>
				    <td>
				    	<a href="#" onclick="onAct('${ins.aab301}')">编辑营销活动</a>
				    </td>
				    <td>
				    	<a href="#" onclick="onSum('${ins.aab301 }')">方案总结</a>
				    </td>
				    <td>
				    	<a href="#" onclick="onDel('${ins.aab301}')">删除</a>
				    </td>
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
	           </tr>
	        </c:forEach>
	     </c:otherwise>
	  </c:choose>
	  </table>
	  
	  	<!-- 功能按钮区 -->
		<table border="1" width="95%" align="center">
		  <tr>
		    <td align="center">
		       <input type="submit" name="next" value="查询">
		       <input type="submit" name="next" value="添加" 
		              formaction="<%=path%>/ab/ab03Add.jsp">
		       <input type="submit" id="del" name="next" value="删除" 
		              formaction="<%=path%>/ab03BatchDelete.html"  disabled="disabled">
		    </td>
		  </tr>
		</table>
	  
	</form>
</body>
</html>