<%@ page language="java" pageEncoding="GBK"%>
<%@ taglib uri="http://org.wangxg/jsp/extl"  prefix="e"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%String path=request.getContextPath();%>
<html>
<head>
<title>Insert title here</title>
<style type="text/css">
  td{
      height:30px;
  }
</style>
</head>
<body>
${msg}
<br>
<br>
<form action="<%=path%>/af/af06Add.html" method="post">
<table  border="1" align="center" width="45%">
    <caption>
       银行贷款表${empty param.aaf601?'添加':'修改' }
      <hr width="160">
    </caption>
   <tr>
     <td colspan="4" align="center">银行放款单</td>
   </tr>
   <tr>
     <td>贷款银行*</td>
     <td>
       <e:text name="aaf602" required="true" autofocus="true" defval="${ins.aaf602 }"/> 
     </td>
     <td>登记人*</td>
     <td>
       <e:text name="aaf603" required="true" defval="${ins.aaf603 }"/> 
     </td>
   </tr>
   <tr>
    <td>放款单号</td>
   	 <td>
       <e:text name="aaf604" defval="${ins.aaf604 }"/> 
     </td>
     <td>放款日期*</td>
     <td>
       <e:date name="aaf605" required="true" defval="${ins.aaf605 }"/>
     </td>
   </tr>
   <tr>
	<td>审核人</td>
	<td>
	  <e:text name="aaf606" defval="${ins.aaf606 }"/> 
	</td>
	<td>审核日期</td>
	<td>
	  <e:date name="aaf607" defval="${ins.aaf607 }"/> 
	</td>
   </tr>
   <tr>
	<td>结算方式</td>
	<td>
	  <e:text name="aaf608" defval="${ins.aaf608 }"/> 
	</td>
	<td>结算单号</td>
	<td>
	  <e:text name="aaf609" defval="${ins.aaf609 }"/> 
	</td>
   </tr>
   <tr>
	<td>入账银行</td>
	<td>
	  <e:text name="aaf610" defval="${ins.aaf610 }"/> 
	</td>
	<td>入账日期</td>
	<td>
	  <e:text name="aaf611" defval="${ins.aaf611 }"/> 
	</td>
   </tr>
   <tr>
   	<td>项目名称</td>
   	<td>
   	  <e:text name="aaf612" defval="${ins.aaf612 }"/> 
   	</td>
   </tr>
   <tr>
   		<td colspan="4" align="center">
   			<input type="submit" name="next" value="${empty param.aaf601?'添加':'修改'}"
 				formaction="<%=path %>/af/${empty param.aaf601?'af06Add':'af06Modify' }.html">
   		</td>
   </tr>
</table>
<input type="hidden" name="aaf601" value="${param.aaf601 }">
</form>
</body>
</html>