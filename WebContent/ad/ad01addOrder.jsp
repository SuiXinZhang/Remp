<%@ page language="java" pageEncoding="GBK"%>
<%@ taglib uri="http://org.wangxg/jsp/extl" prefix="e"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%String path=request.getContextPath(); %>
<html>
<head>
<title>预约房间</title>
<style type="text/css">
  td{
      height:30px;
  }
  msg{
     color:#FF0000
  }
</style>
</head>
<body>
${msg }
<form action="<%=path %>/ad/ad01addOrder.html" method="post">
<table  border="1" align="center" width="45%">
	<caption>
      	预约 ${empty param.aad101?'添加':'退号' }
      <hr width="160">
    </caption>
	<tr>
		<td>项目名称</td>
		<td><e:text required="true" name="oaad102" defval="${ins.aad102 }"/></td>
		<td>实际排号</td>
		<td><e:text name="oaad104" defval="${ins.aad104 }"/></td>
	</tr>
	<tr>
		<td>客户名称</td>
		<td><e:text required="true" name="oaad103" defval="${ins.aac403 }"/></td>
	</tr>
    <tr>
    	<td>预约日期</td>
    	<td><e:date required="true" name="oaad105" defval="${ins.aad105 }"/></td>
    	<td>失效日期</td>
    	<td><e:date required="true" name="oaad106" defval="${ins.aad106 }"/></td>
	</tr>
	<tr>
		<td>项目排号</td>
		<td><e:text name="oaad107" defval="${ins.aad107 }"/></td>
		<td>房间排号</td>
		<td><e:text name="oaad108" defval="${ins.aad108 }"/></td>
	</tr>
	<tr>
		<td>房间</td>
		<td><e:text required="true" name="oaad110" defval="${ins.aad110 }"/></td>
	</tr>
	<tr>
		<td>应收预约金</td>
		<td><e:number required="true" step="0.01" name="oaad111" defval="${ins.aad111 }"/></td>
		<td>币种</td>
		<td><e:select required="true" name="oaad112" value="人民币:01,美元:02,英镑:03,日元:04,欧元:05"
		     defval="${ins.aad112 }"/></td>
	</tr>
	<tr>
		<td>实收预约金</td>
		<td><e:number required="true" step="0.01" name="oaad113" defval="${ins.aad113 }"/></td>
		<td>权益人</td>
		<td><e:text required="true" name="oaad109" defval="${ins.aad109 }"/></td>
	</tr>
	<tr>
		<td>业务员</td>
		<td><e:text required="true" name="oaad114" defval="${ins.aad114 }"/></td>
		<td>备注</td>
		<td><e:text name="oaad115"/></td>
	</tr>
	<c:if test="${!empty param.aad101 }">
	   <tr>
	     <td>退号日期</td>
	     <td><e:date required="true" name="aad202"  defval="${ins.aad202 }"/></td>
	     <td>退号原因</td>
	     <td><e:text required="true" name="aad203"  defval="${ins.aad203 }"/></td>
	   </tr>
   </c:if>
	<tr>
		<td colspan="4" align="center">
		<input type="submit" name="text" value="添加">
		<input type="submit" name="next" value="修改" 
              formaction="<%=path%>/ad/ad01modifyOrder.html">
		<input type="submit" name="next" value="${empty param.aad101?'查看':'返回' }" 
              formaction="<%=path%>/ad/ad01queryOrder.html"
              formnovalidate="formnovalidate">
        <input type="submit" name="text" value="退号" 
              formaction="<%=path%>/ad/ad02addWithdrawOrder.html">
		</td>
	</tr>
</table>
<input type="hidden" name="aad101" value="${param.aad101 }">
<input type="hidden" name="oaac401" value="${ins.aac401 }">
</form>
</body>
</html>