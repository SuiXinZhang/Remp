<%@ page language="java"  pageEncoding="GBK"%>
<%@ taglib uri="http://org.wangxg/jsp/extl" prefix="e" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%String path=request.getContextPath(); %>
<html>
<head>
<title>欠款用户列表</title>
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
	
	function onEdit(vaaf701)
	{
		var vform = document.getElementById("myform");
	  	 vform.action="<%=path%>/af/af07FindById.html?aaf701="+vaaf701;
	  	 vform.submit();
	}
	
	function onDel(vaaf701)
    {
  	 var vform = document.getElementById("myform");
  	 vform.action="<%=path%>/af/af07DelById.html?aaf701="+vaaf701;
  	 vform.submit();
    }

</script>

</head>
<body>
	${msg }
	<form id="myform" action="<%=path%>/af/af07Query.html" method="post">
	
	<!------------------ 查询条件区---------------------->
		<table border="1" align="center" width="95%">
		<caption>
			查询条件
			<hr>
		</caption>
			<tr>
				<td>客户名称</td>
				<td>
					<e:text name="qaaf703"/>
				</td>
				<td>房间编号</td>
				<td>
					<e:text name="qaaf702"/>
				</td>
			</tr>
			<tr>
				<td>起始日期</td>
				<td>
					<e:date name="bdate"/>
				</td>
				<td>截止日期</td>
				<td>
					<e:date name="edate"/>
				</td>
			</tr>
		</table>
		
		<!-----------------数据迭代区 -------------------->
		<table border="1" width="95%" align="center">
			<tr>
			  <td></td>
			  <td>序号</td>
			  <td>房间编号</td>
			  <td>客户名称</td>
			  <td>客户邮箱</td>
			  <td>签署日期</td>
			  <td>签署金额</td>
			  <td>还款金额</td>
			  <td></td>
			</tr>
	  
	  <c:choose>
	  	<c:when test="${rows!=null }">
	  		<!-- 显示查询到的数据 -->
	  		<c:forEach items="${rows }" var="ins" varStatus="vs">
	  			<tr>
	  				<td>
	  					<input type="checkbox" name="emailList" value="${ins.aaf704 }"
	  						onclick="onSelect(this.checked)" >
	  				</td>
	  				<td>
	  					${vs.count }
	  				</td>
	  				<td>${ins.aaf702 }</td>
	  				<td>${ins.aaf703 }</td>
	  				<td>${ins.aaf704 }</td>
	  				<td>${ins.aaf705 }</td>
				    <td>${ins.aaf706 }</td>
				    <td>${ins.aaf709 }</td>
				    <td>
				    	<a href="#" onclick="onEdit('${ins.aaf701}')">已缴费</a>
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
		              formaction="<%=path%>/af/af07Add.jsp">

		       <input type="submit" id="del" name="next" value="邮件催款" 
		              formaction="<%=path%>/af/af07Mail.html" disabled="disabled">
		    </td>
		  </tr>
		</table>
	</form>
</body>
</html>