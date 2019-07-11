<%@ page language="java" pageEncoding="GBK"%>
<%@ taglib uri="http://org.wangxg/jsp/extl" prefix="e"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%String path=request.getContextPath(); %>

<html>
<head>
<title>查询房间</title>
	<style type="text/css">
	tr 
	{
		height: 25px;
	}
    </style>
    <script type="text/javascript">
      var count=0;
      
      function onEdit(vaab101)
      {
    	 var vform = document.getElementById("myform");
    	 vform.action="<%=path%>/findByIdEmp.html?aab101="+vaab101;
    	 //alert(vform.action);
    	 vform.submit();
      }
      
      function onConfirm(vaaa801)
      {
    	 var vform = document.getElementById("myform");
    	 vform.action='<%=path%>/ad/ad03confirm.html?aaa801='+vaaa801;
    	 //alert(vform.action);
    	 vform.submit();
      } 
      
   </script>
</head>
<body>
${msg }
	<form id="myform" action="<%=path %>/ad/adqueryRoom.html" method="post">
	<table border="1" width="95%" align="center">
	  <caption>
	      	 房源查询
	    <hr width="160">
	  </caption>
	  <tr>
	    <td colspan="4">查询条件</td>
	  </tr>
	  <tr>
	    <td>建筑总价[B]</td>
	    <td>
	      <e:text name="baaa809"/>
	    </td>
	    <td>建筑总价[E]</td>
	    <td>
	      <e:text name="eaaa809"/>
	    </td>
	  </tr>
	  <tr>
	    <td>建筑面积[B]</td>
	    <td>
	      <e:text name="baaa505"/>
	    </td>
	    <td>建筑面积[E]</td>
	    <td>
	      <e:text name="eaaa505"/>
	    </td>
	  </tr>
	  <tr>
	    <td>户型</td>
	    <td>
	      <e:select name="qaaa502" value="A:01,B:02,C:03" header="true"/>
	    </td>
	    <td>房间结构</td>
	    <td>
	      <e:select name="qaaa504" value="两房两厅一卫:01,两房两厅两卫:02" header="true" />
	    </td>
	  </tr>
	  <tr>
	    <td>状态</td>
	    <td>
	      <e:select name="qaaa805" value="等待:01,已售:02,已租:03,已选:04" header="true"/>
	    </td>
	  </tr>
	</table>
	<!-- 数据迭代区 -->
	<table border="1" width="95%" align="center">
	  <tr>
	    <td></td>
	    <td>序号</td>
	    <td>房间号</td>
	    <td>地址</td>
	    <td>状态</td>
	    <td>户型</td>
	    <td>房间结构</td>
	    <td>面积</td>
	    <td>建筑单价</td>
	    <td>建筑总价</td>
	    <td></td>
	  </tr>
	  <c:choose>
	     <c:when test="${rows!=null }">
	         <!-- 显示实际查询到的数据 -->
		     <c:forEach items="${rows }" var="ins" varStatus="vs">
	    	   	  <tr>
				    <td></td>
				    <td>${vs.count }</td>
				    <td>${ins.aaa803}</td>
				    <td>${ins.aaa804 }</td>
				    <td>${ins.caaa805 }</td>
				    <td>${ins.caaa502 }</td>
				    <td>${ins.caaa504 }</td>
				    <td>${ins.aaa505 }</td>
				    <td>${ins.aaa808 }</td>
				    <td>${ins.aaa809 }</td>
				    <td>
				    <a href="#" onclick="onConfirm('${ins.aaa801}')">确认选房</a>
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